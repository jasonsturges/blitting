//
//  com.blitting.rule.GraphPaper
//
//  Created by Jason Sturges.
//
package com.blitting.controls.rule
{
	import flash.display.Graphics;
	import flash.display.Sprite;

	[Describable]
	public class GraphPaper extends Sprite
	{

		//------------------------------
		//  presentation
		//------------------------------

		// background

		/** backgroundFillAlpha */
		public var backgroundFillAlpha:Number = 1;

		/** backgroundFillColor */
		public var backgroundFillColor:uint = 0x234283;


		// major grid lines

		/** majorGridSize */
		public var majorGridSize:Number = 100;

		/** majorGridStrokeAlpha */
		public var majorGridStrokeAlpha:Number = 0.5;

		/** majorGridStrokeColor */
		public var majorGridStrokeColor:uint = 0xbfe0ec;

		/** majorGridStrokeWeight */
		public var majorGridStrokeWeight:Number = 2;


		// minor grid lines

		/** minorGridSize */
		public var minorGridSize:Number = 50;

		/** minorGridStrokeAlpha */
		public var minorGridStrokeAlpha:Number = 0.1;

		/** minorGridStrokeColor */
		public var minorGridStrokeColor:uint = 0xbfe0ec;

		/** minorGridStrokeWeight */
		public var minorGridStrokeWeight:Number = 1;


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function GraphPaper()
		{
			super();
		}

		/** render */
		public function render(w:Number, h:Number):void
		{
			var dx:Number = 0.0;
			var dy:Number = 0.0;

			var g:Graphics = graphics;
			g.clear();

			// background fill
			g.lineStyle(0.5, 0x000000, 0.2, true);
			g.beginFill(backgroundFillColor, backgroundFillAlpha);
			g.drawRect(0, 0, w, h);
			g.endFill();

			// major grid lines
			g.lineStyle(majorGridStrokeWeight, majorGridStrokeColor, majorGridStrokeAlpha, true);

			dx = 0.0;
			while (dx < w)
			{
				g.moveTo(dx, 0);
				g.lineTo(dx, h);
				dx += majorGridSize;
			}

			dy = 0.0;
			while (dy < h)
			{
				g.moveTo(0, dy);
				g.lineTo(w, dy);
				dy += majorGridSize;
			}

			// minor grid lines
			g.lineStyle(minorGridStrokeWeight, minorGridStrokeColor, minorGridStrokeAlpha, true);

			dx = 0.0;
			while (dx < w)
			{
				g.moveTo(dx, 0);
				g.lineTo(dx, h);
				dx += minorGridSize;
			}

			dy = 0.0;
			while (dy < h)
			{
				g.moveTo(0, dy);
				g.lineTo(w, dy);
				dy += minorGridSize;
			}
		}

		/**
		 * Setter for GraphPaperStyle composite structure
		 * of display settings for the graph paper.
		 */
		public function setGraphPaperStyle(graphPaperStyle:GraphPaperStyle):void
		{
			// background
			backgroundFillAlpha = graphPaperStyle.backgroundFillAlpha;
			backgroundFillColor = graphPaperStyle.backgroundFillColor;

			// major grid
			majorGridSize = graphPaperStyle.majorGridSize;
			majorGridStrokeAlpha = graphPaperStyle.majorGridStrokeAlpha;
			majorGridStrokeColor = graphPaperStyle.majorGridStrokeColor;
			majorGridStrokeWeight = graphPaperStyle.majorGridStrokeWeight;

			// minor grid
			minorGridSize = graphPaperStyle.minorGridSize;
			minorGridStrokeAlpha = graphPaperStyle.minorGridStrokeAlpha;
			minorGridStrokeColor = graphPaperStyle.minorGridStrokeColor;
			minorGridStrokeWeight = graphPaperStyle.minorGridStrokeWeight;
		}

	}
}
