//
//  com.blitting.color.palette.SystemWebSafeColorPalette
//
//  Created by Jason Sturges.
//
package com.blitting.color.palette
{

	/**
	 * Enumeration of System chrome, implemented with web safe colors.
	 *
	 * Use the static Colors array of names for full enumeration.
	 *
	 * Example:
	 * <pre>
	 * for(var i:uint = 0; i &lt; SystemWebSafeColorPalette.Colors.length; i++)
	 * {
	 *    var color:uint = SystemWebSafeColorPalette[SystemWebSafeColorPalette.Colors[i]];
	 * }
	 * </pre>
	 */
	public class SystemWebSafeColorPalette
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Array of all colors defined. */
		public static const Colors:Array =
			[
			"ActiveBorder",
			"ActiveCaption",
			"AppWorkspace",
			"Background",
			"ButtonFace",
			"ButtonHighlight",
			"ButtonShadow",
			"ButtonText",
			"CaptionText",
			"GrayText",
			"Highlight",
			"HighlightText",
			"InactiveBorder",
			"InactiveCaption",
			"InactiveCaptionText",
			"InfoBackground",
			"InfoText",
			"Menu",
			"MenuText",
			"Scrollbar",
			"ThreeDDarkShadow",
			"ThreeDFace",
			"ThreeDHighlight",
			"ThreeDLightShadow",
			"ThreeDShadow",
			"Window",
			"WindowFrame",
			"WindowText",
			];


		//------------------------------
		//  colors
		//------------------------------

		public static const ActiveBorder:uint = 0xb4b4b4;
		public static const ActiveCaption:uint = 0x99b4d1;
		public static const AppWorkspace:uint = 0xababab;
		public static const Background:uint = 0x000000;
		public static const ButtonFace:uint = 0xf0f0f0;
		public static const ButtonHighlight:uint = 0xffffff;
		public static const ButtonShadow:uint = 0xa0a0a0;
		public static const ButtonText:uint = 0x000000;
		public static const CaptionText:uint = 0x000000;
		public static const GrayText:uint = 0x6d6d6d;
		public static const Highlight:uint = 0x3399ff;
		public static const HighlightText:uint = 0xffffff;
		public static const InactiveBorder:uint = 0xf4f7fc;
		public static const InactiveCaption:uint = 0xbfcddb;
		public static const InactiveCaptionText:uint = 0x434e54;
		public static const InfoBackground:uint = 0xffffe1;
		public static const InfoText:uint = 0x000000;
		public static const Menu:uint = 0xf0f0f0;
		public static const MenuText:uint = 0x000000;
		public static const Scrollbar:uint = 0xc8c8c8;
		public static const ThreeDDarkShadow:uint = 0x696969;
		public static const ThreeDFace:uint = 0xf0f0f0;
		public static const ThreeDHighlight:uint = 0xffffff;
		public static const ThreeDLightShadow:uint = 0xe3e3e3;
		public static const ThreeDShadow:uint = 0xa0a0a0;
		public static const Window:uint = 0xffffff;
		public static const WindowFrame:uint = 0x646464;
		public static const WindowText:uint = 0x000000;


	}
}
