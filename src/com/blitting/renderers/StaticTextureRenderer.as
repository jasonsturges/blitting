//
//  com.blitting.renderers.StaticTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.display.BitmapRenderer;

	import flash.display.BitmapData;

	public class StaticTextureRenderer extends BitmapRenderer
	{

		//------------------------------
		//  model
		//------------------------------

		public var low:uint = 0;

		public var high:uint = 200;

		public var channelOptions:uint = 7;

		public var grayscale:Boolean = true;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function StaticTextureRenderer()
		{
			super();
		}

		override public function render(bitmapData:BitmapData):void
		{
			super.render(bitmapData);

			bitmapData.noise(Math.floor(Math.random() * 500000), low, high, channelOptions, grayscale);
		}

	}
}
