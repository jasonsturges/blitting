//
//  com.blitting.color.palette.HtmlColorPalette
//
//  Created by Jason Sturges.
//
package com.blitting.color.palette
{

	/**
	 * Enumeration of HTML 3.2 - 4.01 / CSS 1 - 2.0 / VGA color names.
	 *
	 * Use the static Colors array of names for full enumeration.
	 *
	 * Example:
	 * <pre>
	 * for(var i:uint = 0; i &lt; HtmlColorPalette.Colors.length; i++)
	 * {
	 *    var color:uint = HtmlColorPalette[HtmlColorPalette.Colors[i]];
	 * }
	 * </pre>
	 */
	public class HtmlColorPalette
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Array of all colors defined. */
		public static const Colors:Array =
			[
			"White",
			"Silver",
			"Gray",
			"Black",
			"Red",
			"Maroon",
			"Yellow",
			"Olive",
			"Lime",
			"Green",
			"Aqua",
			"Teal",
			"Blue",
			"Navy",
			"Fuchsia",
			"Purple"
			];


		//------------------------------
		//  colors
		//------------------------------

		public static const white:uint = 0xffffff;
		public static const silver:uint = 0xc0c0c0;
		public static const gray:uint = 0x808080;
		public static const black:uint = 0x000000;
		public static const red:uint = 0xff0000;
		public static const maroon:uint = 0x8000000;
		public static const yellow:uint = 0xffff00;
		public static const olive:uint = 0x808000;
		public static const lime:uint = 0x00ff00;
		public static const green:uint = 0x008000;
		public static const aqua:uint = 0x00ffff;
		public static const teal:uint = 0x008080;
		public static const blue:uint = 0x0000ff;
		public static const navy:uint = 0x000080;
		public static const fuchsia:uint = 0xff00ff;
		public static const purple:uint = 0x800080;

	}
}
