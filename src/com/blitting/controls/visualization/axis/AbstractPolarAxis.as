//
//  com.blitting.controls.visualization.axis.AbstractPolarAxis
//
//  Created by Jason Sturges.
//
package com.blitting.controls.visualization.axis
{
	import com.blitting.controls.AbstractControl;

	public class AbstractPolarAxis extends AbstractAxis
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * radius
		 */
		private var _radius:Number = 50;

		[Inspectable]
		public function get radius():Number
		{
			return _radius;
		}

		public function set radius(value:Number):void
		{
			if (_radius == value)
				return;

			_radius = value;
			invalidate();
		}

		/**
		 * spanAngle
		 */
		private var _spanAngle:Number = 260;

		[Inspectable]
		public function get spanAngle():Number
		{
			return _spanAngle;
		}

		public function set spanAngle(value:Number):void
		{
			if (_spanAngle == value)
				return;

			_spanAngle = value;
			invalidate();
		}

		/**
		 * startAngle
		 */
		private var _startAngle:Number = 140;

		[Inspectable]
		public function get startAngle():Number
		{
			return _startAngle;
		}

		public function set startAngle(value:Number):void
		{
			if (_startAngle == value)
				return;

			_startAngle = value;
			invalidate();
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function AbstractPolarAxis()
		{
			super();
		}

	}
}
