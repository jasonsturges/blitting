//
//  com.blitting.renderers.SpotlightTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.core.Blitting;
	import com.blitting.display.BitmapRenderer;
	import com.blitting.math.Geometry;

	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.Shape;
	import flash.display.SpreadMethod;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;

	public class SpotlightTextureRenderer extends BitmapRenderer
	{

		//------------------------------
		//  model
		//------------------------------

		protected var blurFilter:BlurFilter;

		public var fillColor:uint = 0xffffffff;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function SpotlightTextureRenderer(fillColor:uint=0xffffffff)
		{
			super();

			// set fill color
			this.fillColor = fillColor;

			blurFilter = new BlurFilter();
			blurFilter.blurX = 10;
			blurFilter.blurY = 10;
			blurFilter.quality = BitmapFilterQuality.HIGH;
		}

		override public function render(bitmapData:BitmapData):void
		{
			// TODO Auto Generated method stub
			super.render(bitmapData);

			// clear blit
			bitmapData.fillRect(bounds, fillColor);

			var matrix:Matrix = new Matrix();
			matrix.createGradientBox(bounds.width + 20, bounds.height + 20, Geometry.deg2rad(90), 0, 100);

			var shape:Shape = Blitting.getRenderer();
			shape.filters = [ blurFilter ];
			shape.graphics.beginGradientFill(GradientType.RADIAL,
											 [ 0x000000, 0x000000, 0x000000 ],
											 [ 0, .1, .3 ],
											 [ 64, 128, 255 ],
											 matrix,
											 SpreadMethod.PAD,
											 InterpolationMethod.RGB,
											 20);
			shape.graphics.drawRect(-10, -10, bounds.width + 20, bounds.height + 20);
			shape.graphics.endFill();

			bitmapData.draw(shape);
		}

	}
}
