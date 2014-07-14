package com.blitting.display {
import com.blitting.core.RenderType;
import com.blitting.core.blitting_internal;
import com.blitting.error.BlittingRenderError;
import com.blitting.model.Color;

import flash.display.Stage3D;
import flash.display3D.Context3D;
import flash.display3D.Context3DRenderMode;
import flash.events.ErrorEvent;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.system.ApplicationDomain;

use namespace blitting_internal;

/**
 * Stage3D Viewport.
 *
 * To request software rendering:
 *
 * <pre><code>
 *    new Viewport3d(Context3DRenderMode.SOFTWARE);
 * </code></pre>
 *
 * @author Jason Sturges
 *
 */
public class Viewport3d extends ResizableViewport {

    //------------------------------
    //  model
    //------------------------------

    protected var antiAlias:int;

    protected var context3d:Context3D;

    protected var context3dCreated:Boolean;

    protected var context3dRenderMode:String;

    protected var enableDepthAndStencil:Boolean;

    protected var enableErrorChecking:Boolean;

    protected var fillColor:Color;

    protected var stage3d:Stage3D;

    protected var stage3dAvailable:Boolean;


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     *
     * @param fillColor 32-bit ARGB uint color.
     * @param context3dRenderMode
     */
    public function Viewport3d(fillColor:uint = 0xff000000, context3dRenderMode:String = "auto") {
        super();

        this.fillColor = Color.fromARGB(fillColor);
        this.context3dRenderMode = context3dRenderMode;

        autoOrientation();
        fullStage = true;
    }

    /**
     *
     */
    override public function initialize():void {
        super.initialize();

        antiAlias = 16;
        context3d = null;
        context3dCreated = false;
        context3dRenderMode = Context3DRenderMode.AUTO;
        enableDepthAndStencil = true;
        enableErrorChecking = false;
        fillColor = Color.fromARGB(0xff000000);
        stage3d = null;
        stage3dAvailable = false;
    }

    /**
     *
     */
    override protected function addedToStageHandler(event:Event):void {
        super.addedToStageHandler(event);

        stage3dAvailable = ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D");

        if (!stage3dAvailable)
            return;

        stage.stage3Ds[0].addEventListener(Event.CONTEXT3D_CREATE, context3dCreateHandler);
        stage.stage3Ds[0].addEventListener(ErrorEvent.ERROR, errorEventHandler);
        stage.stage3Ds[0].requestContext3D(context3dRenderMode);
    }

    /**
     *
     */
    protected function context3dCreateHandler(event:Event):void {
        stage3d = event.target as Stage3D;

        context3d = stage3d.context3D;
        context3d.enableErrorChecking = enableErrorChecking;
        context3d.configureBackBuffer(stage.stageWidth, stage.stageHeight, antiAlias, enableDepthAndStencil);

        context3dCreated = true;
        changeRenderType(RenderType.CONTINUOUS);
    }

    /**
     *
     */
    protected function errorEventHandler(event:ErrorEvent):void {
        throw new BlittingRenderError(event.text, event.errorID);
    }

    /**
     *
     */
    override public function layout():void {
        super.layout();

        if (!context3d)
            return;

        context3d.configureBackBuffer(stage.stageWidth, stage.stageHeight, antiAlias, enableDepthAndStencil);
    }

    /**
     *
     */
    override public function prerender():void {
        super.prerender();

        if (!context3d)
            return;

        context3d.clear(fillColor.red / 255, fillColor.green / 255, fillColor.blue / 255, fillColor.alpha / 255);
    }

    /**
     *
     */
    override public function postrender(changeRect:Rectangle = null):void {
        super.postrender(changeRect);

        if (!context3d)
            return;

        context3d.present();
    }

}
}
