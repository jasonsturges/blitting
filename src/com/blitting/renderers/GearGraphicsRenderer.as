package com.blitting.renderers
{
	import com.blitting.display.GraphicsRenderer;
	import com.blitting.error.BlittingRenderError;
	import com.blitting.lifecycle.IInitializable;

	import flash.display.DisplayObject;
	import flash.display.Graphics;

	public class GearGraphicsRenderer extends GraphicsRenderer implements IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		public var sides:uint;

		public var innerRadius:Number;

		public var outerRadius:Number;

		public var angle:Number;

		public var holeSides:Number;

		public var holeRadius:Number;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function GearGraphicsRenderer()
		{
			super();
		}

		public function initialize():void
		{
		}

		override public function render(displayObject:DisplayObject, graphics:Graphics):void
		{
			super.render(displayObject, graphics);

			if ((sides < 3) ||
				(holeSides < 2))
			{
				throw new BlittingRenderError("GearGraphicsRenderer requires a minimum of 3 sides to render.");
				return;
			}

			var step:Number, qtrStep:Number, start:Number, n:Number, dx:Number, dy:Number;

			step = (Math.PI * 2) / sides;
			qtrStep = step / 4;

			start = (angle / 180) * Math.PI;
			graphics.moveTo(registration.x + (Math.cos(start) * outerRadius), registration.y - (Math.sin(start) * outerRadius));

			for (n = 1; n <= sides; ++n)
			{
				dx = registration.x + Math.cos(start + (step * n) - (qtrStep * 3)) * innerRadius;
				dy = registration.y - Math.sin(start + (step * n) - (qtrStep * 3)) * innerRadius;
				graphics.lineTo(dx, dy);
				dx = registration.x + Math.cos(start + (step * n) - (qtrStep * 2)) * innerRadius;
				dy = registration.y - Math.sin(start + (step * n) - (qtrStep * 2)) * innerRadius;
				graphics.lineTo(dx, dy);
				dx = registration.x + Math.cos(start + (step * n) - qtrStep) * outerRadius;
				dy = registration.y - Math.sin(start + (step * n) - qtrStep) * outerRadius;
				graphics.lineTo(dx, dy);
				dx = registration.x + Math.cos(start + (step * n)) * outerRadius;
				dy = registration.y - Math.sin(start + (step * n)) * outerRadius;
				graphics.lineTo(dx, dy);
			}

			if (holeSides > 2)
			{
				step = (Math.PI * 2) / holeSides;
				graphics.moveTo(registration.x + (Math.cos(start) * holeRadius), registration.y - (Math.sin(start) * holeRadius));
				for (n = 1; n <= holeSides; ++n)
				{
					dx = registration.x + Math.cos(start + (step * n)) * holeRadius;
					dy = registration.y - Math.sin(start + (step * n)) * holeRadius;
					graphics.lineTo(dx, dy);
				}
			}
		}

	}
}
