//
//  com.blitting.display.GraphicsRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import flash.display.DisplayObject;
	import flash.display.Graphics;

	public class GraphicsRenderer extends AbstractRenderer
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		protected var displayObject:DisplayObject;

		protected var graphics:Graphics;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function GraphicsRenderer()
		{
			super();
		}

		public function render(displayObject:DisplayObject, graphics:Graphics):void
		{
			this.displayObject = displayObject;
			this.graphics = graphics;
		}

	}
}
