//
//  com.blitting.controls.NumericDial
//
//  Created by Jason Sturges.
//
package com.blitting.controls
{
	import com.blitting.math.Geometry;
	import com.blitting.text.TextFieldFactory;

	import flash.display.CapsStyle;
	import flash.display.Graphics;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class NumericDial extends Knob
	{

		//------------------------------
		//  model
		//------------------------------

		public var axisAlpha:Number = 1.0;

		public var axisColor:uint = 0x0;

		public var axisTextFormat:TextFormat;

		public var axisWeight:Number = 0.025;

		public var baseAtZero:Boolean = true;

		public var maximum:Number = 100;

		public var minimum:Number = 0;

		public var minorTickAlpha:Number = 1.0;

		public var minorTickColor:uint = 0x0;

		public var minorTickCount:uint = 4;

		public var minorTickLength:Number = 0.05;

		public var minorTickWeight:Number = 1;

		public var radius:Number = 100;

		public var showAxis:Boolean = true;

		public var showAxisLabels:Boolean = true;

		public var spanAngle:Number = 360;

		public var startAngle:Number = 0;

		public var tickAlpha:Number = 1.0;

		public var tickColor:uint = 0x0;

		public var tickCount:uint = 5;

		public var tickLength:Number = .1;

		public var tickWeight:Number = 2;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function NumericDial()
		{
			super();
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);
		}

		override protected function resizeHandler(event:Event):void
		{
			super.resizeHandler(event);

			while (numChildren > 0)
				removeChildAt(0);

			drawAxis();
			drawAxisLabels();
		}

		protected function drawAxisLabels():void
		{
			if (!showAxisLabels)
				return;

			var interval:Number = spanAngle / (tickCount - 1);
			var labelInterval:Number = (maximum - minimum) / (tickCount - 1);

			for (var i:uint = 0, angle:Number = startAngle; i < tickCount; i++, angle += interval)
			{
				// if first and last intervals overlap, show only last
				if (spanAngle >= 360 && i == 0)
					continue;

				var tf:TextField = TextFieldFactory.construct((this.minimum + (labelInterval * i)).toFixed(2), axisTextFormat);
				tf.x = Math.cos(Geometry.deg2rad(angle)) * radius;
				tf.y = Math.sin(Geometry.deg2rad(angle)) * radius;
				tf.rotation = angle + 180;
				tf.mouseEnabled = false;

				addChild(tf);
			}
		}

		protected function drawAxis():void
		{
			var g:Graphics = graphics;
			g.clear();

			if (!showAxis)
				return;

			g.lineStyle(radius * axisWeight, axisColor, axisAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
			g.beginFill(0x123456, 0.4);
			g.drawCircle(0, 0, radius);
			g.endFill();

			var interval:Number = spanAngle / (tickCount - 1);

			for (var i:uint = 0, angle:Number = startAngle; i < tickCount; i++, angle += interval)
			{
				g.lineStyle(tickWeight, tickColor, tickAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);

				g.moveTo(Math.cos(Geometry.deg2rad(angle)) * radius,
						 Math.sin(Geometry.deg2rad(angle)) * radius);
				g.lineTo(Math.cos(Geometry.deg2rad(angle)) * (radius - (radius * tickLength)),
						 Math.sin(Geometry.deg2rad(angle)) * (radius - (radius * tickLength)));

				var minorInterval:Number = interval / (minorTickCount + 1);

				g.lineStyle(minorTickWeight, minorTickColor, minorTickAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);

				for (var j:uint = 0, minorAngle:Number = angle + minorInterval; j < minorTickCount && i != tickCount - 1; j++, minorAngle += minorInterval)
				{
					g.moveTo(Math.cos(Geometry.deg2rad(minorAngle)) * radius,
							 Math.sin(Geometry.deg2rad(minorAngle)) * radius);
					g.lineTo(Math.cos(Geometry.deg2rad(minorAngle)) * (radius - (radius * minorTickLength)),
							 Math.sin(Geometry.deg2rad(minorAngle)) * (radius - (radius * minorTickLength)));
				}
			}
		}

	}
}
