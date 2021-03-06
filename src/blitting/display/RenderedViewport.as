/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.display {
import blitting.core.Blitting;
import blitting.core.InvalidationType;
import blitting.core.RenderType;
import blitting.core.blitting_internal;
import blitting.lifecycle.IRenderable;

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
    protected var _frameNumber:uint;

    /**
     * Current (total) frame number.
     */
    public function get frameNumber():uint {
        return _frameNumber;
    }

    /**
     * Frame rate of rendering.
     */
    protected var _frameRate:Number;

    /**
     * Frame rate of rendering.
     */
    public function get frameRate():Number {
        return _frameRate;
    }

    public function set frameRate(value:Number):void {
        if (_frameRate == value)
            return;

        _frameRate = value;
        invalidate();
    }

    /**
     * Render type / mode of rending.
     */
    public var renderType:String;

    /**
     * Total time elapsed of viewport, in milliseconds.
     */
    protected var _runtime:int;

    /**
     * Total time elapsed of viewport, in milliseconds.
     */
    public function get runtime():int {
        return getTimer() - _runtime;
    }

    /**
     * Time elapsed since last frame render, in milliseconds
     */
    private var _deltaTime:int;

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
    public function RenderedViewport(frameRate:Number = 60) {
        super();

        this.frameRate = frameRate;
    }

    /**
     * initialize (IInitializable)
     */
    override public function initialize():void {
        super.initialize();

        renderType = RenderType.ON_INVALIDATION;
        _frameNumber = 0;
        _runtime = _deltaTime = getTimer();
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

        if (stage)
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
