//
//  com.blitting.controls.Button
//
//  Created by Jason Sturges.
//
package com.blitting.controls
{
	import com.blitting.display.ResizableViewport;
	import com.blitting.core.Blitting;
	import com.blitting.math.Geometry;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.display.Shape;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextLineMetrics;

	public class Button extends ResizableViewport
	{

		//------------------------------
		//  constant
		//------------------------------

		/* states */
		public static const UP:String = "com.jasonsturges.labs.blitting.controls.Button.UP";
		public static const DOWN:String = "com.jasonsturges.labs.blitting.controls.Button.DOWN";
		public static const OVER:String = "com.jasonsturges.labs.blitting.controls.Button.OVER";


		//------------------------------
		//  presentation
		//------------------------------

		public var cornerRadius:Number = 2;

		private var _disabled:Boolean;

		public function get disabled():Boolean
		{
			return _disabled;
		}

		public function set disabled(value:Boolean):void
		{
			_disabled = value;

			switch (value)
			{
				case true:
				{
					_bitmap.alpha = 0.5;
					break;
				}
				case false:
				{
					_bitmap.alpha = 1;
					break;
				}
			}
		}

		public var fillColor:uint = 0xd8d8d8;

		public function get text():String
		{
			if (!_textField)
				return null;

			return _textField.text;
		}

		public function set text(value:String):void
		{
			if (!_textField)
				return;

			_textField.text = value;
		}

		public function set textFormat(value:TextFormat):void
		{
			if (!_textField)
				return;

			_textField.setTextFormat(value);
			_textField.defaultTextFormat = value;
			_textField.embedFonts = true;
		}


		//------------------------------
		//  model
		//------------------------------

		private var _upBitmapData:BitmapData;

		private var _downBitmapData:BitmapData;

		private var _overBitmapData:BitmapData;

		private var _bitmap:Bitmap;

		private var _currentState:String;

		public function get currentState():String
		{
			return _currentState;
		}

		public function set currentState(value:String):void
		{
			_currentState = value;

			switch (value)
			{
				case Button.DOWN:
				{
					_bitmap.bitmapData = _downBitmapData;
					break;
				}
				case Button.OVER:
				{
					_bitmap.bitmapData = _overBitmapData;
					break;
				}
				case Button.UP:
				{
					_bitmap.bitmapData = _upBitmapData;
					break;
				}
				default:
				{
					throw(new Error("Invalid state to Button."));
					break;
				}
			}
		}

		private var _textField:TextField;

		public var textFieldAutoSize:String = TextFieldAutoSize.CENTER;


		//------------------------------
		//  lifecycle
		//-----------------------------

		public function Button()
		{
			super();

			_bitmap = new Bitmap();
			_textField = new TextField();
			_textField.mouseEnabled = false;
			_textField.antiAliasType = AntiAliasType.ADVANCED;
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			addEventListener(MouseEvent.MOUSE_DOWN, downHandler);
			addEventListener(MouseEvent.ROLL_OUT, outHandler);
			addEventListener(MouseEvent.MOUSE_UP, upHandler);
			addEventListener(MouseEvent.ROLL_OVER, overHandler);

			_bitmap.bitmapData = _upBitmapData;

			_currentState = Button.UP;

			textFieldAutoSize = TextFieldAutoSize.CENTER;

			addChild(_bitmap);
			addChild(_textField);
		}

		override public function resize(width:Number, height:Number):void
		{
			super.resize(width, height);

			var m:Matrix = new Matrix();

			var renderer:Shape = Blitting.getRenderer();
			var g:Graphics = renderer.graphics;

			// ======== up ========

			g.clear();

			// shadow
			m.createGradientBox(bounds.width, bounds.height, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.01, 0.07 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(0, 0, bounds.width, bounds.height, cornerRadius, cornerRadius, cornerRadius, cornerRadius);
			g.endFill();

			// fill
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xffffff, fillColor ], [ 0.85, 0.85 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill lowlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(270), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0x0, 0x0, 0x0 ], [ 0.0627, 0.0099, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill highlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xffffff, 0xffffff, 0xffffff ], [ 0.33, 0.33, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// highlight stroke
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0xffffff, fillColor ], [ 1, 1 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(3, 3, bounds.width - 6, bounds.height - 6, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2);
			g.lineStyle();

			// border
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.5625, 0.75 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.lineStyle();

			_upBitmapData = new BitmapData(bounds.width, bounds.height, true, 0xff0000);
			_upBitmapData.draw(renderer);


			// ======== over ========

			g.clear();

			// shadow
			m.createGradientBox(bounds.width, bounds.height, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.01, 0.07 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(0, 0, bounds.width, bounds.height, cornerRadius, cornerRadius, cornerRadius, cornerRadius);
			g.endFill();

			// fill
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xbbbdbd, 0x9fa0a1 ], [ 0.85, 0.85 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill lowlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(270), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0x0, 0x0, 0x0 ], [ 0.0627, 0.0099, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill highlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xffffff, 0xffffff, 0xffffff ], [ 0.22, 0.22, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// highlight stroke
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0xffffff, fillColor ], [ 0.22, 0.22 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(3, 3, bounds.width - 6, bounds.height - 6, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2);
			g.lineStyle();

			// border
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.5625, 0.75 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.lineStyle();

			_overBitmapData = new BitmapData(bounds.width, bounds.height, true, 0xff0000);
			_overBitmapData.draw(renderer);


			// ======== down ========
			// down undo
			g.clear();

			// shadow
			m.createGradientBox(bounds.width, bounds.height, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xffffff, 0xffffff ], [ 0, 0.5 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(0, 0, bounds.width, bounds.height, cornerRadius, cornerRadius, cornerRadius, cornerRadius);
			g.endFill();

			// fill
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xaaaaaa, 0x929496 ], [ 0.85, 0.85 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill lowlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(270), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0x0, 0x0, 0x0 ], [ 0.0627, 0.0099, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// fill highlight
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.beginGradientFill(GradientType.LINEAR, [ 0xffffff, 0xffffff, 0xffffff ], [ 0.12, 0.12, 0 ], [ 0x0, 0x80, 0x81 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.endFill();

			// highlight stroke 1 (down state only)
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x0, 0x0, 0x0, 0x0, 0x0 ], [ 0.25, 0.25, 0.07, 0.07, 0 ], [ 0x0, 0x2, 0x3, 0xf6, 0xf7 ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			// highlight stroke 2 (down state only)
			m.createGradientBox(bounds.width - 4, bounds.height - 4, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.09, 0 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(3, 3, bounds.width - 6, bounds.height - 6, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2, cornerRadius - 2);
			g.lineStyle();

			// border
			m.createGradientBox(bounds.width - 2, bounds.height - 2, Geometry.deg2rad(90), 0, 0);
			g.lineStyle(1, 0x0, 1, true);
			g.lineGradientStyle(GradientType.LINEAR, [ 0x0, 0x0 ], [ 0.6375, 0.85 ], [ 0x0, 0xff ], m);
			g.drawRoundRectComplex(2, 2, bounds.width - 4, bounds.height - 4, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1, cornerRadius - 1);
			g.lineStyle();

			_downBitmapData = new BitmapData(bounds.width, bounds.height, true, 0xff0000);
			_downBitmapData.draw(renderer);


			// ======== text ========

			_textField.autoSize = textFieldAutoSize;
			var tlm:TextLineMetrics = _textField.getLineMetrics(0);
			_textField.y = (bounds.height * 0.5) - (tlm.height * 0.5);
			switch (textFieldAutoSize)
			{
				case TextFieldAutoSize.LEFT:
				case TextFieldAutoSize.NONE:
				{
					_textField.x = 0;
					break;
				}
				default:
				case TextFieldAutoSize.CENTER:
				{
					_textField.x = (bounds.width * 0.5) - (tlm.width * 0.5);
					break;
				}
				case TextFieldAutoSize.RIGHT:
				{
					_textField.x = bounds.width - tlm.width;
				}
			}

			// dispose
			renderer = null;
			m = null;
			g = null;
		}

		private function downHandler(event:MouseEvent):void
		{
			_currentState = Button.DOWN;
			_bitmap.bitmapData = _downBitmapData;
		}

		private function overHandler(event:MouseEvent):void
		{
			_currentState = Button.OVER;
			_bitmap.bitmapData = _overBitmapData;
		}

		private function upHandler(event:MouseEvent):void
		{
			_currentState = Button.OVER;
			_bitmap.bitmapData = _overBitmapData;
		}

		private function outHandler(event:MouseEvent):void
		{
			_currentState = Button.UP;
			_bitmap.bitmapData = _upBitmapData;
		}

		override public function dispose():void
		{
			super.dispose();

			removeEventListener(MouseEvent.MOUSE_DOWN, downHandler);
			removeEventListener(MouseEvent.ROLL_OUT, outHandler);
			removeEventListener(MouseEvent.MOUSE_UP, upHandler);
			removeEventListener(MouseEvent.ROLL_OVER, overHandler);

			if (contains(_bitmap))
				removeChild(_bitmap);

			if (_bitmap)
				_bitmap = null;

			if (_upBitmapData)
				_upBitmapData.dispose()

			if (_overBitmapData)
				_overBitmapData.dispose();

			if (_downBitmapData)
				_downBitmapData.dispose();
		}

	}
}

