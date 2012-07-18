//
//  com.blitting.display.BitmapRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import flash.display.BitmapData;

	public class BitmapRenderer extends AbstractRenderer
	{

		//------------------------------
		//  model
		//------------------------------

		protected var bitmapData:BitmapData;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function BitmapRenderer()
		{
			super();
		}

		public function render(bitmapData:BitmapData):void
		{
			this.bitmapData = bitmapData;
		}

	}
}
