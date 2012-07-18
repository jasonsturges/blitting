//
//  com.blitting.color.Color
//
//  Created by Jason Sturges.
//
package com.blitting.color
{

	/**
	 * Color structure.
	 */
	public class Color
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * 8-bit red
		 */
		public var red:uint;

		/**
		 * 8-bit green
		 */
		public var green:uint;

		/**
		 * 8-bit blue
		 */
		public var blue:uint;

		/**
		 * 8-bit alpha
		 */
		public var alpha:uint;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor, initializing color to black with full alpha.
		 *
		 * @param red    8-bit red.
		 * @param green  8-bit green.
		 * @param blue   8-bit blue.
		 * @param alpha  8-bit alpha.
		 *
		 */
		public function Color(red:uint=0, green:uint=0, blue:uint=0, alpha:uint=1):void
		{
			this.red = red;
			this.green = green;
			this.blue = blue;
			this.alpha = alpha;
		}

		public function toRgb():uint
		{
			return red << 16 | green << 8 | blue;
		}

		public function toArgb():uint
		{
			return alpha << 24 | red << 16 | green << 8 | blue;
		}

		public function toRgba():uint
		{
			return red << 24 | green << 16 | blue << 8 | alpha;
		}


		//------------------------------
		//  (A)RGB to int
		//------------------------------

		/**
		 * Get 32-bit ARGB color as integer (hex).
		 *
		 * @param alpha  8-bit Alpha.
		 * @param red    8-bit Red.
		 * @param green  8-bit Green.
		 * @param blue   8-bit Blue.
		 * @return       32-bit Color unsigned integer.
		 */
		public static function getColor32(alpha:uint, red:uint, green:uint, blue:uint):uint
		{
			return alpha << 24 | red << 16 | green << 8 | blue;
		}

		/**
		 * Get 32-bit RGBA color as integer (hex).
		 *
		 * In ActionScript, ARGB is typically used.
		 * Use getColor32 for ARGB value.
		 *
		 * This function is provided for compatibility
		 *
		 * @param red    8-bit Red.
		 * @param green  8-bit Green.
		 * @param blue   8-bit Blue.
		 * @param alpha  8-bit Alpha.
		 * @return       32-bit Color unsigned integer.
		 */
		public static function getColor32RGBA(red:uint, green:uint, blue:uint, alpha:uint):uint
		{
			return red << 24 | green << 16 | blue << 8 | alpha;
		}

		/**
		 * Get 24-bit RGB color as integer (hex).
		 *
		 * @param red    8-bit Red.
		 * @param green  8-bit Green.
		 * @param blue   8-bit Blue.
		 * @return       32-bit Color unsigned integer.
		 */
		public static function getColor24(red:uint, green:uint, blue:uint):uint
		{
			return red << 16 | green << 8 | blue;
		}


		//------------------------------
		//  int to (A)RGB
		//------------------------------

		/**
		 * Get ARGB values from 32-bit integer (hex).
		 *
		 * @param color  32-bit ARGB color as unsigned integer.
		 * @return       Color instance of 8-bit alpha, red, green, blue.
		 */
		public static function getARGB(color:uint):Color
		{
			return new Color(color >>> 16 & 0xff, // red
							 color >>> 8 & 0xff, // green
							 color & 0xff, // blue
							 color >>> 24 // alpha
							 );
		}

		/**
		 * Get RGBA values from 32-bit integer (hex).
		 *
		 * In ActionScript, ARGB is typically used.
		 * Use getARGB for ARGB value.
		 *
		 * This function is provided for compatibility.
		 *
		 * @param color  32-bit ARGB color as unsigned integer.
		 * @return       Color instance of 8-bit red, green, blue, alpha.
		 */
		public static function getRGBA(color:uint):Color
		{
			return new Color(color >>> 24, // red
							 color >>> 16 & 0xff, // green
							 color >>> 8 & 0xf, // blue
							 color & 0xff // alpha
							 );
		}

		/**
		 * Get RGB values from 24-bit integer (hex).
		 *
		 * @param color  32-bit ARGB color as unsigned integer.
		 * @return       Color instance of 8-bit red, green, blue.
		 */
		public static function getRGB(color:uint):Color
		{
			return new Color(color >> 16 & 0xff, // red
							 color >> 8 & 0xff, // green
							 color & 0xff // blue
							 );
		}


		//------------------------------
		//  A,R,G,B, from int
		//------------------------------

		/**
		 * Get Alpha from a 32-bit integer (hex).
		 *
		 * @param color  32-bit ARGB color as unsigned integer.
		 * @return       8-bit alpha.
		 *
		 */
		public static function getAlpha(color:uint):uint
		{
			return color >>> 24;
		}

		/**
		 * Get Red from an integer (hex).
		 *
		 * @param color  24-bit RGB color as unsigned integer.
		 * @return       8-bit red.
		 */
		public static function getRed(color:uint):uint
		{
			return color >>> 16 & 0xFF;
		}

		/**
		 * Get Green from an integer (hex).
		 *
		 * @param color  24-bit RGB color as unsigned integer.
		 * @return       8-bit green.
		 */
		public static function getGreen(color:uint):uint
		{
			return color >>> 8 & 0xFF;
		}

		/**
		 * Get Blue from an integer (hex).
		 *
		 * @param color  24-bit RGB color as unsigned integer.
		 * @return       8-bit blue.
		 */
		public static function getBlue(color:uint):uint
		{
			return color & 0xFF;
		}

	}
}
