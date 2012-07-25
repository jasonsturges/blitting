//
//  com.blitting.renderers.PixelTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

	public class PixelRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * Color function per pixel returning 24-bit color.
		 */
		public var colorFunction:Function = null;

		/**
		 * Pixels to be drawn per frame.
		 */
		public var iterations:uint = 100;

		/**
		 * Width of each pixel.
		 */
		public var pixelWidth:Number = 10;

		/**
		 * Height of each pixel.
		 */
		public var pixelHeight:Number = 10;

		/**
		 * Horizontal margin between pixels.
		 */
		public var horizontalSpace:Number = 10;

		/**
		 * Vertical margin between pixels.
		 */
		public var verticalSpace:Number = 10;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function PixelRenderer(w:Number=0,
											 h:Number=0,
											 colorFunction:Function=null,
											 iterations:uint=100,
											 pixelWidth:Number=10,
											 pixelHeight:Number=10,
											 horizontalSpace:Number=10,
											 verticalSpace:Number=10)
		{
			super();

			this.colorFunction = colorFunction;
			this.iterations = iterations;
			this.pixelWidth = pixelWidth;
			this.pixelHeight = pixelHeight;
			this.horizontalSpace = horizontalSpace;
			this.verticalSpace = verticalSpace;
		}

		public function initialize():void
		{
		}

		override public function render(bitmapData:BitmapData):void
		{
			super.render(bitmapData);

			var mx:Number = bounds.width / (pixelWidth + (horizontalSpace - pixelWidth));
			var my:Number = bounds.height / (pixelHeight + (verticalSpace - pixelHeight));

			for (var i:uint = 0; i < iterations; i++)
			{
				var dx:uint = Math.floor(Math.random() * mx);
				var dy:uint = Math.floor(Math.random() * my);

				var px:uint = dx * pixelWidth;
				var py:uint = dy * pixelHeight;
				px += dx * (horizontalSpace - pixelWidth);
				py += dy * (verticalSpace - pixelHeight);

				bitmapData.fillRect(new Rectangle(px, py, pixelWidth, pixelHeight), colorFunction());
			}
		}

	}
}
