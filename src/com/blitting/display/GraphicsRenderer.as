//
//  com.blitting.display.GraphicsRenderer
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.core.blitting_internal;

	import flash.display.DisplayObject;
	import flash.display.Graphics;

	use namespace blitting_internal;

	/**
	 *
	 * @author jsturges
	 *
	 */
	public class GraphicsRenderer extends AbstractRenderer implements IGraphicsRenderer
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

		override public function initialize():void
		{
			super.initialize();

			displayObject = null;
			graphics = null;
		}

		public function render(graphics:Graphics, displayObject:DisplayObject=null):void
		{
			this.displayObject = displayObject;
			this.graphics = graphics;
		}

		override public function dispose():void
		{
			super.dispose();

			displayObject = null;
			graphics = null;
		}

	}
}
