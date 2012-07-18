//
//  com.blitting.controls.InfiniteWaitCursor
//
//  Created by Jason Sturges.
//
package com.blitting.controls
{
	import com.blitting.display.ResizableViewport;
	import com.blitting.core.Blitting;
	import com.blitting.math.Geometry;

	import flash.display.Graphics;
	import flash.events.Event;

	public class InfiniteWaitCursor extends ResizableViewport
	{

		//------------------------------
		//  model
		//------------------------------

		public var colors:Array = [ 0xf0f0f0,
									0xe0e0e0,
									0xd0d0d0,
									0xc0c0c0,
									0xb0b0b0,
									0xa0a0a0,
									0x909090,
									0x808080,
									0x707070,
									0x606060,
									0x505050,
									0x404040,
									0x303030,
									0x202020,
									0x101010,
									0x000000 ];

		public var segments:uint = 16;

		public function get radius():Number
		{
			return Math.min(bounds.width * 0.5, bounds.height * 0.5);
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function InfiniteWaitCursor()
		{
			super();
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			engine.addCallback(animate);
		}

		override protected function removedFromStageHandler(event:Event):void
		{
			super.removedFromStageHandler(event);

			engine.removeCallback(animate);
		}

		override public function render():void
		{
			super.render();

			var angle:Number = Geometry.deg2rad(360 * (1 / Math.ceil(segments)));

			var g:Graphics = graphics;

			for (var i:uint = 0; i < segments; i++)
			{
				var d:Number = i * angle;

				g.lineStyle(1, 0xffffff, 1);
				g.beginFill(colors[i], 1);

				g.moveTo(Math.cos(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3,
						 Math.sin(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3);
				g.lineTo(Math.cos(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3,
						 Math.sin(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3);
				g.lineTo(Math.cos(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2,
						 Math.sin(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2);
				g.lineTo(Math.cos(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2,
						 Math.sin(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2);
				g.endFill();

				g.lineStyle(0, 0, 0);
				g.beginFill(colors[i + 2 % 16], 1);
				g.moveTo(Math.cos(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3,
						 Math.sin(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3);
				g.lineTo(Math.cos(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2,
						 Math.sin(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2);
				g.lineTo(Math.cos(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2,
						 Math.sin(d - (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.2);
				g.lineTo(Math.cos(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3,
						 Math.sin(d + (angle * .49)) * Math.min(bounds.height, bounds.width) * 0.3);
				g.endFill();
			}
		}

		public function animate():void
		{
			rotation += (360 * (1 / Math.ceil(segments)));
		}

	}
}
