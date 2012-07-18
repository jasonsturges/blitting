//
//  com.blitting.controls.visualization.axis.AbstractAxis
//
//  Created by Jason Sturges.
//
package com.blitting.controls.visualization.axis
{
	import com.blitting.controls.AbstractControl;

	public class AbstractAxis extends AbstractControl implements IAxis
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * autoAdjustMinMax
		 */
		private var _autoAdjustMinMax:Boolean = true;

		[Inspectable(defaltValue = "true")]
		public function get autoAdjustMinMax():Boolean
		{
			return _autoAdjustMinMax;
		}

		public function set autoAdjustMinMax(value:Boolean):void
		{
			if (_autoAdjustMinMax == value)
				return;

			_autoAdjustMinMax = value;
			invalidate();
		}

		/**
		 * axisAlpha
		 */
		private var _axisAlpha:Number = 1;

		[Inspectable]
		public function get axisAlpha():Number
		{
			return _axisAlpha;
		}

		public function set axisAlpha(value:Number):void
		{
			if (_axisAlpha == value)
				return;

			_axisAlpha = value;
			invalidate();
		}

		/**
		 * axisColor
		 */
		private var _axisColor:uint = 0x0;

		[Inspectable]
		public function get axisColor():uint
		{
			return _axisColor;
		}

		public function set axisColor(value:uint):void
		{
			if (_axisColor == value)
				return;

			_axisColor = value;
			invalidate();
		}

		/**
		 * axisLabelFontAlpha
		 */
		private var _axisLabelFontAlpha:Number = 1;

		[Inspectable]
		public function get axisLabelFontAlpha():Number
		{
			return _axisLabelFontAlpha;
		}

		public function set axisLabelFontAlpha(value:Number):void
		{
			if (_axisLabelFontAlpha == value)
				return;

			_axisLabelFontAlpha = value;
			invalidate();
		}

		/**
		 * axisLabelFontColor
		 */
		private var _axisLabelFontColor:uint = 0x0;

		[Inspectable]
		public function get axisLabelFontColor():uint
		{
			return _axisLabelFontColor;
		}

		public function set axisLabelFontColor(value:uint):void
		{
			if (_axisLabelFontColor == value)
				return;

			_axisLabelFontColor = value;
			invalidate();
		}

		/**
		 * axisLabelFontName
		 */
		private var _axisLabelFontName:String = "Calibri";

		[Inspectable(defaultValue = "Calibri", type = "Font Name")]
		public function get axisLabelFontName():String
		{
			return _axisLabelFontName;
		}

		public function set axisLabelFontName(value:String):void
		{
			if (_axisLabelFontName == value)
				return;

			_axisLabelFontName = value;
			invalidate();
		}

		/**
		 * axisLabelFontSize
		 */
		private var _axisLabelFontSize:Number = 8;

		[Inspectable]
		public function get axisLabelFontSize():Number
		{
			return _axisLabelFontSize;
		}

		public function set axisLabelFontSize(value:Number):void
		{
			if (_axisLabelFontSize == value)
				return;

			_axisLabelFontSize = value;
			invalidate();
		}

		/**
		 * axisLabelGap
		 */
		private var _axisLabelGap:Number = 0.3;

		[Inspectable]
		public function get axisLabelGap():Number
		{
			return _axisLabelGap;
		}

		public function set axisLabelGap(value:Number):void
		{
			if (_axisLabelGap == value)
				return;

			_axisLabelGap = value;
			invalidate();
		}

		/**
		 * axisWeight
		 */
		private var _axisWeight:Number = 2;

		[Inspectable]
		public function get axisWeight():Number
		{
			return _axisWeight;
		}

		public function set axisWeight(value:Number):void
		{
			if (_axisWeight == value)
				return;

			_axisWeight = value;
			invalidate();
		}

		/**
		 * baseAtZero
		 */
		private var _baseAtZero:Boolean = false;

		[Inspectable]
		public function get baseAtZero():Boolean
		{
			return _baseAtZero;
		}

		public function set baseAtZero(value:Boolean):void
		{
			if (_baseAtZero == value)
				return;

			_baseAtZero = value;
			invalidate();
		}

		/**
		 * maximum
		 */
		private var _maximum:Number = 100;

		[Inspectable]
		public function get maximum():Number
		{
			return _maximum;
		}

		public function set maximum(value:Number):void
		{
			if (_maximum == value)
				return;

			_maximum = value;
			invalidate();
		}

		/**
		 * minimum
		 */
		private var _minimum:Number = 0;

		[Inspectable]
		public function get minimum():Number
		{
			return _minimum;
		}

		public function set minimum(value:Number):void
		{
			if (_minimum == value)
				return;

			_minimum = value;
			invalidate();
		}

		/**
		 * minorTickAlpha
		 */
		private var _minorTickAlpha:Number = 1;

		[Inspectable]
		public function get minorTickAlpha():Number
		{
			return _minorTickAlpha;
		}

		public function set minorTickAlpha(value:Number):void
		{
			if (_minorTickAlpha == value)
				return;

			_minorTickAlpha = value;
			invalidate();
		}

		/**
		 * minorTickColor
		 */
		private var _minorTickColor:uint = 0x0;

		[Inspectable]
		public function get minorTickColor():uint
		{
			return _minorTickColor;
		}

		public function set minorTickColor(value:uint):void
		{
			if (_minorTickColor == value)
				return;

			_minorTickColor = value;
			invalidate();
		}

		/**
		 * minorTickCount
		 */
		private var _minorTickCount:uint = 4;

		[Inspectable]
		public function get minorTickCount():uint
		{
			return _minorTickCount;
		}

		public function set minorTickCount(value:uint):void
		{
			if (_minorTickCount == value)
				return;

			_minorTickCount = value;
			invalidate();
		}

		/**
		 * minorTickLength
		 */
		private var _minorTickLength:Number = 0.05;

		[Inspectable]
		public function get minorTickLength():Number
		{
			return _minorTickLength;
		}

		public function set minorTickLength(value:Number):void
		{
			if (_minorTickLength == value)
				return;

			_minorTickLength = value;
			invalidate();
		}

		/**
		 * minorTickWeight
		 */
		private var _minorTickWeight:Number = 1;

		[Inspectable]
		public function get minorTickWeight():Number
		{
			return _minorTickWeight;
		}

		public function set minorTickWeight(value:Number):void
		{
			if (_minorTickWeight == value)
				return;

			_minorTickWeight = value;
			invalidate();
		}

		/**
		 * precision
		 */
		private var _precision:uint = 0;

		[Inspectable]
		public function get precision():uint
		{
			return _precision;
		}

		public function set precision(value:uint):void
		{
			if (_precision == value)
				return;

			_precision = value;
			invalidate();
		}

		/**
		 * showAxis
		 */
		private var _showAxis:Boolean = true;

		[Inspectable]
		public function get showAxis():Boolean
		{
			return _showAxis;
		}

		public function set showAxis(value:Boolean):void
		{
			if (_showAxis == value)
				return;

			_showAxis = value;
			invalidate();
		}

		/**
		 * showAxisLabels
		 */
		private var _showAxisLabels:Boolean = true;

		[Inspectable]
		public function get showAxisLabels():Boolean
		{
			return _showAxisLabels;
		}

		public function set showAxisLabels(value:Boolean):void
		{
			if (_showAxisLabels == value)
				return;

			_showAxisLabels = value;
			invalidate();
		}

		/**
		 * tickAlpha
		 */
		private var _tickAlpha:Number = 1;

		[Inspectable]
		public function get tickAlpha():Number
		{
			return _tickAlpha;
		}

		public function set tickAlpha(value:Number):void
		{
			if (_tickAlpha == value)
				return;

			_tickAlpha = value;
			invalidate();
		}

		/**
		 * tickColor
		 */
		private var _tickColor:uint = 0x0;

		[Inspectable]
		public function get tickColor():uint
		{
			return _tickColor;
		}

		public function set tickColor(value:uint):void
		{
			if (_tickColor == value)
				return;

			_tickColor = value;
			invalidate();
		}

		/**
		 * tickCount
		 */
		private var _tickCount:uint = 5;

		[Inspectable]
		public function get tickCount():uint
		{
			return _tickCount;
		}

		public function set tickCount(value:uint):void
		{
			if (_tickCount == value)
				return;

			_tickCount = value;
			invalidate();
		}

		/**
		 * tickLength
		 */
		private var _tickLength:Number = 0.1;

		[Inspectable]
		public function get tickLength():Number
		{
			return _tickLength;
		}

		public function set tickLength(value:Number):void
		{
			if (_tickLength == value)
				return;

			_tickLength = value;
			invalidate();
		}

		/**
		 * tickWeight
		 */
		private var _tickWeight:Number = 2;

		[Inspectable]
		public function get tickWeight():Number
		{
			return _tickWeight;
		}

		public function set tickWeight(value:Number):void
		{
			if (_tickWeight == value)
				return;

			_tickWeight = value;
			invalidate();
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function AbstractAxis()
		{
			super();
		}

		override public function render():void
		{
			super.render();

			if (minimum == maximum)
				return;

			if (showAxis)
			{
				renderTickMarks();
				renderAxis();
			}

			if (showAxisLabels)
			{
				renderAxisLabels();
			}
		}

		public function renderAxis():void
		{
		}

		public function renderAxisLabels():void
		{
		}

		public function renderTickMarks():void
		{
		}

	}
}
