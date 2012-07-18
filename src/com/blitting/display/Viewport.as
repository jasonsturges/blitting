//
//  com.blitting.display.Viewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.lifecycle.IValidatable;

	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * Extends AbstractViewport to include autoOrientation,
	 * bounds, registration point, and IValidation lifecycle.
	 *
	 * <ul>
	 * 	<li>invalidate</li>
	 * 	<li>validate</li>
	 * </ul>
	 */
	public class Viewport extends AbstractViewport implements IValidatable
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * Viewport bounds.
		 */
		protected var bounds:Rectangle;

		/**
		 * Whether properties have been invalidated,
		 * requiring validation.
		 */
		protected var invalidated:Boolean;

		/**
		 * Registration point.
		 */
		protected var registrationPoint:Point;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function Viewport()
		{
			super();

			bounds = new Rectangle();
			registrationPoint = new Point(0, 0);
		}

		/**
		 * autoOrientation
		 */
		public function autoOrientation():void
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
		}

		/**
		 * Indicate component has been invalidated. (IValidatable).
		 *
		 * Viewport abstract base class does not manage invalidation through
		 * the BlittingEngine; therefore, validation commit stage must be
		 * implemented via inheritance.
		 */
		public function invalidate():void
		{
			if (invalidated)
				return;

			invalidated = true;
		}

		/**
		 * Indicate component has been validated. (IValidatable).
		 *
		 * Viewport abstract base class does not manage invalidation through
		 * the BlittingEngine; therefore, validation commit stage must be
		 * implemented via inheritance.
		 */
		public function validate():void
		{
			invalidated = false;
		}

		/**
		 * dispose (IDisposable)
		 */
		override public function dispose():void
		{
			super.dispose();

			bounds = null;
			registrationPoint = null;
		}

	}
}
