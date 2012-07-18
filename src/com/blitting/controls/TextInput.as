//
//  com.blitting.controls.TextInput
//
//  Created by Jason Sturges.
//
package com.blitting.controls
{
	import com.blitting.display.ResizableViewport;
	import com.blitting.math.Geometry;

	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.events.Event;
	import flash.events.FocusEvent;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.TextLineMetrics;

	public class TextInput extends ResizableViewport
	{

		//------------------------------
		//  model
		//------------------------------

		public var cornerRadius:Number = 0;

		private var _textField:TextField;

		public function set textFormat(value:TextFormat):void
		{
			if (!_textField)
				return;

			_textField.setTextFormat(value);
			_textField.defaultTextFormat = value;
			_textField.embedFonts = true;
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function TextInput()
		{
			super();

			_textField = new TextField();
			_textField.type = TextFieldType.INPUT;
			_textField.antiAliasType = AntiAliasType.ADVANCED;
			_textField.addEventListener(Event.CHANGE, textFieldChangeHandler);
			_textField.addEventListener(FocusEvent.FOCUS_IN, textFieldFocusHandler);
			_textField.addEventListener(FocusEvent.FOCUS_OUT, textFieldFocusHandler);
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			addChild(_textField);
		}

		override protected function resizeHandler(event:Event):void
		{
			super.resizeHandler(event);

			var m:Matrix = new Matrix();
			var g:Graphics = graphics;
			g.clear();

			// fill
			g.lineStyle();
			g.beginFill(0xffffff);
			g.drawRoundRectComplex(bounds.x, bounds.y, bounds.width, bounds.height, cornerRadius, cornerRadius, cornerRadius, cornerRadius);
			g.endFill();

			// shadow
			g.lineStyle(1, 0xe8e8e8);
			g.moveTo(bounds.x, bounds.y + 1);
			g.lineTo(bounds.width, bounds.y + 1);
			g.endFill();

			// border
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x9a9a9a, 0x808080 ], [ 1, 1 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(bounds.x, bounds.y, bounds.width, bounds.height, cornerRadius, cornerRadius, cornerRadius, cornerRadius);

			var tlm:TextLineMetrics = _textField.getLineMetrics(0);
			_textField.x = bounds.x + 1;
			_textField.y = (bounds.height * 0.5) - (tlm.height * 0.5);
			_textField.width = bounds.width - 2;
			_textField.height = bounds.height - 2;
		}

		protected function textFieldChangeHandler(event:Event):void
		{
		}

		private function textFieldFocusHandler(event:FocusEvent):void
		{
			switch (event.type)
			{
				case FocusEvent.FOCUS_IN:
				{
					filters = [ new GlowFilter(0x6699cc)];
					break;
				}
				case FocusEvent.FOCUS_OUT:
				{
					filters = [];
					break;
				}
			}
		}

		override public function dispose():void
		{
			super.dispose();

			if (contains(_textField))
				removeChild(_textField);

			if (_textField)
			{
				_textField.removeEventListener(Event.CHANGE, textFieldChangeHandler);
				_textField.removeEventListener(FocusEvent.FOCUS_IN, textFieldFocusHandler);
				_textField.removeEventListener(FocusEvent.FOCUS_OUT, textFieldFocusHandler);
				_textField = null;
			}
		}

	}
}
