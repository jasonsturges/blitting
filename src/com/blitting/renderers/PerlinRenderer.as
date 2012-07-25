package com.blitting.renderers
{
	import com.blitting.display.BitmapRenderer;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.BitmapData;

	public class PerlinRenderer extends BitmapRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		/** channel options */
		public var channelOptions:uint;

		/** fractal noise */
		public var fractalNoise:Boolean;

		/** gray scale */
		public var grayScale:Boolean;

		/** octaves */
		public var octaves:uint;

		/** offsets */
		public var offsets:Array;

		/** seed */
		public var seed:int;

		/** stitch */
		public var stitch:Boolean;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function PerlinRenderer()
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

			bitmapData.perlinNoise(bounds.width,
								   bounds.height,
								   octaves,
								   seed,
								   stitch,
								   fractalNoise,
								   channelOptions,
								   grayScale,
								   offsets);
		}

		override public function dispose():void
		{
			super.dispose();

			offsets = null;
		}

	}
}
