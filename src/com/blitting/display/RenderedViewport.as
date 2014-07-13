//
//  com.blitting.display.RenderedViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display {
import com.blitting.core.Blitting;
import com.blitting.core.InvalidationType;
import com.blitting.core.RenderType;
import com.blitting.core.blitting_internal;
import com.blitting.lifecycle.IRenderable;

import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.getTimer;

use namespace blitting_internal;

/**
 * Extends Viewport to include BlittingEngine
 * and IRenderable lifecycle.
 *
 * <ul>
 *    <li>pre-render</li>
 *    <li>render</li>
 *    <li>post-render</li>
 * </ul>
 */
public class RenderedViewport extends Viewport implements IRenderable {

    //------------------------------
    //  model
    //------------------------------

    /**
     * Rendering engine.
     */
    blitting_internal static const blitting:Blitting = Blitting.getInstance();

    /**
     * Current (total) frame number.
     */
    protected var _frameNumber:uint = 0;

    /**
     * Current (total) frame number.
     */
    public function get frameNumber():uint {
        return _frameNumber;
    }

    /**
     * Frame rate of rendering.
     */
    protected var _frameRate:Number = 60;

    /**
     * Frame rate of rendering.
     */
    public function get frameRate():Number {
        return _frameRate;
    }

    public function set frameRate(value:Number):void {
        _frameRate = value;

        invalidate();
    }

    /**
     * Render type / mode of rending.
     */
    public var renderType:String = RenderType.ON_INVALIDATION;

    /**
     * Total time elapsed of viewport, in milliseconds.
     */
    protected var _runtime:int = getTimer();

    /**
     * Total time elapsed of viewport, in milliseconds.
     */
    public function get runtime():int {
        return getTimer() - _runtime;
    }

    /**
     * Time elapsed since last frame render, in milliseconds
     */
    private var _deltaTime:int = getTimer();

    /**
     * Time elapsed since last frame render, in milliseconds
     */
    public function get deltaTime():int {
        return getTimer() - _deltaTime;
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * constructor
     */
    public function RenderedViewport() {
        super();
    }

    /**
     * initialize (IInitializable)
     */
    override public function initialize():void {
        super.initialize();

        renderType = RenderType.ON_INVALIDATION;
        _frameNumber = 0;
        _frameRate = 60;
        _runtime = getTimer();
        _deltaTime = getTimer();
    }

    /**
     * Commit to rendering engine if RenderType
     * is CONTINUOUS.
     */
    override protected function addedToStageHandler(event:Event):void {
        super.addedToStageHandler(event);

        // add to engine rendering pipeline if
        // RenderType is CONTINUOUS.
        if (renderType == RenderType.CONTINUOUS)
            blitting.addRenderer(this, renderType);

        invalidate();
    }

    /**
     * Change rendering type.
     */
    public function changeRenderType(renderType:String):void {
        blitting.changeRenderer(this, renderType);
    }

    /**
     * Invalidate by inserting to the engine's
     * invalidation pipeline.
     *
     * By default, RenderedViewport RenderType is
     * CONTINUOUS; therefore render lifecycle
     * will automatically render.
     *
     * AbstractControl is an example where
     * invalidation causes RenderType ONCE.
     */
    override public function invalidate():void {
        super.invalidate();

        blitting.addInvalidation(this, InvalidationType.SELF);

        // if render type is ON_INVALIDATION, commit
        // to rendering engine ONCE.
        if (renderType == RenderType.ON_INVALIDATION)
            blitting.addRenderer(this, RenderType.ONCE);
    }

    /**
     * Commit invalidation before pre-rendering.
     */
    override public function validate():void {
        super.validate();

        stage.frameRate = frameRate;
    }

    /**
     * pre-render
     */
    public function prerender():void {
        ++_frameNumber;

        // Update time elapsed since last frame render.
        _deltaTime = getTimer();
    }

    /**
     * render
     */
    public function render():void {
    }

    /**
     * post-render
     */
    public function postrender(changeRect:Rectangle = null):void {
    }

    /**
     * Detach from engine.
     */
    override protected function removedFromStageHandler(event:Event):void {
        super.removedFromStageHandler(event);

        // remove from engine rendering pipeline.
        blitting.removeRenderer(this);
    }

    /**
     * dispose (IDisposable)
     */
    override public function dispose():void {
        super.dispose();

        // remove from engine rendering pipeline.
        blitting.removeRenderer(this);
    }

}
}
