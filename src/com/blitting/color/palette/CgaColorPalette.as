//
//  com.blitting.color.palette.CgaColorPalette
//
//  Created by Jason Sturges.
//
package com.blitting.color.palette
{

	/**
	 * Enumeration of 4-bit Colors.  CGA RGBI with tweaked brown palette.
	 *
	 * Use the static Colors array of names for full enumeration.
	 *
	 * Example:
	 * <pre>
	 * for(var i:uint = 0; i &lt; CgaColorPalette.Colors.length; i++)
	 * {
	 *    var color:uint = CgaColorPalette[CgaColorPalette.Colors[i]];
	 * }
	 * </pre>
	 */
	public class CgaColorPalette implements IColorPalette
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Array of all colors defined. */
		public static const Colors:Array =
			[
			"Black",
			"Gray",
			"Blue",
			"LightBlue",
			"Green",
			"LightGreen",
			"Cyan",
			"LightCyan",
			"Red",
			"LightRed",
			"Magenta",
			"LightMagenta",
			"Brown",
			"Yellow",
			"LightGray",
			"White"
			];


		//------------------------------
		//  colors
		//------------------------------

		public static const black:uint = 0x000000;
		public static const gray:uint = 0x555555;
		public static const blue:uint = 0x0000aa;
		public static const lightBlue:uint = 0x5555ff;
		public static const green:uint = 0x00aa00;
		public static const lightGreen:uint = 0x55ff55;
		public static const cyan:uint = 0x00aaaa;
		public static const lightCyan:uint = 0x55ffff;
		public static const red:uint = 0xaa0000;
		public static const lightRed:uint = 0xff55ff;
		public static const magenta:uint = 0xaa00aa;
		public static const lightMagenta:uint = 0xff55ff;
		public static const brown:uint = 0xaa5500; // darkYellow:uint = 0xaaaa00
		public static const yellow:uint = 0xffff55;
		public static const lightGray:uint = 0xaaaaaa;
		public static const white:uint = 0xffffff;

	}
}
