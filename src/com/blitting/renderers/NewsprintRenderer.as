//
//  com.blitting.renderers.NewsprintTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.core.Blitting;
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Shape;

	public class NewsprintRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		public var pixelColor:uint;

		public var backgroundColor:uint;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function NewsprintRenderer(pixelColor:uint=0x0, backgroundColor:uint=0xffffff)
		{
			super();

			this.pixelColor = pixelColor;
			this.backgroundColor = backgroundColor;
		}

		public function initialize():void
		{
		}

		override public function render(bitmapData:BitmapData):void
		{
			super.render(bitmapData);

			var bd:BitmapData = new BitmapData(2, 2, false, backgroundColor);
			bd.setPixel(0, 0, pixelColor);

			var renderer:Shape = Blitting.getRenderer();

			var g:Graphics = renderer.graphics;
			g.clear();
			g.beginBitmapFill(bd, null, true, true);
			g.drawRect(0, 0, bounds.width, bounds.height);
			g.endFill();

			bitmapData.draw(renderer);
		}

	}
}
