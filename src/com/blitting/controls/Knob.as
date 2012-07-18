//
//  com.blitting.controls.Knob
//
//  Created by Jason Sturges.
//
package com.blitting.controls
{
	import com.blitting.display.ResizableViewport;

	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class Knob extends ResizableViewport
	{

		//------------------------------
		//  model
		//------------------------------

		private var _isRotating:Boolean;

		private var _startRotation:Number;

		private var _clickRotation:Number;

		public var _display:DisplayObject;

		public function get display():DisplayObject
		{
			return _display;
		}

		public function set display(value:DisplayObject):void
		{
			while (numChildren > 0)
				removeChildAt(0);

			_display = value;
			addChild(value);
		}

		public function get degrees():Number
		{
			if (rotation < 0)
				return rotation + 360;

			return rotation;
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function Knob()
		{
			super();
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
			addEventListener(MouseEvent.MOUSE_UP, mouseOutHandler);
			addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
		}

		protected function mouseDownHandler(event:MouseEvent):void
		{
			_isRotating = true;

			_startRotation = rotation;
			_clickRotation = Math.atan2(stage.mouseY - this.y, stage.mouseX - this.x) * 180 / Math.PI;
		}

		protected function mouseOutHandler(event:MouseEvent):void
		{
			_isRotating = false;
		}

		protected function mouseUpHandler(event:MouseEvent):void
		{
			_isRotating = false;
		}

		protected function mouseMoveHandler(event:MouseEvent):void
		{
			if (!_isRotating)
				return;

			rotation = _startRotation + ((Math.atan2(stage.mouseY - this.y, stage.mouseX - this.x) * 180 / Math.PI) - _clickRotation);

			//dispatchEvent(new MouseEvent(MouseEvent.MOUSE_WHEEL, true, true, mouseX, mouseY, this, false, false, false, false, (_angle - step)));
		}

		override public function dispose():void
		{
			super.dispose();

			display = null;

			removeEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			removeEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
			removeEventListener(MouseEvent.MOUSE_UP, mouseOutHandler);
			removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
		}

	}
}
