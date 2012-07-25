//
//  com.blitting.color.palette.X11ColorPalette
//
//  Created by Jason Sturges.
//
package com.blitting.color.palette
{

	/**
	 * Enumeration of X11 colors.
	 *
	 * Use the static X11ColorPalette Colors array of names for full enumeration.
	 *
	 * Example:
	 * <pre>
	 * for(var i:uint = 0; i &lt; X11ColorPalette.Colors.length; i++)
	 * {
	 *    var color:uint = X11ColorPalette[X11ColorPalette.Colors[i]];
	 * }
	 * </pre>
	 */
	public class X11ColorPalette
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Array of all colors defined. */
		public static const Colors:Array =
			[
			"aliceBlue",
			"antiqueWhite",
			"antiqueWhite1",
			"antiqueWhite2",
			"antiqueWhite3",
			"antiqueWhite4",
			"aquamarine",
			"aquamarine1",
			"aquamarine2",
			"aquamarine3",
			"aquamarine4",
			"azure",
			"azure1",
			"azure2",
			"azure3",
			"azure4",
			"beige",
			"bisque",
			"bisque1",
			"bisque2",
			"bisque3",
			"bisque4",
			"black",
			"blanchedAlmond",
			"blue",
			"blue1",
			"blue2",
			"blue3",
			"blue4",
			"blueViolet",
			"brown",
			"brown1",
			"brown2",
			"brown3",
			"brown4",
			"burlywood",
			"burlywood1",
			"burlywood2",
			"burlywood3",
			"burlywood4",
			"cadetBlue",
			"cadetBlue1",
			"cadetBlue2",
			"cadetBlue3",
			"cadetBlue4",
			"chartreuse",
			"chartreuse1",
			"chartreuse2",
			"chartreuse3",
			"chartreuse4",
			"chocolate",
			"chocolate1",
			"chocolate2",
			"chocolate3",
			"chocolate4",
			"coral",
			"coral1",
			"coral2",
			"coral3",
			"coral4",
			"cornflowerBlue",
			"cornsilk",
			"cornsilk1",
			"cornsilk2",
			"cornsilk3",
			"cornsilk4",
			"cyan",
			"cyan1",
			"cyan2",
			"cyan3",
			"cyan4",
			"darkBlue",
			"darkCyan",
			"darkGoldenrod",
			"darkGoldenrod1",
			"darkGoldenrod2",
			"darkGoldenrod3",
			"darkGoldenrod4",
			"darkGreen",
			"darkGrey",
			"darkKhaki",
			"darkMagenta",
			"darkOliveGreen",
			"darkOliveGreen1",
			"darkOliveGreen2",
			"darkOliveGreen3",
			"darkOliveGreen4",
			"darkOrange",
			"darkOrange1",
			"darkOrange2",
			"darkOrange3",
			"darkOrange4",
			"darkOrchid",
			"darkOrchid1",
			"darkOrchid2",
			"darkOrchid3",
			"darkOrchid4",
			"darkRed",
			"darkSalmon",
			"darkSeaGreen",
			"darkSeaGreen1",
			"darkSeaGreen2",
			"darkSeaGreen3",
			"darkSeaGreen4",
			"darkSlateBlue",
			"darkSlateGray",
			"darkSlateGray1",
			"darkSlateGray2",
			"darkSlateGray3",
			"darkSlateGray4",
			"darkTurquoise",
			"darkViolet",
			"deepPink",
			"deepPink1",
			"deepPink2",
			"deepPink3",
			"deepPink4",
			"deepSkyBlue",
			"deepSkyBlue1",
			"deepSkyBlue2",
			"deepSkyBlue3",
			"deepSkyBlue4",
			"dimGrey",
			"dodgerBlue",
			"dodgerBlue1",
			"dodgerBlue2",
			"dodgerBlue3",
			"dodgerBlue4",
			"firebrick",
			"firebrick1",
			"firebrick2",
			"firebrick3",
			"firebrick4",
			"floralWhite",
			"forestGreen",
			"gainsboro",
			"ghostWhite",
			"gold",
			"gold1",
			"gold2",
			"gold3",
			"gold4",
			"goldenrod",
			"goldenrod1",
			"goldenrod2",
			"goldenrod3",
			"goldenrod4",
			"gray",
			"gray0",
			"gray1",
			"gray10",
			"gray100",
			"gray11",
			"gray12",
			"gray13",
			"gray14",
			"gray15",
			"gray16",
			"gray17",
			"gray18",
			"gray19",
			"gray2",
			"gray20",
			"gray21",
			"gray22",
			"gray23",
			"gray24",
			"gray25",
			"gray26",
			"gray27",
			"gray28",
			"gray29",
			"gray3",
			"gray30",
			"gray31",
			"gray32",
			"gray33",
			"gray34",
			"gray35",
			"gray36",
			"gray37",
			"gray38",
			"gray39",
			"gray4",
			"gray40",
			"gray41",
			"gray42",
			"gray43",
			"gray44",
			"gray45",
			"gray46",
			"gray47",
			"gray48",
			"gray49",
			"gray5",
			"gray50",
			"gray51",
			"gray52",
			"gray53",
			"gray54",
			"gray55",
			"gray56",
			"gray57",
			"gray58",
			"gray59",
			"gray6",
			"gray60",
			"gray61",
			"gray62",
			"gray63",
			"gray64",
			"gray65",
			"gray66",
			"gray67",
			"gray68",
			"gray69",
			"gray7",
			"gray70",
			"gray71",
			"gray72",
			"gray73",
			"gray74",
			"gray75",
			"gray76",
			"gray77",
			"gray78",
			"gray79",
			"gray8",
			"gray80",
			"gray81",
			"gray82",
			"gray83",
			"gray84",
			"gray85",
			"gray86",
			"gray87",
			"gray88",
			"gray89",
			"gray9",
			"gray90",
			"gray91",
			"gray92",
			"gray93",
			"gray94",
			"gray95",
			"gray96",
			"gray97",
			"gray98",
			"gray99",
			"green",
			"green1",
			"green2",
			"green3",
			"green4",
			"greenYellow",
			"honeydew",
			"honeydew1",
			"honeydew2",
			"honeydew3",
			"honeydew4",
			"hotPink",
			"hotPink1",
			"hotPink2",
			"hotPink3",
			"hotPink4",
			"indianRed",
			"indianRed1",
			"indianRed2",
			"indianRed3",
			"indianRed4",
			"ivory",
			"ivory1",
			"ivory2",
			"ivory3",
			"ivory4",
			"khaki",
			"khaki1",
			"khaki2",
			"khaki3",
			"khaki4",
			"lavender",
			"lavenderBlush",
			"lavenderBlush1",
			"lavenderBlush2",
			"lavenderBlush3",
			"lavenderBlush4",
			"lawnGreen",
			"lemonChiffon",
			"lemonChiffon1",
			"lemonChiffon2",
			"lemonChiffon3",
			"lemonChiffon4",
			"lightBlue",
			"lightBlue1",
			"lightBlue2",
			"lightBlue3",
			"lightBlue4",
			"lightCoral",
			"lightCyan",
			"lightCyan1",
			"lightCyan2",
			"lightCyan3",
			"lightCyan4",
			"lightGoldenrod",
			"lightGoldenrod1",
			"lightGoldenrod2",
			"lightGoldenrod3",
			"lightGoldenrod4",
			"lightGoldenrodYellow",
			"lightGray",
			"lightGreen",
			"lightPink",
			"lightPink1",
			"lightPink2",
			"lightPink3",
			"lightPink4",
			"lightSalmon",
			"lightSalmon1",
			"lightSalmon2",
			"lightSalmon3",
			"lightSalmon4",
			"lightSeaGreen",
			"lightSkyBlue",
			"lightSkyBlue1",
			"lightSkyBlue2",
			"lightSkyBlue3",
			"lightSkyBlue4",
			"lightSlateBlue",
			"lightSlateGrey",
			"lightSteelBlue",
			"lightSteelBlue1",
			"lightSteelBlue2",
			"lightSteelBlue3",
			"lightSteelBlue4",
			"lightYellow",
			"lightYellow1",
			"lightYellow2",
			"lightYellow3",
			"lightYellow4",
			"limeGreen",
			"linen",
			"magenta",
			"magenta1",
			"magenta2",
			"magenta3",
			"magenta4",
			"maroon",
			"maroon1",
			"maroon2",
			"maroon3",
			"maroon4",
			"mediumAquamarine",
			"mediumBlue",
			"mediumOrchid",
			"mediumOrchid1",
			"mediumOrchid2",
			"mediumOrchid3",
			"mediumOrchid4",
			"mediumPurple",
			"mediumPurple1",
			"mediumPurple2",
			"mediumPurple3",
			"mediumPurple4",
			"mediumSeaGreen",
			"mediumSlateBlue",
			"mediumSpringGreen",
			"mediumTurquoise",
			"mediumVioletRed",
			"midnightBlue",
			"mintCream",
			"mistyRose",
			"mistyRose1",
			"mistyRose2",
			"mistyRose3",
			"mistyRose4",
			"moccasin",
			"navajoWhite",
			"navajoWhite1",
			"navajoWhite2",
			"navajoWhite3",
			"navajoWhite4",
			"navy",
			"navyBlue",
			"oldLace",
			"oliveDrab",
			"oliveDrab1",
			"oliveDrab2",
			"oliveDrab3",
			"oliveDrab4",
			"orange",
			"orange1",
			"orange2",
			"orange3",
			"orange4",
			"orangeRed",
			"orangeRed1",
			"orangeRed2",
			"orangeRed3",
			"orangeRed4",
			"orchid",
			"orchid1",
			"orchid2",
			"orchid3",
			"orchid4",
			"paleGoldenrod",
			"paleGreen",
			"paleGreen1",
			"paleGreen2",
			"paleGreen3",
			"paleGreen4",
			"paleTurquoise",
			"paleTurquoise1",
			"paleTurquoise2",
			"paleTurquoise3",
			"paleTurquoise4",
			"paleVioletRed",
			"paleVioletRed1",
			"paleVioletRed2",
			"paleVioletRed3",
			"paleVioletRed4",
			"papayaWhip",
			"peachPuff",
			"peachPuff1",
			"peachPuff2",
			"peachPuff3",
			"peachPuff4",
			"peru",
			"pink",
			"pink1",
			"pink2",
			"pink3",
			"pink4",
			"plum",
			"plum1",
			"plum2",
			"plum3",
			"plum4",
			"powderBlue",
			"purple",
			"purple1",
			"purple2",
			"purple3",
			"purple4",
			"red",
			"red1",
			"red2",
			"red3",
			"red4",
			"rosyBrown",
			"rosyBrown1",
			"rosyBrown2",
			"rosyBrown3",
			"rosyBrown4",
			"royalBlue",
			"royalBlue1",
			"royalBlue2",
			"royalBlue3",
			"royalBlue4",
			"saddleBrown",
			"salmon",
			"salmon1",
			"salmon2",
			"salmon3",
			"salmon4",
			"sandyBrown",
			"seaGreen",
			"seaGreen1",
			"seaGreen2",
			"seaGreen3",
			"seaGreen4",
			"seashell",
			"seashell1",
			"seashell2",
			"seashell3",
			"seashell4",
			"sienna",
			"sienna1",
			"sienna2",
			"sienna3",
			"sienna4",
			"skyBlue",
			"skyBlue1",
			"skyBlue2",
			"skyBlue3",
			"skyBlue4",
			"slateBlue",
			"slateBlue1",
			"slateBlue2",
			"slateBlue3",
			"slateBlue4",
			"slateGray",
			"slateGray1",
			"slateGray2",
			"slateGray3",
			"slateGray4",
			"snow",
			"snow1",
			"snow2",
			"snow3",
			"snow4",
			"springGreen",
			"springGreen1",
			"springGreen2",
			"springGreen3",
			"springGreen4",
			"steelBlue",
			"steelBlue1",
			"steelBlue2",
			"steelBlue3",
			"steelBlue4",
			"tan",
			"tan1",
			"tan2",
			"tan3",
			"tan4",
			"thistle",
			"thistle1",
			"thistle2",
			"thistle3",
			"thistle4",
			"tomato",
			"tomato1",
			"tomato2",
			"tomato3",
			"tomato4",
			"turquoise",
			"turquoise1",
			"turquoise2",
			"turquoise3",
			"turquoise4",
			"violet",
			"violetRed",
			"violetRed1",
			"violetRed2",
			"violetRed3",
			"violetRed4",
			"wheat",
			"wheat1",
			"wheat2",
			"wheat3",
			"wheat4",
			"white",
			"whiteSmoke",
			"yellow",
			"yellow1",
			"yellow2",
			"yellow3",
			"yellow4",
			"yellowGreen"
			];


		//------------------------------
		//  colors
		//------------------------------

		public static const aliceBlue:uint = 0xf0f8ff;
		public static const antiqueWhite:uint = 0xfaebd7;
		public static const antiqueWhite1:uint = 0xffefdb;
		public static const antiqueWhite2:uint = 0xeedfcc;
		public static const antiqueWhite3:uint = 0xcdc0b0;
		public static const antiqueWhite4:uint = 0x8b8378;
		public static const aquamarine:uint = 0x7fffd4;
		public static const aquamarine1:uint = 0x7fffd4;
		public static const aquamarine2:uint = 0x76eec6;
		public static const aquamarine3:uint = 0x66cdaa;
		public static const aquamarine4:uint = 0x458b74;
		public static const azure:uint = 0xf0ffff;
		public static const azure1:uint = 0xf0ffff;
		public static const azure2:uint = 0xe0eeee;
		public static const azure3:uint = 0xc1cdcd;
		public static const azure4:uint = 0x838b8b;
		public static const beige:uint = 0xf5f5dc;
		public static const bisque:uint = 0xffe4c4;
		public static const bisque1:uint = 0xffe4c4;
		public static const bisque2:uint = 0xeed5b7;
		public static const bisque3:uint = 0xcdb79e;
		public static const bisque4:uint = 0x8b7d6b;
		public static const black:uint = 0x000000;
		public static const blanchedAlmond:uint = 0xffebcd;
		public static const blue:uint = 0x0000ff;
		public static const blue1:uint = 0x0000ff;
		public static const blue2:uint = 0x0000ee;
		public static const blue3:uint = 0x0000cd;
		public static const blue4:uint = 0x00008b;
		public static const blueViolet:uint = 0x8a2be2;
		public static const brown:uint = 0xa52a2a;
		public static const brown1:uint = 0xff4040;
		public static const brown2:uint = 0xee3b3b;
		public static const brown3:uint = 0xcd3333;
		public static const brown4:uint = 0x8b2323;
		public static const burlywood:uint = 0xdeb887;
		public static const burlywood1:uint = 0xffd39b;
		public static const burlywood2:uint = 0xeec591;
		public static const burlywood3:uint = 0xcdaa7d;
		public static const burlywood4:uint = 0x8b7355;
		public static const cadetBlue:uint = 0x5f9ea0;
		public static const cadetBlue1:uint = 0x98f5ff;
		public static const cadetBlue2:uint = 0x8ee5ee;
		public static const cadetBlue3:uint = 0x7ac5cd;
		public static const cadetBlue4:uint = 0x53868b;
		public static const chartreuse:uint = 0x7fff00;
		public static const chartreuse1:uint = 0x7fff00;
		public static const chartreuse2:uint = 0x76ee00;
		public static const chartreuse3:uint = 0x66cd00;
		public static const chartreuse4:uint = 0x458b00;
		public static const chocolate:uint = 0xd2691e;
		public static const chocolate1:uint = 0xff7f24;
		public static const chocolate2:uint = 0xee7621;
		public static const chocolate3:uint = 0xcd661d;
		public static const chocolate4:uint = 0x8b4513;
		public static const coral:uint = 0xff7f50;
		public static const coral1:uint = 0xff7256;
		public static const coral2:uint = 0xee6a50;
		public static const coral3:uint = 0xcd5b45;
		public static const coral4:uint = 0x8b3e2f;
		public static const cornflowerBlue:uint = 0x6495ed;
		public static const cornsilk:uint = 0xfff8dc;
		public static const cornsilk1:uint = 0xfff8dc;
		public static const cornsilk2:uint = 0xeee8cd;
		public static const cornsilk3:uint = 0xcdc8b1;
		public static const cornsilk4:uint = 0x8b8878;
		public static const cyan:uint = 0x00ffff;
		public static const cyan1:uint = 0x00ffff;
		public static const cyan2:uint = 0x00eeee;
		public static const cyan3:uint = 0x00cdcd;
		public static const cyan4:uint = 0x008b8b;
		public static const darkBlue:uint = 0x00008b;
		public static const darkCyan:uint = 0x008b8b;
		public static const darkGoldenrod:uint = 0xb8860b;
		public static const darkGoldenrod1:uint = 0xffb90f;
		public static const darkGoldenrod2:uint = 0xeead0e;
		public static const darkGoldenrod3:uint = 0xcd950c;
		public static const darkGoldenrod4:uint = 0x8b6508;
		public static const darkGreen:uint = 0x006400;
		public static const darkGrey:uint = 0xa9a9a9;
		public static const darkKhaki:uint = 0xbdb76b;
		public static const darkMagenta:uint = 0x8b008b;
		public static const darkOliveGreen:uint = 0x556b2f;
		public static const darkOliveGreen1:uint = 0xcaff70;
		public static const darkOliveGreen2:uint = 0xbcee68;
		public static const darkOliveGreen3:uint = 0xa2cd5a;
		public static const darkOliveGreen4:uint = 0x6e8b3d;
		public static const darkOrange:uint = 0xff8c00;
		public static const darkOrange1:uint = 0xff7f00;
		public static const darkOrange2:uint = 0xee7600;
		public static const darkOrange3:uint = 0xcd6600;
		public static const darkOrange4:uint = 0x8b4500;
		public static const darkOrchid:uint = 0x9932cc;
		public static const darkOrchid1:uint = 0xbf3eff;
		public static const darkOrchid2:uint = 0xb23aee;
		public static const darkOrchid3:uint = 0x9a32cd;
		public static const darkOrchid4:uint = 0x68228b;
		public static const darkRed:uint = 0x8b0000;
		public static const darkSalmon:uint = 0xe9967a;
		public static const darkSeaGreen:uint = 0x8fbc8f;
		public static const darkSeaGreen1:uint = 0xc1ffc1;
		public static const darkSeaGreen2:uint = 0xb4eeb4;
		public static const darkSeaGreen3:uint = 0x9bcd9b;
		public static const darkSeaGreen4:uint = 0x698b69;
		public static const darkSlateBlue:uint = 0x483d8b;
		public static const darkSlateGray:uint = 0x2f4f4f;
		public static const darkSlateGray1:uint = 0x97ffff;
		public static const darkSlateGray2:uint = 0x8deeee;
		public static const darkSlateGray3:uint = 0x79cdcd;
		public static const darkSlateGray4:uint = 0x528b8b;
		public static const darkTurquoise:uint = 0x00ced1;
		public static const darkViolet:uint = 0x9400d3;
		public static const deepPink:uint = 0xff1493;
		public static const deepPink1:uint = 0xff1493;
		public static const deepPink2:uint = 0xee1289;
		public static const deepPink3:uint = 0xcd1076;
		public static const deepPink4:uint = 0x8b0a50;
		public static const deepSkyBlue:uint = 0x00bfff;
		public static const deepSkyBlue1:uint = 0x00bfff;
		public static const deepSkyBlue2:uint = 0x00b2ee;
		public static const deepSkyBlue3:uint = 0x009acd;
		public static const deepSkyBlue4:uint = 0x00688b;
		public static const dimGrey:uint = 0x696969;
		public static const dodgerBlue:uint = 0x1e90ff;
		public static const dodgerBlue1:uint = 0x1e90ff;
		public static const dodgerBlue2:uint = 0x1c86ee;
		public static const dodgerBlue3:uint = 0x1874cd;
		public static const dodgerBlue4:uint = 0x104e8b;
		public static const firebrick:uint = 0xb22222;
		public static const firebrick1:uint = 0xff3030;
		public static const firebrick2:uint = 0xee2c2c;
		public static const firebrick3:uint = 0xcd2626;
		public static const firebrick4:uint = 0x8b1a1a;
		public static const floralWhite:uint = 0xfffaf0;
		public static const forestGreen:uint = 0x228b22;
		public static const gainsboro:uint = 0xdcdcdc;
		public static const ghostWhite:uint = 0xf8f8ff;
		public static const gold:uint = 0xffd700;
		public static const gold1:uint = 0xffd700;
		public static const gold2:uint = 0xeec900;
		public static const gold3:uint = 0xcdad00;
		public static const gold4:uint = 0x8b7500;
		public static const goldenrod:uint = 0xdaa520;
		public static const goldenrod1:uint = 0xffc125;
		public static const goldenrod2:uint = 0xeeb422;
		public static const goldenrod3:uint = 0xcd9b1d;
		public static const goldenrod4:uint = 0x8b6914;
		public static const gray:uint = 0xbebebe;
		public static const gray0:uint = 0x000000;
		public static const gray1:uint = 0x030303;
		public static const gray10:uint = 0x1a1a1a;
		public static const gray100:uint = 0xffffff;
		public static const gray11:uint = 0x1c1c1c;
		public static const gray12:uint = 0x1f1f1f;
		public static const gray13:uint = 0x212121;
		public static const gray14:uint = 0x242424;
		public static const gray15:uint = 0x262626;
		public static const gray16:uint = 0x292929;
		public static const gray17:uint = 0x2b2b2b;
		public static const gray18:uint = 0x2e2e2e;
		public static const gray19:uint = 0x303030;
		public static const gray2:uint = 0x050505;
		public static const gray20:uint = 0x333333;
		public static const gray21:uint = 0x363636;
		public static const gray22:uint = 0x383838;
		public static const gray23:uint = 0x3b3b3b;
		public static const gray24:uint = 0x3d3d3d;
		public static const gray25:uint = 0x404040;
		public static const gray26:uint = 0x424242;
		public static const gray27:uint = 0x454545;
		public static const gray28:uint = 0x474747;
		public static const gray29:uint = 0x4a4a4a;
		public static const gray3:uint = 0x080808;
		public static const gray30:uint = 0x4d4d4d;
		public static const gray31:uint = 0x4f4f4f;
		public static const gray32:uint = 0x525252;
		public static const gray33:uint = 0x545454;
		public static const gray34:uint = 0x575757;
		public static const gray35:uint = 0x595959;
		public static const gray36:uint = 0x5c5c5c;
		public static const gray37:uint = 0x5e5e5e;
		public static const gray38:uint = 0x616161;
		public static const gray39:uint = 0x636363;
		public static const gray4:uint = 0x0a0a0a;
		public static const gray40:uint = 0x666666;
		public static const gray41:uint = 0x696969;
		public static const gray42:uint = 0x6b6b6b;
		public static const gray43:uint = 0x6e6e6e;
		public static const gray44:uint = 0x707070;
		public static const gray45:uint = 0x737373;
		public static const gray46:uint = 0x757575;
		public static const gray47:uint = 0x787878;
		public static const gray48:uint = 0x7a7a7a;
		public static const gray49:uint = 0x7d7d7d;
		public static const gray5:uint = 0x0d0d0d;
		public static const gray50:uint = 0x7f7f7f;
		public static const gray51:uint = 0x828282;
		public static const gray52:uint = 0x858585;
		public static const gray53:uint = 0x878787;
		public static const gray54:uint = 0x8a8a8a;
		public static const gray55:uint = 0x8c8c8c;
		public static const gray56:uint = 0x8f8f8f;
		public static const gray57:uint = 0x919191;
		public static const gray58:uint = 0x949494;
		public static const gray59:uint = 0x969696;
		public static const gray6:uint = 0x0f0f0f;
		public static const gray60:uint = 0x999999;
		public static const gray61:uint = 0x9c9c9c;
		public static const gray62:uint = 0x9e9e9e;
		public static const gray63:uint = 0xa1a1a1;
		public static const gray64:uint = 0xa3a3a3;
		public static const gray65:uint = 0xa6a6a6;
		public static const gray66:uint = 0xa8a8a8;
		public static const gray67:uint = 0xababab;
		public static const gray68:uint = 0xadadad;
		public static const gray69:uint = 0xb0b0b0;
		public static const gray7:uint = 0x121212;
		public static const gray70:uint = 0xb3b3b3;
		public static const gray71:uint = 0xb5b5b5;
		public static const gray72:uint = 0xb8b8b8;
		public static const gray73:uint = 0xbababa;
		public static const gray74:uint = 0xbdbdbd;
		public static const gray75:uint = 0xbfbfbf;
		public static const gray76:uint = 0xc2c2c2;
		public static const gray77:uint = 0xc4c4c4;
		public static const gray78:uint = 0xc7c7c7;
		public static const gray79:uint = 0xc9c9c9;
		public static const gray8:uint = 0x141414;
		public static const gray80:uint = 0xcccccc;
		public static const gray81:uint = 0xcfcfcf;
		public static const gray82:uint = 0xd1d1d1;
		public static const gray83:uint = 0xd4d4d4;
		public static const gray84:uint = 0xd6d6d6;
		public static const gray85:uint = 0xd9d9d9;
		public static const gray86:uint = 0xdbdbdb;
		public static const gray87:uint = 0xdedede;
		public static const gray88:uint = 0xe0e0e0;
		public static const gray89:uint = 0xe3e3e3;
		public static const gray9:uint = 0x171717;
		public static const gray90:uint = 0xe5e5e5;
		public static const gray91:uint = 0xe8e8e8;
		public static const gray92:uint = 0xebebeb;
		public static const gray93:uint = 0xededed;
		public static const gray94:uint = 0xf0f0f0;
		public static const gray95:uint = 0xf2f2f2;
		public static const gray96:uint = 0xf5f5f5;
		public static const gray97:uint = 0xf7f7f7;
		public static const gray98:uint = 0xfafafa;
		public static const gray99:uint = 0xfcfcfc;
		public static const green:uint = 0x00ff00;
		public static const green1:uint = 0x00ff00;
		public static const green2:uint = 0x00ee00;
		public static const green3:uint = 0x00cd00;
		public static const green4:uint = 0x008b00;
		public static const greenYellow:uint = 0xadff2f;
		public static const honeydew:uint = 0xf0fff0;
		public static const honeydew1:uint = 0xf0fff0;
		public static const honeydew2:uint = 0xe0eee0;
		public static const honeydew3:uint = 0xc1cdc1;
		public static const honeydew4:uint = 0x838b83;
		public static const hotPink:uint = 0xff69b4;
		public static const hotPink1:uint = 0xff6eb4;
		public static const hotPink2:uint = 0xee6aa7;
		public static const hotPink3:uint = 0xcd6090;
		public static const hotPink4:uint = 0x8b3a62;
		public static const indianRed:uint = 0xcd5c5c;
		public static const indianRed1:uint = 0xff6a6a;
		public static const indianRed2:uint = 0xee6363;
		public static const indianRed3:uint = 0xcd5555;
		public static const indianRed4:uint = 0x8b3a3a;
		public static const ivory:uint = 0xfffff0;
		public static const ivory1:uint = 0xfffff0;
		public static const ivory2:uint = 0xeeeee0;
		public static const ivory3:uint = 0xcdcdc1;
		public static const ivory4:uint = 0x8b8b83;
		public static const khaki:uint = 0xf0e68c;
		public static const khaki1:uint = 0xfff68f;
		public static const khaki2:uint = 0xeee685;
		public static const khaki3:uint = 0xcdc673;
		public static const khaki4:uint = 0x8b864e;
		public static const lavender:uint = 0xe6e6fa;
		public static const lavenderBlush:uint = 0xfff0f5;
		public static const lavenderBlush1:uint = 0xfff0f5;
		public static const lavenderBlush2:uint = 0xeee0e5;
		public static const lavenderBlush3:uint = 0xcdc1c5;
		public static const lavenderBlush4:uint = 0x8b8386;
		public static const lawnGreen:uint = 0x7cfc00;
		public static const lemonChiffon:uint = 0xfffacd;
		public static const lemonChiffon1:uint = 0xfffacd;
		public static const lemonChiffon2:uint = 0xeee9bf;
		public static const lemonChiffon3:uint = 0xcdc9a5;
		public static const lemonChiffon4:uint = 0x8b8970;
		public static const lightBlue:uint = 0xadd8e6;
		public static const lightBlue1:uint = 0xbfefff;
		public static const lightBlue2:uint = 0xb2dfee;
		public static const lightBlue3:uint = 0x9ac0cd;
		public static const lightBlue4:uint = 0x68838b;
		public static const lightCoral:uint = 0xf08080;
		public static const lightCyan:uint = 0xe0ffff;
		public static const lightCyan1:uint = 0xe0ffff;
		public static const lightCyan2:uint = 0xd1eeee;
		public static const lightCyan3:uint = 0xb4cdcd;
		public static const lightCyan4:uint = 0x7a8b8b;
		public static const lightGoldenrod:uint = 0xeedd82;
		public static const lightGoldenrod1:uint = 0xffec8b;
		public static const lightGoldenrod2:uint = 0xeedc82;
		public static const lightGoldenrod3:uint = 0xcdbe70;
		public static const lightGoldenrod4:uint = 0x8b814c;
		public static const lightGoldenrodYellow:uint = 0xfafad2;
		public static const lightGray:uint = 0xd3d3d3;
		public static const lightGreen:uint = 0x90ee90;
		public static const lightPink:uint = 0xffb6c1;
		public static const lightPink1:uint = 0xffaeb9;
		public static const lightPink2:uint = 0xeea2ad;
		public static const lightPink3:uint = 0xcd8c95;
		public static const lightPink4:uint = 0x8b5f65;
		public static const lightSalmon:uint = 0xffa07a;
		public static const lightSalmon1:uint = 0xffa07a;
		public static const lightSalmon2:uint = 0xee9572;
		public static const lightSalmon3:uint = 0xcd8162;
		public static const lightSalmon4:uint = 0x8b5742;
		public static const lightSeaGreen:uint = 0x20b2aa;
		public static const lightSkyBlue:uint = 0x87cefa;
		public static const lightSkyBlue1:uint = 0xb0e2ff;
		public static const lightSkyBlue2:uint = 0xa4d3ee;
		public static const lightSkyBlue3:uint = 0x8db6cd;
		public static const lightSkyBlue4:uint = 0x607b8b;
		public static const lightSlateBlue:uint = 0x8470ff;
		public static const lightSlateGrey:uint = 0x778899;
		public static const lightSteelBlue:uint = 0xb0c4de;
		public static const lightSteelBlue1:uint = 0xcae1ff;
		public static const lightSteelBlue2:uint = 0xbcd2ee;
		public static const lightSteelBlue3:uint = 0xa2b5cd;
		public static const lightSteelBlue4:uint = 0x6e7b8b;
		public static const lightYellow:uint = 0xffffe0;
		public static const lightYellow1:uint = 0xffffe0;
		public static const lightYellow2:uint = 0xeeeed1;
		public static const lightYellow3:uint = 0xcdcdb4;
		public static const lightYellow4:uint = 0x8b8b7a;
		public static const limeGreen:uint = 0x32cd32;
		public static const linen:uint = 0xfaf0e6;
		public static const magenta:uint = 0xff00ff;
		public static const magenta1:uint = 0xff00ff;
		public static const magenta2:uint = 0xee00ee;
		public static const magenta3:uint = 0xcd00cd;
		public static const magenta4:uint = 0x8b008b;
		public static const maroon:uint = 0xb03060;
		public static const maroon1:uint = 0xff34b3;
		public static const maroon2:uint = 0xee30a7;
		public static const maroon3:uint = 0xcd2990;
		public static const maroon4:uint = 0x8b1c62;
		public static const mediumAquamarine:uint = 0x66cdaa;
		public static const mediumBlue:uint = 0x0000cd;
		public static const mediumOrchid:uint = 0xba55d3;
		public static const mediumOrchid1:uint = 0xe066ff;
		public static const mediumOrchid2:uint = 0xd15fee;
		public static const mediumOrchid3:uint = 0xb452cd;
		public static const mediumOrchid4:uint = 0x7a378b;
		public static const mediumPurple:uint = 0x9370db;
		public static const mediumPurple1:uint = 0xab82ff;
		public static const mediumPurple2:uint = 0x9f79ee;
		public static const mediumPurple3:uint = 0x8968cd;
		public static const mediumPurple4:uint = 0x5d478b;
		public static const mediumSeaGreen:uint = 0x3cb371;
		public static const mediumSlateBlue:uint = 0x7b68ee;
		public static const mediumSpringGreen:uint = 0x00fa9a;
		public static const mediumTurquoise:uint = 0x48d1cc;
		public static const mediumVioletRed:uint = 0xc71585;
		public static const midnightBlue:uint = 0x191970;
		public static const mintCream:uint = 0xf5fffa;
		public static const mistyRose:uint = 0xffe4e1;
		public static const mistyRose1:uint = 0xffe4e1;
		public static const mistyRose2:uint = 0xeed5d2;
		public static const mistyRose3:uint = 0xcdb7b5;
		public static const mistyRose4:uint = 0x8b7d7b;
		public static const moccasin:uint = 0xffe4b5;
		public static const navajoWhite:uint = 0xffdead;
		public static const navajoWhite1:uint = 0xffdead;
		public static const navajoWhite2:uint = 0xeecfa1;
		public static const navajoWhite3:uint = 0xcdb38b;
		public static const navajoWhite4:uint = 0x8b795e;
		public static const navy:uint = 0x000080;
		public static const navyBlue:uint = 0x000080;
		public static const oldLace:uint = 0xfdf5e6;
		public static const oliveDrab:uint = 0x6b8e23;
		public static const oliveDrab1:uint = 0xc0ff3e;
		public static const oliveDrab2:uint = 0xb3ee3a;
		public static const oliveDrab3:uint = 0x9acd32;
		public static const oliveDrab4:uint = 0x698b22;
		public static const orange:uint = 0xffa500;
		public static const orange1:uint = 0xffa500;
		public static const orange2:uint = 0xee9a00;
		public static const orange3:uint = 0xcd8500;
		public static const orange4:uint = 0x8b5a00;
		public static const orangeRed:uint = 0xff4500;
		public static const orangeRed1:uint = 0xff4500;
		public static const orangeRed2:uint = 0xee4000;
		public static const orangeRed3:uint = 0xcd3700;
		public static const orangeRed4:uint = 0x8b2500;
		public static const orchid:uint = 0xda70d6;
		public static const orchid1:uint = 0xff83fa;
		public static const orchid2:uint = 0xee7ae9;
		public static const orchid3:uint = 0xcd69c9;
		public static const orchid4:uint = 0x8b4789;
		public static const paleGoldenrod:uint = 0xeee8aa;
		public static const paleGreen:uint = 0x98fb98;
		public static const paleGreen1:uint = 0x9aff9a;
		public static const paleGreen2:uint = 0x90ee90;
		public static const paleGreen3:uint = 0x7ccd7c;
		public static const paleGreen4:uint = 0x548b54;
		public static const paleTurquoise:uint = 0xafeeee;
		public static const paleTurquoise1:uint = 0xbbffff;
		public static const paleTurquoise2:uint = 0xaeeeee;
		public static const paleTurquoise3:uint = 0x96cdcd;
		public static const paleTurquoise4:uint = 0x668b8b;
		public static const paleVioletRed:uint = 0xdb7093;
		public static const paleVioletRed1:uint = 0xff82ab;
		public static const paleVioletRed2:uint = 0xee799f;
		public static const paleVioletRed3:uint = 0xcd6889;
		public static const paleVioletRed4:uint = 0x8b475d;
		public static const papayaWhip:uint = 0xffefd5;
		public static const peachPuff:uint = 0xffdab9;
		public static const peachPuff1:uint = 0xffdab9;
		public static const peachPuff2:uint = 0xeecbad;
		public static const peachPuff3:uint = 0xcdaf95;
		public static const peachPuff4:uint = 0x8b7765;
		public static const peru:uint = 0xcd853f;
		public static const pink:uint = 0xffc0cb;
		public static const pink1:uint = 0xffb5c5;
		public static const pink2:uint = 0xeea9b8;
		public static const pink3:uint = 0xcd919e;
		public static const pink4:uint = 0x8b636c;
		public static const plum:uint = 0xdda0dd;
		public static const plum1:uint = 0xffbbff;
		public static const plum2:uint = 0xeeaeee;
		public static const plum3:uint = 0xcd96cd;
		public static const plum4:uint = 0x8b668b;
		public static const powderBlue:uint = 0xb0e0e6;
		public static const purple:uint = 0xa020f0;
		public static const purple1:uint = 0x9b30ff;
		public static const purple2:uint = 0x912cee;
		public static const purple3:uint = 0x7d26cd;
		public static const purple4:uint = 0x551a8b;
		public static const red:uint = 0xff0000;
		public static const red1:uint = 0xff0000;
		public static const red2:uint = 0xee0000;
		public static const red3:uint = 0xcd0000;
		public static const red4:uint = 0x8b0000;
		public static const rosyBrown:uint = 0xbc8f8f;
		public static const rosyBrown1:uint = 0xffc1c1;
		public static const rosyBrown2:uint = 0xeeb4b4;
		public static const rosyBrown3:uint = 0xcd9b9b;
		public static const rosyBrown4:uint = 0x8b6969;
		public static const royalBlue:uint = 0x4169e1;
		public static const royalBlue1:uint = 0x4876ff;
		public static const royalBlue2:uint = 0x436eee;
		public static const royalBlue3:uint = 0x3a5fcd;
		public static const royalBlue4:uint = 0x27408b;
		public static const saddleBrown:uint = 0x8b4513;
		public static const salmon:uint = 0xfa8072;
		public static const salmon1:uint = 0xff8c69;
		public static const salmon2:uint = 0xee8262;
		public static const salmon3:uint = 0xcd7054;
		public static const salmon4:uint = 0x8b4c39;
		public static const sandyBrown:uint = 0xf4a460;
		public static const seaGreen:uint = 0x2e8b57;
		public static const seaGreen1:uint = 0x54ff9f;
		public static const seaGreen2:uint = 0x4eee94;
		public static const seaGreen3:uint = 0x43cd80;
		public static const seaGreen4:uint = 0x2e8b57;
		public static const seashell:uint = 0xfff5ee;
		public static const seashell1:uint = 0xfff5ee;
		public static const seashell2:uint = 0xeee5de;
		public static const seashell3:uint = 0xcdc5bf;
		public static const seashell4:uint = 0x8b8682;
		public static const sienna:uint = 0xa0522d;
		public static const sienna1:uint = 0xff8247;
		public static const sienna2:uint = 0xee7942;
		public static const sienna3:uint = 0xcd6839;
		public static const sienna4:uint = 0x8b4726;
		public static const skyBlue:uint = 0x87ceeb;
		public static const skyBlue1:uint = 0x87ceff;
		public static const skyBlue2:uint = 0x7ec0ee;
		public static const skyBlue3:uint = 0x6ca6cd;
		public static const skyBlue4:uint = 0x4a708b;
		public static const slateBlue:uint = 0x6a5acd;
		public static const slateBlue1:uint = 0x836fff;
		public static const slateBlue2:uint = 0x7a67ee;
		public static const slateBlue3:uint = 0x6959cd;
		public static const slateBlue4:uint = 0x473c8b;
		public static const slateGray:uint = 0x708090;
		public static const slateGray1:uint = 0xc6e2ff;
		public static const slateGray2:uint = 0xb9d3ee;
		public static const slateGray3:uint = 0x9fb6cd;
		public static const slateGray4:uint = 0x6c7b8b;
		public static const snow:uint = 0xfffafa;
		public static const snow1:uint = 0xfffafa;
		public static const snow2:uint = 0xeee9e9;
		public static const snow3:uint = 0xcdc9c9;
		public static const snow4:uint = 0x8b8989;
		public static const springGreen:uint = 0x00ff7f;
		public static const springGreen1:uint = 0x00ff7f;
		public static const springGreen2:uint = 0x00ee76;
		public static const springGreen3:uint = 0x00cd66;
		public static const springGreen4:uint = 0x008b45;
		public static const steelBlue:uint = 0x4682b4;
		public static const steelBlue1:uint = 0x63b8ff;
		public static const steelBlue2:uint = 0x5cacee;
		public static const steelBlue3:uint = 0x4f94cd;
		public static const steelBlue4:uint = 0x36648b;
		public static const tan:uint = 0xd2b48c;
		public static const tan1:uint = 0xffa54f;
		public static const tan2:uint = 0xee9a49;
		public static const tan3:uint = 0xcd853f;
		public static const tan4:uint = 0x8b5a2b;
		public static const thistle:uint = 0xd8bfd8;
		public static const thistle1:uint = 0xffe1ff;
		public static const thistle2:uint = 0xeed2ee;
		public static const thistle3:uint = 0xcdb5cd;
		public static const thistle4:uint = 0x8b7b8b;
		public static const tomato:uint = 0xff6347;
		public static const tomato1:uint = 0xff6347;
		public static const tomato2:uint = 0xee5c42;
		public static const tomato3:uint = 0xcd4f39;
		public static const tomato4:uint = 0xff6347;
		public static const turquoise:uint = 0x40e0d0;
		public static const turquoise1:uint = 0x00f5ff;
		public static const turquoise2:uint = 0x00e5ee;
		public static const turquoise3:uint = 0x00c5cd;
		public static const turquoise4:uint = 0x00868b;
		public static const violet:uint = 0xee82ee;
		public static const violetRed:uint = 0xd02090;
		public static const violetRed1:uint = 0xff3e96;
		public static const violetRed2:uint = 0xee3a8c;
		public static const violetRed3:uint = 0xcd3278;
		public static const violetRed4:uint = 0x8b2252;
		public static const wheat:uint = 0xf5deb3;
		public static const wheat1:uint = 0xffe7ba;
		public static const wheat2:uint = 0xeed8ae;
		public static const wheat3:uint = 0xcdba96;
		public static const wheat4:uint = 0x8b7e66;
		public static const white:uint = 0xffffff;
		public static const whiteSmoke:uint = 0xf5f5f5;
		public static const yellow:uint = 0xffff00;
		public static const yellow1:uint = 0xffff00;
		public static const yellow2:uint = 0xeeee00;
		public static const yellow3:uint = 0xcdcd00;
		public static const yellow4:uint = 0x8b8b00;
		public static const yellowGreen:uint = 0x9acd32;
	}
}
