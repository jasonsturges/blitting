package com.blitting.display
{
	import com.blitting.core.RenderType;

	import flash.display.Stage3D;
	import flash.display3D.Context3D;
	import flash.display3D.Context3DRenderMode;
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.geom.PerspectiveProjection;
	import flash.system.ApplicationDomain;

	/**
	 * Stage3D Viewport.
	 *
	 * To request software rendering:
	 *
	 * <code>
	 *    new Viewport3d(Context3DRenderMode.SOFTWARE);
	 * </code>
	 * @author jsturges
	 */
	public class Viewport3d extends ResizableViewport
	{

		//------------------------------
		//  model
		//------------------------------

		protected var antiAlias:int = 16;

		protected var context3d:Context3D;

		protected var context3dCreated:Boolean = false;

		protected var context3dRenderMode:String = Context3DRenderMode.AUTO;

		protected var enableDepthAndStencil:Boolean = true;

		protected var enableErrorChecking:Boolean = false;

		protected var stage3d:Stage3D;

		protected var stage3dAvailable:Boolean = false;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function Viewport3d(context3dRenderMode:String=Context3DRenderMode.AUTO)
		{
			super();

			autoOrientation();
			fullStage = true;
			renderType = RenderType.CONTINUOUS;
			this.context3dRenderMode = context3dRenderMode;
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			initialize();
		}

		protected function initialize():void
		{
			stage3dAvailable = ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D");

			if (!stage3dAvailable)
				return;

			stage.stage3Ds[0].addEventListener(Event.CONTEXT3D_CREATE, context3dCreateHandler);
			stage.stage3Ds[0].addEventListener(ErrorEvent.ERROR, errorEventHandler);
			stage.stage3Ds[0].requestContext3D(context3dRenderMode);
		}

		protected function context3dCreateHandler(event:Event):void
		{
			stage3d = event.target as Stage3D;
			context3d = stage3d.context3D;

			context3dCreated = true;

			context3d.enableErrorChecking = enableErrorChecking;

			context3d.configureBackBuffer(stage.stageWidth, stage.stageHeight, 16, true);
		}

		protected function errorEventHandler(event:ErrorEvent):void
		{
		}

		override public function layout():void
		{
			super.layout();

			if (!context3dCreated)
				return;

			context3d.clear(0, 0, 0, 1);
			context3d.configureBackBuffer(stage.stageWidth, stage.stageHeight, antiAlias, enableDepthAndStencil);
			context3d.present();
		}

	}
}
