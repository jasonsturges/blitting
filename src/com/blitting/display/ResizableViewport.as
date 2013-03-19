//
//  com.blitting.display.ResizableViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.core.blitting_internal;
	import com.blitting.lifecycle.IResizable;

	import flash.display.StageDisplayState;
	import flash.events.Event;

	use namespace blitting_internal;

	/**
	 * Extends RenderedViewport to include fullstage
	 * binding and IResizable lifecycle.
	 *
	 * <ul>
	 * 	<li>resize</li>
	 * </ul>
	 */
	public class ResizableViewport extends RenderedViewport implements IResizable
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		/**
		 * Bind to full stage bounds.
		 */
		public var fullStage:Boolean = false;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function ResizableViewport()
		{
			super();
		}

		/**
		 * initialize (IInitializable)
		 */
		override public function initialize():void
		{
			fullStage = false;
		}

		/**
		 * addedToStageHandler
		 */
		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			// add event listeners.
			addEventListener(Event.RESIZE, resizeHandler);

			// bind to full stage
			if (fullStage)
			{
				stage.addEventListener(Event.RESIZE, resizeHandler);
				resize(stage.stageWidth, stage.stageHeight);
			}
		}

		/**
		 * Enter full screen mode specifying whether display
		 * remains interactive to keyboard events.
		 */
		protected function fullScreen(interactive:Boolean=true):void
		{
			switch (interactive)
			{
				case true:
					if (stage.allowsFullScreenInteractive)
						stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
					break;
				case false:
					if (stage.allowsFullScreen)
						stage.displayState = StageDisplayState.FULL_SCREEN;
					break;
			}
		}

		/**
		 * resizeHandler
		 */
		protected function resizeHandler(event:Event):void
		{
			if (fullStage)
				resize(stage.stageWidth, stage.stageHeight);
		}

		/**
		 * Resize command to invalidate size of viewport
		 * and automatically enqueue rendering.
		 */
		public function resize(width:Number, height:Number):void
		{
			bounds.width = width;
			bounds.height = height;

			blitting.addLayout(this);

			invalidate();
		}

		/**
		 *
		 */
		public function layout():void
		{
		}

		/**
		 * dispose (IDisposable)
		 */
		override public function dispose():void
		{
			// remove resize event listener
			removeEventListener(Event.RESIZE, resizeHandler);

			if (fullStage)
				stage.removeEventListener(Event.RESIZE, resizeHandler);
		}

	}
}
