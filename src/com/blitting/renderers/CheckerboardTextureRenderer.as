//
//  com.blitting.renderers.CheckerboardTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.BitmapData;
	import flash.geom.Matrix;

	public class CheckerboardTextureRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		public var backgroundColor:uint;

		public var checkerColor:uint;

		public var checkerWidth:Number;

		public var checkerHeight:Number;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function CheckerboardTextureRenderer(checkerWidth:Number=24, checkerHeight:Number=24, checkerColor:uint=0x0, backgroundColor:uint=0xffffff)
		{
			super();

			this.checkerWidth = checkerWidth;
			this.checkerHeight = checkerHeight;
			this.checkerColor = checkerColor;
			this.backgroundColor = backgroundColor;
		}

		public function initialize():void
		{
		}

		override public function render(bitmapData:BitmapData):void
		{
			super.render(bitmapData);

			var bd:BitmapData = new BitmapData(1, 1, false, checkerColor);

			var tx:uint = Math.ceil(bounds.width / checkerWidth);
			var ty:uint = Math.ceil(bounds.height / checkerHeight);
			var nx:uint = 0;
			var ny:uint = 0;

			var matrix:Matrix = new Matrix(checkerWidth, 0, 0, checkerHeight);

			for (ny = 0; ny < ty; ny += 1)
			{
				for (nx = (ny % 2); nx < tx; nx += 2)
				{
					matrix.tx = nx * checkerWidth;
					matrix.ty = ny * checkerHeight;
					bitmapData.draw(bd, matrix);
				}
			}

			bd.dispose();
		}

	}
}
