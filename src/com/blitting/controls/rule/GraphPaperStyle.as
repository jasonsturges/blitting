//  
//  com.blitting.rule.GraphPaperStyle
//
//  Created by Jason Sturges.
//
package com.blitting.controls.rule
{

	public class GraphPaperStyle
	{

		//------------------------------
		//  presentation
		//------------------------------

		// background

		/** backgroundFillAlpha */
		public var backgroundFillAlpha:Number = 1;

		/** backgroundFillColor */
		public var backgroundFillColor:uint = 0xfbfbd9; //0x234283;


		// major grid lines

		/** majorGridSize */
		public var majorGridSize:Number = 100;

		/** majorGridStrokeAlpha */
		public var majorGridStrokeAlpha:Number = 0.5;

		/** majorGridStrokeColor */
		public var majorGridStrokeColor:uint = 0x40a040; //0xbfe0ec;

		/** majorGridStrokeWeight */
		public var majorGridStrokeWeight:Number = 2;


		// minor grid lines

		/** minorGridSize */
		public var minorGridSize:Number = 10; //50;

		/** minorGridStrokeAlpha */
		public var minorGridStrokeAlpha:Number = 0.1;

		/** minorGridStrokeColor */
		public var minorGridStrokeColor:uint = 0x60e080; //0xbfe0ec;

		/** minorGridStrokeWeight */
		public var minorGridStrokeWeight:Number = 1;


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function GraphPaperStyle(majorGridSize:Number=100,
										minorGridSize:Number=50,
										backgroundFillAlpha:Number=1,
										backgroundFillColor:uint=0x234283,
										majorGridStrokeAlpha:Number=0.5,
										majorGridStrokeColor:uint=0xbfe0ec,
										majorGridStrokeWeight:Number=2,
										minorGridStrokeAlpha:Number=0.1,
										minorGridStrokeColor:uint=0xbfe0ec,
										minorGridStrokeWeight:Number=1)
		{
			// background
			this.backgroundFillAlpha = backgroundFillAlpha;
			this.backgroundFillColor = backgroundFillColor;

			// major grid
			this.majorGridSize = majorGridSize;
			this.majorGridStrokeAlpha = majorGridStrokeAlpha;
			this.majorGridStrokeColor = majorGridStrokeColor;
			this.majorGridStrokeWeight = majorGridStrokeWeight;

			// minor grid
			this.minorGridSize = minorGridSize;
			this.minorGridStrokeAlpha = minorGridStrokeAlpha;
			this.minorGridStrokeColor = minorGridStrokeColor;
			this.minorGridStrokeWeight = minorGridStrokeWeight;
		}

	}
}
