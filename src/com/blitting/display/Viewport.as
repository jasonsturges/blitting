//
//  com.blitting.display.Viewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.core.blitting_internal;
	import com.blitting.lifecycle.IInitializable;
	import com.blitting.lifecycle.IValidatable;

	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	use namespace blitting_internal;

	/**
	 * Extends AbstractViewport to include autoOrientation,
	 * bounds, registration point, and IValidation lifecycle.
	 *
	 * <ul>
	 * 	<li>invalidate</li>
	 * 	<li>validate</li>
	 * </ul>
	 */
	public class Viewport extends AbstractViewport implements IViewport, IInitializable, IValidatable
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		/**
		 * Viewport bounds.
		 */
		private var _bounds:Rectangle = new Rectangle();

		public function get bounds():Rectangle
		{
			return _bounds;
		}

		public function set bounds(value:Rectangle):void
		{
			_bounds = value;
		}

		/**
		 * Registration point.
		 */
		private var _registration:Point = new Point();

		public function get registration():Point
		{
			return _registration;
		}

		public function set registration(value:Point):void
		{
			_registration = value;
		}

		/**
		 * Whether properties have been invalidated,
		 * requiring validation.
		 */
		protected var invalidated:Boolean = false;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function Viewport()
		{
			super();
		}

		/**
		 * initialize (IInitializable)
		 */
		public function initialize():void
		{
			bounds = new Rectangle();
			registration = new Point();

			invalidated = false;
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
			registration = null;
		}

	}
}
