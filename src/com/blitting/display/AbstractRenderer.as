//
//  com.blitting.display.AbstractRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.core.Blitting;
	import com.blitting.core.blitting_internal;
	import com.blitting.lifecycle.IDisposable;
	import com.blitting.lifecycle.IInitializable;

	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	use namespace blitting_internal;

	/**
	 *
	 * @author jsturges
	 *
	 */
	public class AbstractRenderer extends EventDispatcher implements IRenderer, IViewport, IInitializable, IDisposable
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		/**
		 * Rendering engine.
		 */
		blitting_internal static const blitting:Blitting = Blitting.getInstance();

		/**
		 * Viewport bounds (IViewport)
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
		 * Registration point (IViewport)
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


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 *
		 */
		public function AbstractRenderer(target:IEventDispatcher=null)
		{
			super(target);
		}

		/**
		 * initialize (IInitializable)
		 */
		public function initialize():void
		{
			bounds = new Rectangle();
			registration = new Point();
		}

		/**
		 * dispose (IDisposable)
		 */
		public function dispose():void
		{
			bounds = null;
			registration = null;
		}

	}
}
