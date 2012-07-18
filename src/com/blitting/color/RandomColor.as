//
//  com.blitting.color.RandomColor
//
//  Created by Jason Sturges.
//
package com.blitting.color
{

	/** Random color generation. */
	public class RandomColor
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Random color of any RGB value. */
		public static function any():uint
		{
			return (Math.floor(Math.random() * 255) << 16 | Math.floor(Math.random() * 255) << 8 | Math.floor(Math.random() * 255));
		}

		//------------------------------
		//  paired
		//------------------------------

		/**
		 * Random blue.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function blue():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c);
		}

		/**
		 * Random brown.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function brown():uint
		{
			var f:Number = Math.random();

			return (Math.floor(0x8b * f) << 16 | Math.floor(0x45 * f) << 8 | Math.floor(0x13 * f));
		}

		/**
		 * Random charcoal.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function charcoal():uint
		{
			var f:Number = Math.random();

			return (Math.floor(0xd2 * f) << 16 | Math.floor(0xb4 * f) << 8 | Math.floor(0x8c * f));
		}

		/**
		 * Random cyan.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function cyan():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 8 | c);
		}

		/**
		 * Random grayscale.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function grayscale():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 16 | c << 8 | c);
		}

		/**
		 * Random green.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function green():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 8);
		}

		/**
		 * Random red.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function red():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 16);
		}

		/**
		 * Random olive.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function olive():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 16 | c << 8);
		}

		/**
		 * Random pastel.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function pastel():uint
		{
			return (Math.floor(Math.random() * 0x74) + 0x8b << 16 |
				Math.floor(Math.random() * 0x7a) + 0x2a << 8 |
				Math.floor(Math.random() * 0xa1) + 0x13);
		}

		/**
		 * Random purple.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function purple():uint
		{
			var c:uint = Math.floor(Math.random() * 255);
			return (c << 16 | c);
		}

		/**
		 * Random yellow.
		 *
		 * @return 24-bit RGB color as unsigned int.
		 */
		public static function yellow():uint
		{
			var c:uint = Math.floor(Math.random() * 64) + 191;
			return (c << 16 | c << 8);
		}

	}
}
