//
//  com.blitting.model.NumericalRange
//
//  Created by Jason Sturges.
//
package com.blitting.model
{
	import com.blitting.math.Numeric;

	import flash.net.registerClassAlias;

	[RemoteClass(alias = "com.blitting.model.NumericalRange")]
	[Bindable]
	public class NumericalRange
	{

		//------------------------------
		//  model
		//------------------------------

		/** maximum */
		public var maximum:Number = Number.MAX_VALUE;

		/** minimum */
		public var minimum:Number = -Number.MAX_VALUE;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor.
		 */
		public function NumericalRange(minimum:Number=NaN, maximum:Number=NaN)
		{
			if (!isNaN(minimum))
				this.minimum = minimum;

			if (!isNaN(maximum))
				this.maximum = maximum;
		}

		/**
		 * Register the class alias for remoting.
		 */
		public static function registerClass():void
		{
			flash.net.registerClassAlias("com.blitting.model.NumericalRange", NumericalRange);
		}

		/**
		 * Round range for presentation.
		 */
		public static function calculate(minimum:Number, maximum:Number, ticks:uint=10):NumericalRange
		{
			var range:NumericalRange = new NumericalRange(0, 100);
			var delta:Number = round(maximum - minimum, false);
			var tickSpacing:Number = round(delta / (ticks - 1), true);

			range.minimum = Math.floor(minimum / tickSpacing) * tickSpacing;
			range.maximum = Math.ceil(maximum / tickSpacing) * tickSpacing;

			return range;
		}

		protected static function round(value:Number, round:Boolean):Number
		{
			var exponent:Number;
			var fraction:Number;
			var roundedFraction:Number;

			exponent = Math.floor(Numeric.log10(value));
			fraction = value / Math.pow(10, exponent);

			if (round)
			{
				if (fraction < 1.5)
					roundedFraction = 1;
				else if (fraction < 3)
					roundedFraction = 2;
				else if (fraction < 7)
					roundedFraction = 5;
				else
					roundedFraction = 10;
			}
			else
			{
				if (fraction <= 1)
					roundedFraction = 1;
				else if (fraction <= 2)
					roundedFraction = 2;
				else if (fraction <= 5)
					roundedFraction = 5;
				else
					roundedFraction = 10;
			}

			return roundedFraction * Math.pow(10, exponent);
		}

	}
}
