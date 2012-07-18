//
//  com.blitting.texture.CircleTexture
//
//  Created by Jason Sturges.
//
package com.blitting.texture
{
	import flash.display.Graphics;
	import flash.display.Shape;

	public class CircleTexture extends Shape
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

		public function CircleTexture()
		{
			super();
		}


		public function render(w:Number, h:Number, radius:Number=200, iterations:uint=250):void
		{
			var g:Graphics = graphics;
			g.clear();

			g.lineStyle(2, lineColor, lineAlpha, true);
			g.beginFill(fillColor, fillAlpha);

			for (var i:uint = 0; i < iterations; i++)
			{
				g.drawCircle(Math.random() * w, Math.random() * h, Math.random() * radius);
			}

			g.endFill();
		}

	}
}
