//
//  com.blitting.rule.HorizontalRuler
//
//  Created by Jason Sturges.
//
package com.blitting.controls.rule
{
	import com.blitting.lifecycle.IDisposable;

	import flash.display.CapsStyle;
	import flash.display.Graphics;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class HorizontalRuler extends Sprite implements IDisposable
	{

		//------------------------------
		//  display
		//------------------------------

		/** _textFields */
		private var _textFields:Vector.<TextField>;


		//------------------------------
		//  presentation
		//------------------------------

		/** backgroundFillAlpha */
		public var backgroundFillAlpha:Number = 1;

		/** backgroundFillColor */
		public var backgroundFillColor:uint = 0xececec;

		/** marker */
		public var cursor:Sprite;

		/** offset (distance from origin) */
		public var offset:Number = 0;

		/** origin (base at baseline) */
		public var origin:Number = 0;

		/** minorTickLength */
		public var minorTickLength:Number = 3.0;

		/** majorTickLength */
		public var majorTickLength:Number = 4.5;

		/** markerTickLength */
		public var markerTickLength:Number = 9.0;


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function HorizontalRuler()
		{
			super();

			cursor = new Sprite();
			addChild(cursor);

			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}

		/** addedToStageHandler */
		protected function addedToStageHandler(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);

			stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
		}

		/** render */
		public function render(w:Number, h:Number):void
		{
			var dx:Number = 0;
			var tf:TextField;

			if (_textFields)
				disposeTextFields();

			_textFields = new Vector.<TextField>();

			var g:Graphics = graphics;
			g.clear();

			// background fill
			g.beginFill(backgroundFillColor, backgroundFillAlpha);
			g.drawRect(0, 0, w, h);
			g.endFill();

			while (dx < w)
			{
				// marker
				if ((dx + offset) % 100 == 0)
				{
					g.lineStyle(2, 0x000000, 0.9, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(dx, h);
					g.lineTo(dx, h - markerTickLength);

					tf = new TextField();
					_textFields.push(tf);
					addChild(tf);
					tf.defaultTextFormat = new TextFormat("Verdana", 8);
					tf.text = (dx + offset).toString();
					tf.height = 14;
					tf.x = dx;
					tf.y = 0;
					tf.selectable = false;
					tf.mouseEnabled = false;
				}
				// major
				else if ((dx + offset) % 10 == 0)
				{
					g.lineStyle(1, 0x000000, 0.75, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(dx, h);
					g.lineTo(dx, h - majorTickLength);
				}
				// minor
				else if ((dx + offset) % 5 == 0)
				{
					g.lineStyle(1, 0x000000, 0.5, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(dx, h);
					g.lineTo(dx, h - minorTickLength);
				}

				dx += 1;
			}

			// cursor
			g = cursor.graphics;
			g.clear();
			g.lineStyle(1, 0x000000, 0.6, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
			g.moveTo(0, 0);
			g.lineTo(0, h);
		}

		/** mouseMoveHandler */
		protected function mouseMoveHandler(event:MouseEvent):void
		{
			if (mouseX < 0)
				cursor.x = 0;
			else
				cursor.x = mouseX;
		}

		/** removedFromStageHandler */
		protected function removedFromStageHandler(event:Event):void
		{
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);

			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}

		/** disposeTextFields */
		private function disposeTextFields():void
		{
			var tf:TextField;

			while (this._textFields.length > 0)
			{
				tf = this._textFields.pop();
				if (tf)
					removeChild(tf);
			}

			_textFields = null;
		}

		/** dispose (IDisposable) */
		public function dispose():void
		{
			// dispose text fields
			disposeTextFields();

			// dispose cursor
			if (cursor)
				removeChild(cursor);
			cursor = null;

			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
		}

	}
}
