//
//  com.blitting.texture.RectangleTexture
//
//  Created by Jason Sturges.
//
package com.blitting.texture
{
	import flash.display.Graphics;
	import flash.display.Shape;

	public class RectangleTexture extends Shape
	{

		//------------------------------
		//  presentation
		//------------------------------

		public var lineAlpha:Number = 1.0;

		public var lineColor:uint = 0x000000;

		public var fillAlpha:Number = 1.0;

		public var fillColor:uint = 0x222222;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function RectangleTexture()
		{
			super();
		}


		public function render(w:Number, h:Number, iterations:uint=250):void
		{
			var g:Graphics = graphics;
			g.clear();

			g.lineStyle(2, lineColor, lineAlpha, true);
			g.beginFill(fillColor, fillAlpha);

			for (var i:uint = 0; i < iterations; i++)
			{
				g.drawRect(Math.random() * w, Math.random() * h, Math.random() * w, Math.random() * h);
			}

			g.endFill();
		}

	}
}
