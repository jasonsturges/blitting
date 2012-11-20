//
//  com.blitting.display.AbstractViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.lifecycle.IDisposable;

	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * Provides base lifecycle for views, including
	 * IDisposable lifecycle.
	 *
	 * <ul>
	 * 	<li>added to stage</li>
	 * 	<li>removed from stage</li>
	 * 	<li>dispose</li>
	 * </ul>
	 */
	public class AbstractViewport extends Sprite implements IDisposable
	{
		include "../core/Version.as";


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function AbstractViewport(fullStage:Boolean=false)
		{
			super();

			// add added to stage listener.
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}

		/**
		 * addedToStageHandler
		 */
		protected function addedToStageHandler(event:Event):void
		{
			// remove added to stage event listener.
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

			// add removed from stage listener.
			addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
		}

		/**
		 * removedFromStageHandler
		 */
		protected function removedFromStageHandler(event:Event):void
		{
			// remove removed from stage event listener
			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);

			// add added to stage event listener
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}

		/**
		 * dispose (IDisposable)
		 */
		public function dispose():void
		{
			// remove children
			while (numChildren > 0)
			{
				var displayObject:DisplayObject = removeChildAt(0);

				if (displayObject is IDisposable)
					IDisposable(displayObject).dispose();
			}

			// remove added to stage event listener
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

			// remove removed from stage event listener
			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
		}

	}
}
