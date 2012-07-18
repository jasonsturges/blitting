//
//  com.blitting.display.CameraViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.lifecycle.IDisposable;

	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public class CameraViewport extends Viewport
	{

		//------------------------------
		//  display
		//------------------------------

		/**
		 * Internal children display list.
		 * This scene graph is the focus of the camera.
		 */
		private var _scene:Sprite;

		/** Mask of internal children display list. */
		private var _sceneMask:Sprite;


		//------------------------------
		//  bounds
		//------------------------------

		/**
		 * _targetBounds
		 *
		 * <p>
		 * Within the coordinate system of the camera's
		 * focused display list, target bounds requested
		 * for focus.
		 * </p>
		 */
		private var _destinationBounds:Rectangle;

		/**
		 * _currentBounds
		 *
		 * <p>
		 * Within the coordinate system of the camera's
		 * focused display list (_destinationBounds),
		 * current bounds iterating to destination per factor.
		 * </p>
		 */
		private var _currentBounds:Rectangle;

		/**
		 * _viewportBounds
		 *
		 * <p>
		 * Bounds of the camera, in the coordinate system of
		 * final rendered lens output.
		 * </p>
		 */
		private var _viewportBounds:Rectangle;


		//------------------------------
		//  presentation
		//------------------------------

		/** Fly factor for animation. */
		public var factor:Number = 0.1;


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function CameraViewport()
		{
			_currentBounds = new Rectangle();
			_destinationBounds = new Rectangle();
			_viewportBounds = new Rectangle();

			_scene = new Sprite();
			addChild(_scene);

			_sceneMask = new Sprite();
			addChild(_sceneMask);
			_scene.mask = _sceneMask;
		}

		/**
		 * <p>
		 * Camera sets children display list by focusing
		 * camera on a DisplayObject.
		 *
		 * Adding children to camera applies children
		 * to Camera's internal scene graph.
		 * </p>
		 */
		override public function addChild(child:DisplayObject):DisplayObject
		{
			if ((child === this._scene) ||
				(child === this._sceneMask))
				return (super.addChild(child));
			else
				return (_scene.addChild(child));
		}

		/** Focusing camera on a DisplayObject. */
		public function focusOn(displayObject:DisplayObject):void
		{
			_scene.addChild(displayObject);
		}

		/**
		 * <p>
		 * Set destination bounds applying change immediately.
		 *
		 * For an animation effect, use flyTo method.
		 * </p>
		 */
		public function setTargetBounds(x:Number, y:Number, w:Number, h:Number):void
		{
			_destinationBounds.x = x;
			_destinationBounds.y = y;
			_destinationBounds.width = w;
			_destinationBounds.height = h;

			_currentBounds.x = x;
			_currentBounds.y = y;
			_currentBounds.width = w;
			_currentBounds.height = h;

			updateBounds();
		}

		/** Get destination bounds. */
		public function getTargetBounds():Rectangle
		{
			return (_destinationBounds.clone());
		}

		/** Animate motion to target destination bounds. */
		public function flyToBounds(x:Number, y:Number, w:Number, h:Number):void
		{
			_destinationBounds.x = x;
			_destinationBounds.y = y;
			_destinationBounds.width = w;
			_destinationBounds.height = h;

			startTimer();
		}

		/** Set viewport of camera, actual size of rendered output. */
		public function setViewportBounds(x:Number, y:Number, w:Number, h:Number):void
		{
			_viewportBounds.x = x;
			_viewportBounds.y = y;
			_viewportBounds.width = w;
			_viewportBounds.height = h;

			updateBounds();
		}

		/** Start animation motion. */
		private function startTimer():void
		{
			addEventListener(Event.ENTER_FRAME, frameHandler);
		}

		/** Frame handler for animation. */
		private function frameHandler(event:Event):void
		{
			// distances from destination
			var dx:Number = _destinationBounds.x - _currentBounds.x;
			var dy:Number = _destinationBounds.y - _currentBounds.y;
			var dw:Number = _destinationBounds.width - _currentBounds.width;
			var dh:Number = _destinationBounds.height - _currentBounds.height;

			if ((Math.abs(dx) < 0.05) &&
				(Math.abs(dy) < 0.05) &&
				(Math.abs(dw) < 0.05) &&
				(Math.abs(dh) < 0.05))
			{
				_currentBounds.x = _destinationBounds.x;
				_currentBounds.y = _destinationBounds.y;
				_currentBounds.width = _destinationBounds.width;
				_currentBounds.height = _destinationBounds.height;
				stopTimer();
			}

			_currentBounds.x += dx * factor;
			_currentBounds.y += dy * factor;
			_currentBounds.width += dw * factor;
			_currentBounds.height += dh * factor;

			updateBounds();
		}

		/** Update viewport per current bounds. */
		public function updateBounds():void
		{
			if ((_currentBounds.x == 0) &&
				(_currentBounds.y == 0) &&
				(_currentBounds.width == 0) &&
				(_currentBounds.height == 0))
				return;

			// mask
			var g:Graphics = _sceneMask.graphics;
			g.clear();
			g.beginFill(0xff0000, 0);
			g.drawRect(_viewportBounds.x, _viewportBounds.y, _viewportBounds.width, _viewportBounds.height);
			g.endFill();

			// find center point of target
			var p:Point = new Point(_currentBounds.x + (_currentBounds.width * 0.5), _currentBounds.y + (_currentBounds.height * 0.5));

			p = _scene.localToGlobal(p);
			p = _scene.parent.globalToLocal(p);
			_scene.x += (_viewportBounds.width * 0.5) - p.x;
			_scene.y += (_viewportBounds.height * 0.5) - p.y;

			var ratio:Number = 1;

			if (_currentBounds.width > _currentBounds.height)
			{
				if (_viewportBounds.width > _viewportBounds.height)
					ratio = _viewportBounds.height / _currentBounds.width;
				else
					ratio = _viewportBounds.width / _currentBounds.width;
			}
			else
			{
				if (_viewportBounds.width > _viewportBounds.height)
					ratio = _viewportBounds.height / _currentBounds.height;
				else
					ratio = _viewportBounds.width / _currentBounds.height;
			}

			var p1:Point = new Point(_currentBounds.x + (_currentBounds.width * 0.5), _currentBounds.y + (_currentBounds.height * 0.5));
			p1 = _scene.localToGlobal(p1);
			p1 = _scene.parent.globalToLocal(p1);

			_scene.scaleX = ratio;
			_scene.scaleY = ratio;

			var p2:Point = new Point(_currentBounds.x + (_currentBounds.width * 0.5), _currentBounds.y + (_currentBounds.height * 0.5));
			p2 = _scene.localToGlobal(p2);
			p2 = _scene.parent.globalToLocal(p2);

			_scene.x -= p2.x - p1.x;
			_scene.y -= p2.y - p1.y;
		}

		/** Stop animation motion. */
		private function stopTimer():void
		{
			removeEventListener(Event.ENTER_FRAME, frameHandler);
		}

		/**
		 * clear scene, detaching any children
		 * from the Camera's display list.
		 */
		public function clearScene():void
		{
			if (!_scene)
				return;

			while (_scene.numChildren > 0)
				_scene.removeChildAt(0);
		}

		/** dispose (IDisposable) */
		override public function dispose():void
		{
			stopTimer();

			clearScene();

			_scene = null;
			_sceneMask = null;
			_currentBounds = null;
			_destinationBounds = null;
			_viewportBounds = null;

			super.dispose();
		}

	}
}
