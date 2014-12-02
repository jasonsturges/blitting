//
//  com.blitting.core.Blitting
//
//  Created by Jason Sturges.
//
package com.blitting.core {
import com.blitting.controller.IController;
import com.blitting.lifecycle.IDisposable;
import com.blitting.lifecycle.IProcess;
import com.blitting.lifecycle.IRenderable;
import com.blitting.lifecycle.IResizable;
import com.blitting.lifecycle.IValidatable;
import com.blitting.model.IAbstractSingleton;

import flash.display.Shape;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.Dictionary;
import flash.utils.getTimer;

public class Blitting extends EventDispatcher implements IProcess, IDisposable, IController, IAbstractSingleton {

    //------------------------------
    //  singleton instance
    //------------------------------

    /**
     * Singleton instance.
     */
    private static var instance:Blitting = new Blitting();

    /**
     * Return singleton instance.
     */
    public static function getInstance():Blitting {
        return instance;
    }

    /**
     * Return singleton graphics renderer
     */
    public static function getRenderer():Shape {
        return instance.shapeRenderer;
    }


    //------------------------------
    //  model
    //------------------------------

    /**
     * Enter frame callback animation pipeline
     */
    protected var callbacks:Dictionary;

    /**
     * Layout pipeline
     */
    [DictionaryKeyElementType("com.blitting.lifecycle.IResizable")]
    protected var layoutPipeline:Dictionary;

    /**
     * Render pipeline
     */
    [DictionaryKeyElementType("com.blitting.lifecycle.IRenderable")]
    [DictionaryValueElementType("com.blitting.core.RenderType")]
    protected var renderPipeline:Dictionary;

    /**
     * Validation pipeline
     */
    [DictionaryKeyElementType("com.blitting.lifecycle.IInvalidatable")]
    [DictionaryValueElementType("com.blitting.core.InvalidationType")]
    protected var validationPipeline:Dictionary;

    /**
     * Graphics shape renderer
     */
    private var _shapeRenderer:Shape;

    /**
     * Return graphics shape renderer with clear graphics,
     * reset fill and line style settings, and empty filters.
     */
    public function get shapeRenderer():Shape {
        _shapeRenderer.graphics.clear();
        _shapeRenderer.filters = [];

        return (_shapeRenderer);
    }

    /**
     * Current (total) frame number.
     */
    protected var _frameNumber:uint;

    /**
     * Current (total) frame number.
     */
    public function get frameNumber():uint {
        return _frameNumber;
    }

    /**
     * Total runtime of viewport.
     */
    protected var _runtime:int;

    /**
     * Total runtime of viewport.
     */
    public function get runtime():int {
        return getTimer() - _runtime;
    }

    /**
     * Time since last frame render
     */
    protected var _deltaTime:uint = 0;

    public function get deltaTime():int {
        return getTimer() - _deltaTime;
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * Constructor as singleton enforcer.
     */
    public function Blitting() {
        if (instance)
            throw new Error("Blitting is a singleton and can only be accessed through Blitting.getInstance()");

        // instantiate pipelines
        callbacks = new Dictionary();
        layoutPipeline = new Dictionary();
        renderPipeline = new Dictionary();
        validationPipeline = new Dictionary();

        // instantiate renderer
        _shapeRenderer = new Shape();

        // start engine by default
        start();
    }

    /**
     * Start all validation and rendering lifecycle processes. (IProcess)
     */
    public function start():void {
        // start times
        _runtime = _deltaTime = getTimer();

        // add frame constructed and exit frame listeners to graphics renderer
        _shapeRenderer.addEventListener(Event.FRAME_CONSTRUCTED, frameConstructedHandler);
        _shapeRenderer.addEventListener(Event.EXIT_FRAME, exitFrameHandler);
    }

    /**
     * Add enter frame callback with rest parameters to pipeline
     */
    public function addCallback(func:Function, ...params:Array):void {
        callbacks[func] = params;
    }

    /**
     * Add invalidation to validation pipeline.
     */
    public function addInvalidation(validatable:IValidatable, validationType:String = InvalidationType.SELF):void {
        validationPipeline[validatable] = validationType;
    }

    /**
     * Add resizable instance to the layout pipeline.
     */
    public function addLayout(resizable:IResizable):void {
        layoutPipeline[resizable] = true;
    }

    /**
     * Add a renderer to the rendering pipeline.
     */
    public function addRenderer(renderer:IRenderable, renderType:String = RenderType.CONTINUOUS):void {
        switch (renderType) {
            case RenderType.CONTINUOUS:
                renderPipeline[renderer] = RenderType.CONTINUOUS;
                break;
            case RenderType.ONCE:
                if ((renderer in renderPipeline) && (renderPipeline[renderer] == RenderType.CONTINUOUS))
                    return;
                renderPipeline[renderer] = RenderType.ONCE;
                break;
        }
    }

    /**
     * Change render type of an instance within the rendering pipeline.
     */
    public function changeRenderer(renderer:IRenderable, renderType:String):void {
        renderPipeline[renderer] = renderType;
    }

    /**
     * Lifecycle per frame:
     *
     *   - validate invalidated objects
     *   - prerender
     *   - render
     *   - callbacks
     */
    protected function frameConstructedHandler(event:Event):void {
        ++_frameNumber;

        // validation
        for (var validatable:Object in validationPipeline) {
            IValidatable(validatable).validate();

            validationPipeline[validatable] = null;
            delete validationPipeline[validatable];
        }

        // layout
        for (var resizable:Object in layoutPipeline) {
            IResizable(resizable).layout();

            layoutPipeline[resizable] = null;
            delete layoutPipeline[resizable];
        }

        // pre-render
        for (var prerenderer:Object in renderPipeline) {
            IRenderable(prerenderer).prerender();
        }

        // render
        for (var renderer:Object in renderPipeline) {
            IRenderable(renderer).render();
        }

        // callbacks
        for (var callback:Object in callbacks) {
            (callback as Function).apply(null, callbacks[callback]);
        }
    }

    /**
     * After commit and render stages, postrender
     * and remove single render instances.
     */
    protected function exitFrameHandler(event:Event):void {
        // post-render
        for (var renderer:Object in renderPipeline) {
            IRenderable(renderer).postrender();

            if (renderPipeline[renderer] == RenderType.ONCE)
                delete renderPipeline[renderer];
        }

        _deltaTime = getTimer();
    }

    /**
     * Remove enter frame callback to pipeline
     */
    public function removeCallback(func:Function):void {
        callbacks[func] = null;
        delete callbacks[func];
    }

    /**
     * Remove a renderer from the rendering pipeline.
     */
    public function removeRenderer(renderer:IRenderable):void {
        delete renderPipeline[renderer];
    }

    /**
     * Halt all validation and rendering lifecycle processes. (IProcess)
     */
    public function stop():void {
        _shapeRenderer.removeEventListener(Event.FRAME_CONSTRUCTED, frameConstructedHandler);
        _shapeRenderer.removeEventListener(Event.EXIT_FRAME, exitFrameHandler);
    }

    /**
     * dispose (IDisposable)
     */
    public function dispose():void {
        stop();

        layoutPipeline = null;
        renderPipeline = null;
        validationPipeline = null;

        _shapeRenderer = null;

        // singleton
        Blitting.instance = null;
    }

}
}
