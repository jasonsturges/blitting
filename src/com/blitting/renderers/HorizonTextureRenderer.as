//
//  com.blitting.renderers.HorizonTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.core.Blitting;
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;
	import com.blitting.math.Geometry;

	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.Shape;
	import flash.display.SpreadMethod;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;

	public class HorizonTextureRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		protected var blurFilter:BlurFilter;

		public var fillColor:uint = 0xffffffff;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function HorizonTextureRenderer(fillColor:uint=0xffffffff)
		{
			super();

			// set fill color
			this.fillColor = fillColor;

			blurFilter = new BlurFilter();
			blurFilter.blurX = 10;
			blurFilter.blurY = 10;
			blurFilter.quality = BitmapFilterQuality.HIGH;
		}

		public function initialize():void
		{
		}

		override public function render(bitmapData:BitmapData):void
		{
			// TODO Auto Generated method stub
			super.render(bitmapData);

			// clear blit
			bitmapData.fillRect(bounds, fillColor);

			var matrix:Matrix = new Matrix();
			matrix.createGradientBox(bounds.width, bounds.height, Geometry.deg2rad(90), -0, bounds.height * 0.166666);

			var shape:Shape = Blitting.getRenderer();
			shape.filters = [ blurFilter ];
			shape.graphics.beginGradientFill(GradientType.LINEAR,
											 [ 0x000000, 0x313131 ],
											 [ 1, 1 ],
											 [ 64, 255 ],
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
