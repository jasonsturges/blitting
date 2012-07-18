//
//  com.blitting.controls.visualization.indicators.AbstractNeedle
//
//  Created by Jason Sturges, QA Graphics
//
package com.blitting.controls.visualization.indicators
{
	import com.blitting.controls.AbstractControl;

	public class AbstractNeedle extends AbstractControl
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * needleBaseWidth
		 */
		private var _needleBaseWidth:Number = 4;

		[Inspectable]
		public function get needleBaseWidth():Number
		{
			return _needleBaseWidth;
		}

		public function set needleBaseWidth(value:Number):void
		{
			if (_needleBaseWidth == value)
				return;

			_needleBaseWidth = value;
			invalidate();
		}

		/**
		 * needleFillAlpha
		 */
		private var _needleFillAlpha:Number = 1;

		[Inspectable]
		public function get needleFillAlpha():Number
		{
			return _needleFillAlpha;
		}

		public function set needleFillAlpha(value:Number):void
		{
			if (_needleFillAlpha == value)
				return;

			_needleFillAlpha = value;
			invalidate();
		}

		/**
		 * needleFillColor
		 */
		private var _needleFillColor:uint = 0x313131;

		[Inspectable]
		public function get needleFillColor():uint
		{
			return _needleFillColor;
		}

		public function set needleFillColor(value:uint):void
		{
			if (_needleFillColor == value)
				return;

			_needleFillColor = value;
			invalidate();
		}

		/**
		 * needleRadius
		 */
		private var _needleRadius:Number = 50;

		[Inspectable]
		public function get needleRadius():Number
		{
			return _needleRadius;
		}

		public function set needleRadius(value:Number):void
		{
			if (_needleRadius == value)
				return;

			_needleRadius = value;
			invalidate();
		}

		/**
		 * needleStrokeAlpha
		 */
		private var _needleStrokeAlpha:Number = 1;

		[Inspectable]
		public function get needleStrokeAlpha():Number
		{
			return _needleStrokeAlpha;
		}

		public function set needleStrokeAlpha(value:Number):void
		{
			if (_needleStrokeAlpha == value)
				return;

			_needleStrokeAlpha = value;
			invalidate();
		}

		/**
		 * needleStrokeColor
		 */
		private var _needleStrokeColor:uint = 0x0;

		[Inspectable]
		public function get needleStrokeColor():uint
		{
			return _needleStrokeColor;
		}

		public function set needleStrokeColor(value:uint):void
		{
			if (_needleStrokeColor == value)
				return;

			_needleStrokeColor = value;
			invalidate();
		}

		/**
		 * needleStrokeWeight
		 */
		private var _needleStrokeWeight:Number = 1;

		[Inspectable]
		public function get needleStrokeWeight():Number
		{
			return _needleStrokeWeight;
		}

		public function set needleStrokeWeight(value:Number):void
		{
			if (_needleStrokeWeight == value)
				return;

			_needleStrokeWeight = value;
			invalidate();
		}

		/**
		 * needleTipWidth
		 */
		private var _needleTipWidth:Number = 1;

		[Inspectable]
		public function get needleTipWidth():Number
		{
			return _needleTipWidth;
		}

		public function set needleTipWidth(value:Number):void
		{
			if (_needleTipWidth == value)
				return;

			_needleTipWidth = value;
			invalidate();
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function AbstractNeedle()
		{
			super();
		}

	}
}
