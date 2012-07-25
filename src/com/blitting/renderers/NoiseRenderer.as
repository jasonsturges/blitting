//
//  com.blitting.renderers.StaticTextureRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.renderers
{
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.BitmapData;

	public class NoiseRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		public var low:uint = 0;

		public var high:uint = 200;

		public var channelOptions:uint = 7;

		public var grayscale:Boolean = true;

		public var seed:int;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function NoiseRenderer()
		{
			super();
		}

		public function initialize():void
		{
			seed = Math.floor(Math.random() * int.MAX_VALUE);
		}

		override public function render(bitmapData:BitmapData):void
		{
			super.render(bitmapData);

			bitmapData.noise(Math.floor(Math.random() * 500000), low, high, channelOptions, grayscale);
		}

	}
}
