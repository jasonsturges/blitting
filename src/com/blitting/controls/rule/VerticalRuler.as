//
//  com.blitting.rule.VerticalRuler
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

	public class VerticalRuler extends Sprite implements IDisposable
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
		public function VerticalRuler()
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
			var dy:Number = 0;
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

			while (dy < h)
			{
				// marker
				if ((dy + offset) % 100 == 0)
				{
					g.lineStyle(2, 0x000000, 0.9, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(w, dy);
					g.lineTo(w - markerTickLength, dy);

					tf = new TextField();
					_textFields.push(tf);
					addChild(tf);
					tf.defaultTextFormat = new TextFormat("Verdana", 8);
					tf.text = (dy + offset).toString();
					tf.x = 0;
					tf.y = dy;
					tf.width = 10;
					tf.height = 100;
					tf.wordWrap = true;
					tf.selectable = false;
					tf.mouseEnabled = false;
				}
				// major
				else if ((dy + offset) % 10 == 0)
				{
					g.lineStyle(1, 0x000000, 0.75, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(w, dy);
					g.lineTo(w - majorTickLength, dy);
				}
				// minor
				else if ((dy + offset) % 5 == 0)
				{
					g.lineStyle(1, 0x000000, 0.5, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
					g.moveTo(w, dy);
					g.lineTo(w - minorTickLength, dy);
				}

				dy += 1;
			}

			// cursor
			g = cursor.graphics;
			g.clear();
			g.lineStyle(1, 0x000000, 0.6, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
			g.moveTo(0, 0);
			g.lineTo(w, 0);
		}

		/** mouseMoveHandler */
		protected function mouseMoveHandler(event:MouseEvent):void
		{
			if (mouseY < 0)
				cursor.y = 0;
			else
				cursor.y = mouseY;
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
			removeEventListener(Event.ADDED_TO_STAGE, removedFromStageHandler);
			removeEventListener(MouseEvent.MOUSE_MOVE, mouseMoveHandler);
		}

	}
}
