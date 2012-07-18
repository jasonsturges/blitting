//
//  com.blitting.controls.visualization.indicators.DialNeedle
//
//  Created by Jason Sturges, QA Graphics
//
package com.blitting.controls.visualization.indicators
{
	import flash.display.CapsStyle;
	import flash.display.Graphics;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.geom.Point;

	public class DialNeedle extends AbstractNeedle
	{

		//------------------------------
		//  model
		//------------------------------


		//------------------------------
		//  lifecycle
		//------------------------------

		public function DialNeedle()
		{
			super();
		}

		override public function render():void
		{
			super.render();

			var g:Graphics = graphics;
			g.clear();

			g.lineStyle(needleStrokeWeight, needleStrokeColor, needleStrokeAlpha, true, LineScaleMode.NORMAL, CapsStyle.SQUARE, JointStyle.MITER);
			g.beginFill(needleFillColor, needleFillAlpha);

			var base:Number = needleBaseWidth * 0.5;
			var basePoint1:Point = new Point(0, -base);
			var basePoint2:Point = new Point(0, base);

			var tip:Number = needleTipWidth * 0.5;
			var tipPoint1:Point = new Point(needleRadius, -tip);
			var tipPoint2:Point = new Point(needleRadius, tip);

			g.moveTo(basePoint1.x, basePoint1.y);
			g.lineTo(tipPoint1.x, tipPoint1.y);

			g.curveTo(
				(0 + (tipPoint1.x + needleTipWidth * 0.5)),
				tipPoint1.y,
				(0 + (tipPoint1.x + needleTipWidth * 0.5)),
				(tipPoint1.y + needleTipWidth * 0.5)
				);

			g.curveTo(
				(0 + (tipPoint2.x + needleTipWidth * 0.5)),
				tipPoint2.y,
				tipPoint2.x,
				tipPoint2.y
				);

			g.lineTo(basePoint2.x, basePoint2.y);

			g.curveTo(
				(basePoint2.x - needleBaseWidth * 0.5),
				basePoint2.y,
				(basePoint2.x - needleBaseWidth * 0.5),
				(basePoint2.y - needleBaseWidth * 0.5)
				);

			g.curveTo(
				(basePoint1.x - needleBaseWidth * 0.5),
				basePoint1.y,
				basePoint1.x,
				basePoint1.y
				);

			g.endFill();
		}

	}
}
