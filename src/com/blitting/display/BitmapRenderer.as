//
//  com.blitting.display.BitmapRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.core.blitting_internal;

	import flash.display.BitmapData;

	use namespace blitting_internal;

	/**
	 *
	 * @author jsturges
	 *
	 */
	public class BitmapRenderer extends AbstractRenderer implements IBitmapRenderer
	{
		include "../core/Version.as";


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
