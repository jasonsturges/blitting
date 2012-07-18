//
//  com.blitting.controls.visualization.axis.PolarAxis
//
//  Created by Jason Sturges.
//
package com.blitting.controls.visualization.axis
{
	import com.blitting.math.Geometry;

	import flash.display.CapsStyle;
	import flash.display.Graphics;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.geom.Point;
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextLineMetrics;

	import nl.funkymonkey.drawing.DrawingShapes;

	public class PolarAxis extends AbstractPolarAxis
	{

		//------------------------------
		//  model
		//------------------------------


		//------------------------------
		//  lifecycle
		//------------------------------

		public function PolarAxis()
		{
			super();
		}

		override public function render():void
		{
			var g:Graphics = graphics;
			g.clear();

			super.render();
		}

		override public function renderAxis():void
		{
			super.renderAxis();

			var center:Point = new Point(bounds.width * 0.5, bounds.height * 0.5);
			var startPoint:Point = Geometry.pointOnCircleFromPoint(center, startAngle, radius);

			var g:Graphics = graphics;
			g.lineStyle(axisWeight, axisColor, axisAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);

			g.moveTo(startPoint.x, startPoint.y);
			DrawingShapes.drawArc(g, startPoint.x, startPoint.y, radius, -spanAngle, -startAngle);
		}

		override public function renderAxisLabels():void
		{
			super.renderAxisLabels();

			while (numChildren > 0)
				removeChildAt(0);

			var interval:Number = spanAngle / (tickCount - 1);
			var labelInterval:Number = (maximum - minimum) / (tickCount - 1);
			var center:Point = new Point(bounds.width * 0.5, bounds.height * 0.5);

			for (var i:uint = 0, tickAngle:Number = startAngle; i < tickCount; i++, tickAngle += interval)
			{
				var tf:TextField = new TextField();
				tf.defaultTextFormat = new TextFormat(axisLabelFontName, axisLabelFontSize, axisLabelFontColor);
				tf.autoSize = TextFieldAutoSize.LEFT;
				tf.antiAliasType = AntiAliasType.ADVANCED;
				tf.selectable = false;
				tf.mouseEnabled = false;

				tf.text = (minimum + (labelInterval * i)).toFixed(precision);
				if (tf.text == "0.")
					tf.text = "0";
				addChild(tf);

				var tlm:TextLineMetrics = tf.getLineMetrics(0);
				var innerPoint:Point = Geometry.pointOnCircleFromPoint(center, tickAngle, radius - (radius * axisLabelGap));
				tf.x = innerPoint.x - 2;
				tf.y = innerPoint.y - 4;
				tf.x -= (tlm.width * 0.5);
				tf.y -= (tlm.height * 0.5);

				tf.alpha = axisLabelFontAlpha;
			}
		}

		override public function renderTickMarks():void
		{
			super.renderTickMarks();

			var interval:Number = spanAngle / (tickCount - 1);
			var center:Point = new Point(bounds.width * 0.5, bounds.height * 0.5);
			var innerPoint:Point;
			var outerPoint:Point;
			var g:Graphics = graphics;

			for (var i:uint = 0, tickAngle:Number = startAngle; i < tickCount; i++, tickAngle += interval)
			{
				// major tick marks
				g.lineStyle(tickWeight, tickColor, tickAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);

				innerPoint = Geometry.pointOnCircleFromPoint(center, tickAngle, radius);
				outerPoint = Geometry.pointOnCircleFromPoint(center, tickAngle, radius - (radius * tickLength));
				g.moveTo(innerPoint.x, innerPoint.y);
				g.lineTo(outerPoint.x, outerPoint.y);

				// minor tick marks
				g.lineStyle(minorTickWeight, minorTickColor, minorTickAlpha, true, "normal", CapsStyle.SQUARE, JointStyle.MITER);
				var minorInterval:Number = interval / (minorTickCount + 1);
				for (var j:uint = 0, minorTickAngle:Number = tickAngle + minorInterval; j < minorTickCount && i != tickCount - 1; j++, minorTickAngle += minorInterval)
				{
					innerPoint = Geometry.pointOnCircleFromPoint(center, minorTickAngle, radius);
					outerPoint = Geometry.pointOnCircleFromPoint(center, minorTickAngle, radius - (radius * minorTickLength));
					g.moveTo(innerPoint.x, innerPoint.y);
					g.lineTo(outerPoint.x, outerPoint.y);
				}
			}
		}

	}
}
