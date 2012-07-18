//
//  com.blitting.color.palette.ColorPalette
//
//  Created by Jason Sturges.
//
package com.blitting.color.palette
{

	/**
	 * Enumeration of 24-bit colors.
	 *
	 * Use the static Colors array of names for full enumeration.
	 *
	 * Example:
	 * <pre>
	 * for(var i:uint = 0; i &lt; ColorPalette.Colors.length; i++)
	 * {
	 *    var color:uint = ColorPalette[ColorPalette.Colors[i]];
	 * }
	 * </pre>
	 */
	public class ColorPalette
	{

		//------------------------------
		//  all colors
		//------------------------------

		/** Array of all colors defined. */
		public static const Colors:Array =
			[
			"airForceBlue",
			"aliceBlue",
			"alizarinCrimson",
			"almond",
			"amaranth",
			"amber",
			"amberSaeEce",
			"americanRose",
			"amethyst",
			"androidGreen",
			"antiFlashWhite",
			"antiqueBrass",
			"antiqueFuchsia",
			"antiqueWhite",
			"aoEnglish",
			"appleGreen",
			"apricot",
			"aqua",
			"aquamarine",
			"armyGreen",
			"arsenic",
			"arylideYellow",
			"ashGrey",
			"asparagus",
			"atomicTangerine",
			"auburn",
			"aureolin",
			"auroMetalSaurus",
			"awesome",
			"azure",
			"azureMistWeb",
			"babyBlue",
			"babyBlueEyes",
			"babyPink",
			"ballBlue",
			"bananaMania",
			"bananaYellow",
			"battleshipGrey",
			"bazaar",
			"beauBlue",
			"beaver",
			"beige",
			"bisque",
			"bistre",
			"bittersweet",
			"black",
			"blanchedAlmond",
			"bleuDeFrance",
			"blizzardBlue",
			"blond",
			"blue",
			"blueMunsell",
			"blueNcs",
			"bluePigment",
			"blueRyb",
			"blueBell",
			"blueGray",
			"blueGreen",
			"blueViolet",
			"blush",
			"bole",
			"bondiBlue",
			"bostonUniversityRed",
			"brandeisBlue",
			"brass",
			"brickRed",
			"brightCerulean",
			"brightGreen",
			"brightLavender",
			"brightMaroon",
			"brightPink",
			"brightTurquoise",
			"brightUbe",
			"brilliantLavender",
			"brilliantRose",
			"brinkPink",
			"britishRacingGreen",
			"bronze",
			"brownTraditional",
			"brownWeb",
			"bubbleGum",
			"bubbles",
			"buff",
			"bulgarianRose",
			"burgundy",
			"burlywood",
			"burntOrange",
			"burntSienna",
			"burntUmber",
			"byzantine",
			"byzantium",
			"cadet",
			"cadetBlue",
			"cadetGrey",
			"cadmiumGreen",
			"cadmiumOrange",
			"cadmiumRed",
			"cadmiumYellow",
			"calPolyPomonaGreen",
			"cambridgeBlue",
			"camel",
			"camouflageGreen",
			"canaryYellow",
			"candyAppleRed",
			"candyPink",
			"capri",
			"caputMortuum",
			"cardinal",
			"caribbeanGreen",
			"carmine",
			"carminePink",
			"carmineRed",
			"carnationPink",
			"carnelian",
			"carolinaBlue",
			"carrotOrange",
			"ceil",
			"celadon",
			"celestialBlue",
			"cerise",
			"cerisePink",
			"cerulean",
			"cceruleanBlue",
			"cgBlue",
			"cgRed",
			"chamoisee",
			"champagne",
			"charcoal",
			"chartreuseTraditional",
			"chartreuseWeb",
			"cherryBlossomPink",
			"chestnut",
			"chocolateTraditional",
			"chocolateWeb",
			"chromeYellow",
			"cinereous",
			"cinnabar",
			"cinnamon",
			"citrine",
			"classicRose",
			"cobalt",
			"cocoaBrown",
			"coffee",
			"columbiaBlue",
			"coolBlack",
			"coolGrey",
			"copper",
			"copperRose",
			"coquelicot",
			"coral",
			"coralPink",
			"coralRed",
			"cordovan",
			"corn",
			"cornellRed",
			"cornflowerBlue",
			"cornsilk",
			"cosmicLatte",
			"cottonCandy",
			"cream",
			"crimson",
			"crimsonGlory",
			"cyan",
			"cyanProcess",
			"daffodil",
			"dandelion",
			"darkBlue",
			"darkBrown",
			"darkByzantium",
			"darkCandyAppleRed",
			"darkCerulean",
			"darkChampagne",
			"darkChestnut",
			"darkCoral",
			"darkCyan",
			"darkElectricBlue",
			"darkGoldenrod",
			"darkGray",
			"darkGreen",
			"darkJungleGreen",
			"darkKhaki",
			"darkLava",
			"darkLavender",
			"darkMagenta",
			"darkMidnightBlue",
			"darkOliveGreen",
			"darkOrange",
			"darkOrchid",
			"darkPastelBlue",
			"darkPastelGreen",
			"darkPastelPurple",
			"darkPastelRed",
			"darkPink",
			"darkPowderBlue",
			"darkRaspberry",
			"darkRed",
			"darkSalmon",
			"darkScarlet",
			"darkSeaGreen",
			"darkSienna",
			"darkSlateBlue",
			"darkSlateGray",
			"darkSpringGreen",
			"darkTan",
			"darkTangerine",
			"darkTaupe",
			"darkTerraCotta",
			"darkTurquoise",
			"darkViolet",
			"dartmouthGreen",
			"davysGrey",
			"debianRed",
			"deepCarmine",
			"deepCarminePink",
			"deepCarrotOrange",
			"deepCerise",
			"deepChampagne",
			"deepChestnut",
			"deepFuchsia",
			"deepJungleGreen",
			"deepLilac",
			"deepMagenta",
			"deepPeach",
			"deepPink",
			"deepSaffron",
			"deepSkyBlue",
			"denim",
			"desert",
			"desertSand",
			"dimGray",
			"dodgerBlue",
			"dogwoodRose",
			"dollarBill",
			"drab",
			"dukeBlue",
			"earthYellow",
			"ecru",
			"eggplant",
			"eggshell",
			"egyptianBlue",
			"electricBlue",
			"electricCrimson",
			"electricCyan",
			"electricGreen",
			"electricIndigo",
			"electricLavender",
			"electricLime",
			"electricPurple",
			"electricUltramarine",
			"electricViolet",
			"electricYellow",
			"emerald",
			"etonBlue",
			"fallow",
			"faluRed",
			"fandango",
			"fashionFuchsia",
			"fawn",
			"feldgrau",
			"fernGreen",
			"ferrariRed",
			"fieldDrab",
			"firebrick",
			"fireEngineRed",
			"flame",
			"flamingoPink",
			"flavescent",
			"flax",
			"floralWhite",
			"fluorescentOrange",
			"fluorescentPink",
			"fluorescentYellow",
			"folly",
			"forestGreenTraditional",
			"forestGreenWeb",
			"frenchGeige",
			"frenchGlue",
			"frenchLilac",
			"frenchRose",
			"fuchsia",
			"fuchsiaPink",
			"fulvous",
			"fuzzyWuzzy",
			"gainsboro",
			"gamboge",
			"ghostWhite",
			"ginger",
			"glaucous",
			"goldMetallic",
			"goldWebGolden",
			"goldenBrown",
			"goldenPoppy",
			"goldenYellow",
			"goldenrod",
			"grannySmithApple",
			"gray",
			"grayHtmlCssGray",
			"grayX11Gray",
			"grayAsparagus",
			"greenColorWheelX11Green",
			"greenHtmlCssGreen",
			"greenMunsell",
			"greenNcs",
			"greenPigment",
			"greenRyb",
			"greenYellow",
			"grullo",
			"guppieGreen",
			"halayaUbe",
			"hanBlue",
			"hanPurple",
			"hansaYellow",
			"harlequin",
			"harvardCrimson",
			"harvestGold",
			"heartGold",
			"heliotrope",
			"hollywoodCerise",
			"honeydew",
			"hookersGreen",
			"hotMagenta",
			"hotPink",
			"hunterGreen",
			"iceberg",
			"icterine",
			"inchworm",
			"indiaGreen",
			"indianRed",
			"indianYellow",
			"indigoDye",
			"indigoWeb",
			"internationalKleinBlue",
			"internationalOrange",
			"iris",
			"isabelline",
			"islamicGreen",
			"ivory",
			"jade",
			"jasper",
			"jasmine",
			"jazzberryJam",
			"jonquil",
			"juneBud",
			"jungleGreen",
			"kellyGreen",
			"khakiHtmlCssKhaki",
			"khakiX11LightKhaki",
			"kuCrimson",
			"laSalleGreen",
			"languidLavender",
			"lapisLazuli",
			"laserLemon",
			"lava",
			"lavenderFloral",
			"lavenderWeb",
			"lavenderBlue",
			"lavenderBlush",
			"lavenderGray",
			"lavenderIndigo",
			"lavenderMagenta",
			"lavenderMist",
			"lavenderPink",
			"lavenderPurple",
			"lavenderRose",
			"lawnGreen",
			"lemon",
			"lemonChiffon",
			"lightApricot",
			"lightBlue",
			"lightBrown",
			"lightCarminePink",
			"lightCoral",
			"lightCornflowerBlue",
			"lightCrimson",
			"lightCyan",
			"lightFuchsiaPink",
			"lightGoldenrodYellow",
			"lightGray",
			"lightGreen",
			"lightKhaki",
			"lightMauve",
			"lightPastelPurple",
			"lightPink",
			"lightSalmon",
			"lightSalmonPink",
			"lightSeaGreen",
			"lightSkyBlue",
			"lightSlateGray",
			"lightTaupe",
			"lightThulianPink",
			"lightYellow",
			"lilac",
			"limeColorWheel",
			"limeWebX11Green",
			"limeGreen",
			"lincolnGreen",
			"linen",
			"liver",
			"lust",
			"magenta",
			"magentaDye",
			"magentaProcess",
			"magicMint",
			"magnolia",
			"mahogany",
			"maize",
			"majorelleBlue",
			"malachite",
			"manatee",
			"mangoTango",
			"maroonHtmlCss",
			"maroonX11",
			"mauve",
			"mauveTaupe",
			"mauvelous",
			"mayaBlue",
			"meatBrown",
			"mediumAquamarine",
			"mediumBlue",
			"mediumCandyAppleRed",
			"mediumCarmine",
			"mediumChampagne",
			"mediumElectricBlue",
			"mediumJungleGreen",
			"mediumLavenderMagenta",
			"mediumOrchid",
			"mediumPersianBlue",
			"mediumPurple",
			"mediumRedViolet",
			"mediumSeaGreen",
			"mediumSlateBlue",
			"mediumSpringBud",
			"mediumSpringGreen",
			"mediumTaupe",
			"mediumTealBlue",
			"mediumTurquoise",
			"mediumVioletRed",
			"melon",
			"midnightBlue",
			"midnightGreenEagleGreen",
			"mikadoYellow",
			"mint",
			"mintCream",
			"mintGreen",
			"mistyRose",
			"moccasin",
			"modeBeige",
			"moonstoneBlue",
			"mordantRed19",
			"mossGreen",
			"mountainMeadow",
			"mountbattenPink",
			"mulberry",
			"mustard",
			"myrtle",
			"msuGreen",
			"nadeshikoPink",
			"napierGreen",
			"naplesYellow",
			"navajoWhite",
			"navyBlue",
			"neonCarrot",
			"neonFuchsia",
			"neonGreen",
			"nonPhotoBlue",
			"oceanBoatBlue",
			"ochre",
			"officeGreen",
			"oldGold",
			"oldLace",
			"oldLavender",
			"oldMauve",
			"oldRose",
			"olive",
			"oliveDrabWebOliveDrab3",
			"oliveDrab7",
			"olivine",
			"onyx",
			"operaMauve",
			"orangeColorWheel",
			"orangeRyb",
			"orangeWebColor",
			"orangePeel",
			"orangeRed",
			"orchid",
			"otterBrown",
			"outerSpace",
			"outrageousOrange",
			"oxfordBlue",
			"ouCrimsonRed",
			"pakistanGreen",
			"palatinateBlue",
			"palatinatePurple",
			"paleAqua",
			"paleBlue",
			"paleBrown",
			"paleCarmine",
			"paleCerulean",
			"paleChestnut",
			"paleCopper",
			"paleCornflowerBlue",
			"paleGold",
			"paleGoldenrod",
			"paleGreen",
			"paleMagenta",
			"palePink",
			"palePlum",
			"paleRedViolet",
			"paleRobinEggBlue",
			"paleSilver",
			"paleSpringBud",
			"paleTaupe",
			"paleVioletRed",
			"pansyPurple",
			"papayaWhip",
			"parisGreen",
			"pastelBlue",
			"pastelBrown",
			"pastelGray",
			"pastelGreen",
			"pastelMagenta",
			"pastelOrange",
			"pastelPink",
			"pastelPurple",
			"pastelRed",
			"pastelViolet",
			"pastelYellow",
			"patriarch",
			"paynesGrey",
			"peach",
			"peachOrange",
			"peachPuff",
			"peachYellow",
			"pear",
			"pearl",
			"pearlAqua",
			"peridot",
			"periwinkle",
			"persianblue",
			"persianGreen",
			"persianIndigo",
			"persianOrange",
			"persianPink",
			"persianPlum",
			"persianRed",
			"persianRose",
			"persimmon",
			"phlox",
			"phthaloBlue",
			"phthaloGreen",
			"piggyPink",
			"pineGreen",
			"pink",
			"pinkOrange",
			"pinkPearl",
			"pinkSherbet",
			"pistachio",
			"platinum",
			"plumTraditional",
			"plumWeb",
			"portlandOrange",
			"powderBlueWeb",
			"princetonOrange",
			"prune",
			"prussianBlue",
			"psychedelicPurple",
			"puce",
			"pumpkin",
			"purpleHtmlCss",
			"purpleMunsell",
			"purpleX11",
			"purpleHeart",
			"purpleMountainMajesty",
			"purplePizzazz",
			"purpleTaupe",
			"quartz",
			"radicalRed",
			"raspberry",
			"raspberryGlace",
			"raspberryPink",
			"raspberryRose",
			"rawUmber",
			"razzleDazzleRose",
			"razzmatazz",
			"red",
			"redMunsell",
			"redNcs",
			"redPigment",
			"redRyb",
			"redBrown",
			"redViolet",
			"redwood",
			"regalia",
			"richBlack",
			"richBrilliantLavender",
			"richCarmine",
			"richElectricBlue",
			"richLavender",
			"richLilac",
			"richMaroon",
			"rifleGreen",
			"robinEggBlue",
			"rose",
			"roseBonbon",
			"roseEbony",
			"roseGold",
			"roseMadder",
			"rosePink",
			"roseQuartz",
			"roseTaupe",
			"roseVale",
			"rosewood",
			"rossoCorsa",
			"rosyBrown",
			"royalAzure",
			"royalBlueTraditional",
			"royalBlueWeb",
			"royalFuchsia",
			"royalPurple",
			"ruby",
			"ruddy",
			"ruddyBrown",
			"ruddyPink",
			"rufous",
			"russet",
			"rust",
			"sacramentoStateGreen",
			"saddleBrown",
			"safetyOrangeBlazeOrange",
			"saffron",
			"stPatricksBlue",
			"salmon",
			"salmonPink",
			"sand",
			"sandDune",
			"sandstorm",
			"sandyBrown",
			"sandyTaupe",
			"sangria",
			"sapGreen",
			"sapphire",
			"satinSheenGold",
			"scarlet",
			"schoolBusYellow",
			"screaminGreen",
			"seaGreen",
			"sealBrown",
			"seashell",
			"selectiveYellow",
			"sepia",
			"shadow",
			"shamrockGreen",
			"shockingPink",
			"sienna",
			"silver",
			"sinopia",
			"skobeloff",
			"skyBlue",
			"skyMagenta",
			"slateBlue",
			"slateGray",
			"smaltDarkPowderBlue",
			"smokeyTopaz",
			"smokyBlack",
			"snow",
			"spiroDiscoBall",
			"splashedWhite",
			"springBud",
			"springGreen",
			"steelBlue",
			"stilDeGrainYellow",
			"stizza",
			"straw",
			"sunglow",
			"sunset",
			"tan",
			"tangelo",
			"tangerine",
			"tangerineYellow",
			"taupe",
			"taupeGray",
			"teaGreen",
			"teaRoseOrange",
			"teaRoseRose",
			"teal",
			"tealBlue",
			"tealGreen",
			"tenneTawny",
			"terraCotta",
			"thistle",
			"thulianPink",
			"tickleMePink",
			"tiffanyBlue",
			"tigersEye",
			"timberwolf",
			"titaniumYellow",
			"tomato",
			"toolbox",
			"topaz",
			"tractorRed",
			"trolleyGrey",
			"tropicalRainForest",
			"trueBlue",
			"tuftsBlue",
			"tumbleweed",
			"turkishRose",
			"turquoise",
			"turquoiseBlue",
			"turquoiseGreen",
			"tuscanRed",
			"twilightLavender",
			"tyrianPurple",
			"uaBlue",
			"uaRed",
			"ube",
			"uclaBlue",
			"uclkaGold",
			"ufoGreen",
			"ultramarine",
			"ultramarineBlue",
			"ultraPink",
			"umber",
			"unitedNationsBlue",
			"universityOfCaliforniaGold",
			"unmellowYellow",
			"upForestGreen",
			"upMaroon",
			"upsdellRed",
			"urobilin",
			"uscCardinal",
			"uscGold",
			"utahCrimson",
			"vanilla",
			"vegasGold",
			"venetianRed",
			"verdigris",
			"vermilion",
			"veronica",
			"violet",
			"violetColorwheel",
			"violetRyb",
			"violetWeb",
			"viridian",
			"vividAuburn",
			"vividBurgundy",
			"vividCerise",
			"vividTangerine",
			"vividViolet",
			"warmBlack",
			"wenge",
			"wheat",
			"white",
			"whiteSmoke",
			"wildBlueYonder",
			"wildStrawberry",
			"wildWatermelon",
			"wine",
			"wisteria",
			"xanadu",
			"yaleBlue",
			"yellow",
			"yellowMunsell",
			"yellowNcs",
			"yellowProcess",
			"yellowRyb",
			"yellowGreen",
			"yellowOrange",
			"zaffre",
			"zinnwalditeBrown"
			];


































		//------------------------------
		//  colors
		//------------------------------

		public static const airForceBlue:uint = 0x5d8aa8;
		public static const aliceBlue:uint = 0xf0f8ff;
		public static const alizarinCrimson:uint = 0xe32636;
		public static const almond:uint = 0xefdecd;
		public static const amaranth:uint = 0xe52b50;
		public static const amber:uint = 0xffbf00;
		public static const amberSaeEce:uint = 0xff7e00;
		public static const americanRose:uint = 0xff033e;
		public static const amethyst:uint = 0x9966cc;
		public static const androidGreen:uint = 0xa4c639;
		public static const antiFlashWhite:uint = 0xf2f3f4;
		public static const antiqueBrass:uint = 0xcd9575;
		public static const antiqueFuchsia:uint = 0x915c83;
		public static const antiqueWhite:uint = 0xfaebd7;
		public static const aoEnglish:uint = 0x008000;
		public static const appleGreen:uint = 0x8db600;
		public static const apricot:uint = 0xfbceb1;
		public static const aqua:uint = 0x00ffff;
		public static const aquamarine:uint = 0x7fffd4;
		public static const armyGreen:uint = 0x4b5320;
		public static const arsenic:uint = 0x3b444b;
		public static const arylideYellow:uint = 0xe9d66b;
		public static const ashGrey:uint = 0xb2beb5;
		public static const asparagus:uint = 0x87a96b;
		public static const atomicTangerine:uint = 0xff9966;
		public static const auburn:uint = 0xa52a2a;
		public static const aureolin:uint = 0xfdee00;
		public static const auroMetalSaurus:uint = 0x6e7f80;
		public static const awesome:uint = 0xff2052;
		public static const azure:uint = 0x007fff;
		public static const azureMistWeb:uint = 0xf0ffff;
		public static const babyBlue:uint = 0x89cff0;
		public static const babyBlueEyes:uint = 0xa1caf1;
		public static const babyPink:uint = 0xf4c2c2;
		public static const ballBlue:uint = 0x21abcd;
		public static const bananaMania:uint = 0xfae7b5;
		public static const bananaYellow:uint = 0xffe135;
		public static const battleshipGrey:uint = 0x848482;
		public static const bazaar:uint = 0x98777b;
		public static const beauBlue:uint = 0xbcd4e6;
		public static const beaver:uint = 0x9f8170;
		public static const beige:uint = 0xf5f5dc;
		public static const bisque:uint = 0xffe4c4;
		public static const bistre:uint = 0x3d2b1f;
		public static const bittersweet:uint = 0xfe6f5e;
		public static const black:uint = 0x000000;
		public static const blanchedAlmond:uint = 0xffebcd;
		public static const bleuDeFrance:uint = 0x318ce7;
		public static const blizzardBlue:uint = 0xace5ee;
		public static const blond:uint = 0xfaf0be;
		public static const blue:uint = 0x0000ff;
		public static const blueMunsell:uint = 0x0093af;
		public static const blueNcs:uint = 0x0087bd;
		public static const bluePigment:uint = 0x333399;
		public static const blueRyb:uint = 0x0247fe;
		public static const blueBell:uint = 0xa2a2d0;
		public static const blueGray:uint = 0x6699cc;
		public static const blueGreen:uint = 0x00dddd;
		public static const blueViolet:uint = 0x8a2be2;
		public static const blush:uint = 0xde5d83;
		public static const bole:uint = 0x79443b;
		public static const bondiBlue:uint = 0x0095b6;
		public static const bostonUniversityRed:uint = 0xcc0000;
		public static const brandeisBlue:uint = 0x0070ff;
		public static const brass:uint = 0xb5a642;
		public static const brickRed:uint = 0xcb4154;
		public static const brightCerulean:uint = 0x1dacd6;
		public static const brightGreen:uint = 0x66ff00;
		public static const brightLavender:uint = 0xbf94e4;
		public static const brightMaroon:uint = 0xc32148;
		public static const brightPink:uint = 0xff007f;
		public static const brightTurquoise:uint = 0x08e8de;
		public static const brightUbe:uint = 0xd19fe8;
		public static const brilliantLavender:uint = 0xf4bbff;
		public static const brilliantRose:uint = 0xff55a3;
		public static const brinkPink:uint = 0xfb607f;
		public static const britishRacingGreen:uint = 0x004225;
		public static const bronze:uint = 0xcd7f32;
		public static const brownTraditional:uint = 0x964b00;
		public static const brownWeb:uint = 0xa52a2a;
		public static const bubbleGum:uint = 0xffc1cc;
		public static const bubbles:uint = 0xe7feff;
		public static const buff:uint = 0xf0dc82;
		public static const bulgarianRose:uint = 0x480607;
		public static const burgundy:uint = 0x800020;
		public static const burlywood:uint = 0xdeb887;
		public static const burntOrange:uint = 0xcc5500;
		public static const burntSienna:uint = 0xe97451;
		public static const burntUmber:uint = 0x8a3324;
		public static const byzantine:uint = 0xbd33a4;
		public static const byzantium:uint = 0x702963;
		public static const cadet:uint = 0x536872;
		public static const cadetBlue:uint = 0x5f9ea0;
		public static const cadetGrey:uint = 0x91a3b0;
		public static const cadmiumGreen:uint = 0x006b3c;
		public static const cadmiumOrange:uint = 0xed872d;
		public static const cadmiumRed:uint = 0xe30022;
		public static const cadmiumYellow:uint = 0xfff600;
		public static const calPolyPomonaGreen:uint = 0x1e4d2b;
		public static const cambridgeBlue:uint = 0xa3c1ad;
		public static const camel:uint = 0xc19a6b;
		public static const camouflageGreen:uint = 0x78866b;
		public static const canaryYellow:uint = 0xffef00;
		public static const candyAppleRed:uint = 0xff0800;
		public static const candyPink:uint = 0xe4717a;
		public static const capri:uint = 0x00bfff;
		public static const caputMortuum:uint = 0x592720;
		public static const cardinal:uint = 0xc41e3a;
		public static const caribbeanGreen:uint = 0x00cc99;
		public static const carmine:uint = 0x960018;
		public static const carminePink:uint = 0xeb4c42;
		public static const carmineRed:uint = 0xff0038;
		public static const carnationPink:uint = 0xffa6c9;
		public static const carnelian:uint = 0xb31b1b;
		public static const carolinaBlue:uint = 0x99badd;
		public static const carrotOrange:uint = 0xed9121;
		public static const ceil:uint = 0x92a1cf;
		public static const celadon:uint = 0xace1af;
		public static const celestialBlue:uint = 0x4997d0;
		public static const cerise:uint = 0xde3163;
		public static const cerisePink:uint = 0xec3b83;
		public static const cerulean:uint = 0x007ba7;
		public static const cceruleanBlue:uint = 0x2a52be;
		public static const cgBlue:uint = 0x007aa5;
		public static const cgRed:uint = 0xe03c31;
		public static const chamoisee:uint = 0xa0785a;
		public static const champagne:uint = 0xf7e7ce;
		public static const charcoal:uint = 0x36454f;
		public static const chartreuseTraditional:uint = 0xdfff00;
		public static const chartreuseWeb:uint = 0x7fff00;
		public static const cherryBlossomPink:uint = 0xffb7c5;
		public static const chestnut:uint = 0xcd5c5c;
		public static const chocolateTraditional:uint = 0x7b3f00;
		public static const chocolateWeb:uint = 0xd2691e;
		public static const chromeYellow:uint = 0xffa700;
		public static const cinereous:uint = 0x98817b;
		public static const cinnabar:uint = 0xe34234;
		public static const cinnamon:uint = 0xd2691e;
		public static const citrine:uint = 0xe4d00a;
		public static const classicRose:uint = 0xfbcce7;
		public static const cobalt:uint = 0x0047ab;
		public static const cocoaBrown:uint = 0xd2691e;
		public static const coffee:uint = 0xc86428;
		public static const columbiaBlue:uint = 0x9bddff;
		public static const coolBlack:uint = 0x002e63;
		public static const coolGrey:uint = 0x8c92ac;
		public static const copper:uint = 0xb87333;
		public static const copperRose:uint = 0x996666;
		public static const coquelicot:uint = 0xff3800;
		public static const coral:uint = 0xff7f50;
		public static const coralPink:uint = 0xf88379;
		public static const coralRed:uint = 0xff4040;
		public static const cordovan:uint = 0x893f45;
		public static const corn:uint = 0xfbec5d;
		public static const cornellRed:uint = 0xb31b1b;
		public static const cornflowerBlue:uint = 0x6495ed;
		public static const cornsilk:uint = 0xfff8dc;
		public static const cosmicLatte:uint = 0xfff8e7;
		public static const cottonCandy:uint = 0xffbcd9;
		public static const cream:uint = 0xfffdd0;
		public static const crimson:uint = 0xdc143c;
		public static const crimsonGlory:uint = 0xbe0032;
		public static const cyan:uint = 0x00ffff;
		public static const cyanProcess:uint = 0x00b7eb;
		public static const daffodil:uint = 0xffff31;
		public static const dandelion:uint = 0xf0e130;
		public static const darkBlue:uint = 0x00008b;
		public static const darkBrown:uint = 0x654321;
		public static const darkByzantium:uint = 0x5d3954;
		public static const darkCandyAppleRed:uint = 0xa40000;
		public static const darkCerulean:uint = 0x08457e;
		public static const darkChampagne:uint = 0xc2b280;
		public static const darkChestnut:uint = 0x986960;
		public static const darkCoral:uint = 0xcd5b45;
		public static const darkCyan:uint = 0x008b8b;
		public static const darkElectricBlue:uint = 0x536878;
		public static const darkGoldenrod:uint = 0xb8860b;
		public static const darkGray:uint = 0xa9a9a9;
		public static const darkGreen:uint = 0x013220;
		public static const darkJungleGreen:uint = 0x1a2421;
		public static const darkKhaki:uint = 0xbdb76b;
		public static const darkLava:uint = 0x483c32;
		public static const darkLavender:uint = 0x734f96;
		public static const darkMagenta:uint = 0x8b008b;
		public static const darkMidnightBlue:uint = 0x003366;
		public static const darkOliveGreen:uint = 0x556b2f;
		public static const darkOrange:uint = 0xff8c00;
		public static const darkOrchid:uint = 0x9932cc;
		public static const darkPastelBlue:uint = 0x779ecb;
		public static const darkPastelGreen:uint = 0x03c03c;
		public static const darkPastelPurple:uint = 0x966fd6;
		public static const darkPastelRed:uint = 0xc23b22;
		public static const darkPink:uint = 0xe75480;
		public static const darkPowderBlue:uint = 0x003399;
		public static const darkRaspberry:uint = 0x872657;
		public static const darkRed:uint = 0x8b0000;
		public static const darkSalmon:uint = 0xe9967a;
		public static const darkScarlet:uint = 0x560319;
		public static const darkSeaGreen:uint = 0x8fbc8f;
		public static const darkSienna:uint = 0x3c1414;
		public static const darkSlateBlue:uint = 0x483d8b;
		public static const darkSlateGray:uint = 0x2f4f4f;
		public static const darkSpringGreen:uint = 0x177245;
		public static const darkTan:uint = 0x918151;
		public static const darkTangerine:uint = 0xffa812;
		public static const darkTaupe:uint = 0x483c32;
		public static const darkTerraCotta:uint = 0xcc4e5c;
		public static const darkTurquoise:uint = 0x00ced1;
		public static const darkViolet:uint = 0x9400d3;
		public static const dartmouthGreen:uint = 0x00693e;
		public static const davysGrey:uint = 0x555555;
		public static const debianRed:uint = 0xd70a53;
		public static const deepCarmine:uint = 0xa9203e;
		public static const deepCarminePink:uint = 0xef3038;
		public static const deepCarrotOrange:uint = 0xe9692c;
		public static const deepCerise:uint = 0xda3287;
		public static const deepChampagne:uint = 0xfad6a5;
		public static const deepChestnut:uint = 0xb94e48;
		public static const deepFuchsia:uint = 0xc154c1;
		public static const deepJungleGreen:uint = 0x004b49;
		public static const deepLilac:uint = 0x9955bb;
		public static const deepMagenta:uint = 0xcc00cc;
		public static const deepPeach:uint = 0xffcba4;
		public static const deepPink:uint = 0xff1493;
		public static const deepSaffron:uint = 0xff9933;
		public static const deepSkyBlue:uint = 0x00bfff;
		public static const denim:uint = 0x1560bd;
		public static const desert:uint = 0xc19a6b;
		public static const desertSand:uint = 0xedc9af;
		public static const dimGray:uint = 0x696969;
		public static const dodgerBlue:uint = 0x1e90ff;
		public static const dogwoodRose:uint = 0xd71868;
		public static const dollarBill:uint = 0x85bb65;
		public static const drab:uint = 0x967117;
		public static const dukeBlue:uint = 0x00009c;
		public static const earthYellow:uint = 0xe1a95f;
		public static const ecru:uint = 0xc2b280;
		public static const eggplant:uint = 0x614051;
		public static const eggshell:uint = 0xf0ead6;
		public static const egyptianBlue:uint = 0x1034a6;
		public static const electricBlue:uint = 0x7df9ff;
		public static const electricCrimson:uint = 0xff003f;
		public static const electricCyan:uint = 0x00ffff;
		public static const electricGreen:uint = 0x00ff00;
		public static const electricIndigo:uint = 0x6f00ff;
		public static const electricLavender:uint = 0xf4bbff;
		public static const electricLime:uint = 0xccff00;
		public static const electricPurple:uint = 0xbf00ff;
		public static const electricUltramarine:uint = 0x3f00ff;
		public static const electricViolet:uint = 0x8f00ff;
		public static const electricYellow:uint = 0xffff00;
		public static const emerald:uint = 0x50c878;
		public static const etonBlue:uint = 0x96c8a2;
		public static const fallow:uint = 0xc19a6b;
		public static const faluRed:uint = 0x801818;
		public static const fandango:uint = 0xb53389;
		public static const fashionFuchsia:uint = 0xf400a1;
		public static const fawn:uint = 0xe5aa70;
		public static const feldgrau:uint = 0x4d5d53;
		public static const fernGreen:uint = 0x4f7942;
		public static const ferrariRed:uint = 0xff2800;
		public static const fieldDrab:uint = 0x6c541e;
		public static const firebrick:uint = 0xb22222;
		public static const fireEngineRed:uint = 0xce2029;
		public static const flame:uint = 0xe25822;
		public static const flamingoPink:uint = 0xfc8eac;
		public static const flavescent:uint = 0xf7e98e;
		public static const flax:uint = 0xeedc82;
		public static const floralWhite:uint = 0xfffaf0;
		public static const fluorescentOrange:uint = 0xffbf00;
		public static const fluorescentPink:uint = 0xff1493;
		public static const fluorescentYellow:uint = 0xccff00;
		public static const folly:uint = 0xff004f;
		public static const forestGreenTraditional:uint = 0x014421;
		public static const forestGreenWeb:uint = 0x228b22;
		public static const frenchGeige:uint = 0xa67b5b;
		public static const frenchGlue:uint = 0x0072bb;
		public static const frenchLilac:uint = 0x86608e;
		public static const frenchRose:uint = 0xf64a8a;
		public static const fuchsia:uint = 0xff00ff;
		public static const fuchsiaPink:uint = 0xff77ff;
		public static const fulvous:uint = 0xe48400;
		public static const fuzzyWuzzy:uint = 0xcc6666;
		public static const gainsboro:uint = 0xdcdcdc;
		public static const gamboge:uint = 0xe49b0f;
		public static const ghostWhite:uint = 0xf8f8ff;
		public static const ginger:uint = 0xb06500;
		public static const glaucous:uint = 0x6082b6;
		public static const goldMetallic:uint = 0xd4af37;
		public static const goldWebGolden:uint = 0xffd700;
		public static const goldenBrown:uint = 0x996515;
		public static const goldenPoppy:uint = 0xfcc200;
		public static const goldenYellow:uint = 0xffdf00;
		public static const goldenrod:uint = 0xdaa520;
		public static const grannySmithApple:uint = 0xa8e4a0;
		public static const gray:uint = 0x808080;
		public static const grayHtmlCssGray:uint = 0x7f7f7f;
		public static const grayX11Gray:uint = 0xbebebe;
		public static const grayAsparagus:uint = 0x465945;
		public static const greenColorWheelX11Green:uint = 0x00ff00;
		public static const greenHtmlCssGreen:uint = 0x008000;
		public static const greenMunsell:uint = 0x00a877;
		public static const greenNcs:uint = 0x009f6b;
		public static const greenPigment:uint = 0x00a550;
		public static const greenRyb:uint = 0x66b032;
		public static const greenYellow:uint = 0xadff2f;
		public static const grullo:uint = 0xa99a86;
		public static const guppieGreen:uint = 0x00ff7f;
		public static const halayaUbe:uint = 0x663854;
		public static const hanBlue:uint = 0x446ccf;
		public static const hanPurple:uint = 0x5218fa;
		public static const hansaYellow:uint = 0xe9d66b;
		public static const harlequin:uint = 0x3fff00;
		public static const harvardCrimson:uint = 0xc90016;
		public static const harvestGold:uint = 0xda9100;
		public static const heartGold:uint = 0x808000;
		public static const heliotrope:uint = 0xdf73ff;
		public static const hollywoodCerise:uint = 0xf400a1;
		public static const honeydew:uint = 0xf0fff0;
		public static const hookersGreen:uint = 0x007000;
		public static const hotMagenta:uint = 0xff1dce;
		public static const hotPink:uint = 0xff69b4;
		public static const hunterGreen:uint = 0x355e3b;
		public static const iceberg:uint = 0x71a6d2;
		public static const icterine:uint = 0xfcf75e;
		public static const inchworm:uint = 0xb2ec5d;
		public static const indiaGreen:uint = 0x138808;
		public static const indianRed:uint = 0xcd5c5c;
		public static const indianYellow:uint = 0xe3a857;
		public static const indigoDye:uint = 0x00416a;
		public static const indigoWeb:uint = 0x4b0082;
		public static const internationalKleinBlue:uint = 0x002fa7;
		public static const internationalOrange:uint = 0xff4f00;
		public static const iris:uint = 0x5a4fcf;
		public static const isabelline:uint = 0xf4f0ec;
		public static const islamicGreen:uint = 0x009000;
		public static const ivory:uint = 0xfffff0;
		public static const jade:uint = 0x00a86b;
		public static const jasper:uint = 0xd73b3e;
		public static const jasmine:uint = 0xf8de7e;
		public static const jazzberryJam:uint = 0xa50b5e;
		public static const jonquil:uint = 0xfada5e;
		public static const juneBud:uint = 0xbdda57;
		public static const jungleGreen:uint = 0x29ab87;
		public static const kellyGreen:uint = 0x4cbb17;
		public static const khakiHtmlCssKhaki:uint = 0xc3b091;
		public static const khakiX11LightKhaki:uint = 0xf0e68c;
		public static const kuCrimson:uint = 0xe8000d;
		public static const laSalleGreen:uint = 0x087830;
		public static const languidLavender:uint = 0xd6cadd;
		public static const lapisLazuli:uint = 0x26619c;
		public static const laserLemon:uint = 0xfefe22;
		public static const lava:uint = 0xcf1020;
		public static const lavenderFloral:uint = 0xb57edc;
		public static const lavenderWeb:uint = 0xe6e6fa;
		public static const lavenderBlue:uint = 0xccccff;
		public static const lavenderBlush:uint = 0xfff0f5;
		public static const lavenderGray:uint = 0xc4c3d0;
		public static const lavenderIndigo:uint = 0x9457eb;
		public static const lavenderMagenta:uint = 0xee82ee;
		public static const lavenderMist:uint = 0xe6e6fa;
		public static const lavenderPink:uint = 0xfbaed2;
		public static const lavenderPurple:uint = 0x967bb6;
		public static const lavenderRose:uint = 0xfba0e3;
		public static const lawnGreen:uint = 0x7cfc00;
		public static const lemon:uint = 0xfff700;
		public static const lemonChiffon:uint = 0xfffacd;
		public static const lightApricot:uint = 0xfdd5b1;
		public static const lightBlue:uint = 0xadd8e6;
		public static const lightBrown:uint = 0xb5651d;
		public static const lightCarminePink:uint = 0xe66771;
		public static const lightCoral:uint = 0xf08080;
		public static const lightCornflowerBlue:uint = 0x93ccea;
		public static const lightCrimson:uint = 0xf56991;
		public static const lightCyan:uint = 0xe0ffff;
		public static const lightFuchsiaPink:uint = 0xf984ef;
		public static const lightGoldenrodYellow:uint = 0xfafad2;
		public static const lightGray:uint = 0xd3d3d3;
		public static const lightGreen:uint = 0x90ee90;
		public static const lightKhaki:uint = 0xf0e68c;
		public static const lightMauve:uint = 0xdcd0ff;
		public static const lightPastelPurple:uint = 0xb19cd9;
		public static const lightPink:uint = 0xffb6c1;
		public static const lightSalmon:uint = 0xffa07a;
		public static const lightSalmonPink:uint = 0xff9999;
		public static const lightSeaGreen:uint = 0x20b2aa;
		public static const lightSkyBlue:uint = 0x87ceeb;
		public static const lightSlateGray:uint = 0x778899;
		public static const lightTaupe:uint = 0xb38b6d;
		public static const lightThulianPink:uint = 0xe68fac;
		public static const lightYellow:uint = 0xffffed;
		public static const lilac:uint = 0xc8a2c8;
		public static const limeColorWheel:uint = 0xbfff00;
		public static const limeWebX11Green:uint = 0x00ff00;
		public static const limeGreen:uint = 0x32cd32;
		public static const lincolnGreen:uint = 0x195905;
		public static const linen:uint = 0xfaf0e6;
		public static const liver:uint = 0x534b4f;
		public static const lust:uint = 0xe62020;
		public static const magenta:uint = 0xff00ff;
		public static const magentaDye:uint = 0xca1f7b;
		public static const magentaProcess:uint = 0xff0090;
		public static const magicMint:uint = 0xaaf0d1;
		public static const magnolia:uint = 0xf8f4ff;
		public static const mahogany:uint = 0xc04000;
		public static const maize:uint = 0xfbec5d;
		public static const majorelleBlue:uint = 0x6050dc;
		public static const malachite:uint = 0x0bda51;
		public static const manatee:uint = 0x979aaa;
		public static const mangoTango:uint = 0xff8243;
		public static const maroonHtmlCss:uint = 0x800000;
		public static const maroonX11:uint = 0xb03060;
		public static const mauve:uint = 0xe0b0ff;
		public static const mauveTaupe:uint = 0x915f6d;
		public static const mauvelous:uint = 0xef98aa;
		public static const mayaBlue:uint = 0x73c2fb;
		public static const meatBrown:uint = 0xe5b73b;
		public static const mediumAquamarine:uint = 0x66ddaa;
		public static const mediumBlue:uint = 0x0000cd;
		public static const mediumCandyAppleRed:uint = 0xe2062c;
		public static const mediumCarmine:uint = 0xaf4035;
		public static const mediumChampagne:uint = 0xf3e5ab;
		public static const mediumElectricBlue:uint = 0x035096;
		public static const mediumJungleGreen:uint = 0x1c352d;
		public static const mediumLavenderMagenta:uint = 0xdda0dd;
		public static const mediumOrchid:uint = 0xba55d3;
		public static const mediumPersianBlue:uint = 0x0067a5;
		public static const mediumPurple:uint = 0x9370db;
		public static const mediumRedViolet:uint = 0xbb3385;
		public static const mediumSeaGreen:uint = 0x3cb371;
		public static const mediumSlateBlue:uint = 0x7b68ee;
		public static const mediumSpringBud:uint = 0xc9dc87;
		public static const mediumSpringGreen:uint = 0x00fa9a;
		public static const mediumTaupe:uint = 0x674c47;
		public static const mediumTealBlue:uint = 0x0054b4;
		public static const mediumTurquoise:uint = 0x48d1cc;
		public static const mediumVioletRed:uint = 0xc71585;
		public static const melon:uint = 0xfdbcb4;
		public static const midnightBlue:uint = 0x191970;
		public static const midnightGreenEagleGreen:uint = 0x004953;
		public static const mikadoYellow:uint = 0xffc40c;
		public static const mint:uint = 0x3eb489;
		public static const mintCream:uint = 0xf5fffa;
		public static const mintGreen:uint = 0x98ff98;
		public static const mistyRose:uint = 0xffe4e1;
		public static const moccasin:uint = 0xfaebd7;
		public static const modeBeige:uint = 0x967117;
		public static const moonstoneBlue:uint = 0x73a9c2;
		public static const mordantRed19:uint = 0xae0c00;
		public static const mossGreen:uint = 0xaddfad;
		public static const mountainMeadow:uint = 0x30ba8f;
		public static const mountbattenPink:uint = 0x997a8d;
		public static const mulberry:uint = 0xc54b8c;
		public static const mustard:uint = 0xffdb58;
		public static const myrtle:uint = 0x21421e;
		public static const msuGreen:uint = 0x18453b;
		public static const nadeshikoPink:uint = 0xf6adc6;
		public static const napierGreen:uint = 0x2a8000;
		public static const naplesYellow:uint = 0xfada5e;
		public static const navajoWhite:uint = 0xffdead;
		public static const navyBlue:uint = 0x000080;
		public static const neonCarrot:uint = 0xffa343;
		public static const neonFuchsia:uint = 0xfe59c2;
		public static const neonGreen:uint = 0x39ff14;
		public static const nonPhotoBlue:uint = 0xa4dded;
		public static const oceanBoatBlue:uint = 0x0077be;
		public static const ochre:uint = 0xcc7722;
		public static const officeGreen:uint = 0x008000;
		public static const oldGold:uint = 0xcfb53b;
		public static const oldLace:uint = 0xfdf5e6;
		public static const oldLavender:uint = 0x796878;
		public static const oldMauve:uint = 0x673147;
		public static const oldRose:uint = 0xc08081;
		public static const olive:uint = 0x808000;
		public static const oliveDrabWebOliveDrab3:uint = 0x6b8e23;
		public static const oliveDrab7:uint = 0x3c341f;
		public static const olivine:uint = 0x9ab973;
		public static const onyx:uint = 0x0f0f0f;
		public static const operaMauve:uint = 0xb784a7;
		public static const orangeColorWheel:uint = 0xff7f00;
		public static const orangeRyb:uint = 0xfb9902;
		public static const orangeWebColor:uint = 0xffa500;
		public static const orangePeel:uint = 0xff9f00;
		public static const orangeRed:uint = 0xff4500;
		public static const orchid:uint = 0xda70d6;
		public static const otterBrown:uint = 0x654321;
		public static const outerSpace:uint = 0x414a4c;
		public static const outrageousOrange:uint = 0xff6e4a;
		public static const oxfordBlue:uint = 0x002147;
		public static const ouCrimsonRed:uint = 0x990000;
		public static const pakistanGreen:uint = 0x006600;
		public static const palatinateBlue:uint = 0x273be2;
		public static const palatinatePurple:uint = 0x682860;
		public static const paleAqua:uint = 0xbcd4e6;
		public static const paleBlue:uint = 0xafeeee;
		public static const paleBrown:uint = 0x987654;
		public static const paleCarmine:uint = 0xaf4035;
		public static const paleCerulean:uint = 0x9bc4e2;
		public static const paleChestnut:uint = 0xddadaf;
		public static const paleCopper:uint = 0xda8a67;
		public static const paleCornflowerBlue:uint = 0xabcdef;
		public static const paleGold:uint = 0xe6be8a;
		public static const paleGoldenrod:uint = 0xeee8aa;
		public static const paleGreen:uint = 0x98fb98;
		public static const paleMagenta:uint = 0xf984e5;
		public static const palePink:uint = 0xfadadd;
		public static const palePlum:uint = 0xdda0dd;
		public static const paleRedViolet:uint = 0xdb7093;
		public static const paleRobinEggBlue:uint = 0x96ded1;
		public static const paleSilver:uint = 0xc9c0bb;
		public static const paleSpringBud:uint = 0xecebbd;
		public static const paleTaupe:uint = 0xbc987e;
		public static const paleVioletRed:uint = 0xdb7093;
		public static const pansyPurple:uint = 0x78184a;
		public static const papayaWhip:uint = 0xffefd5;
		public static const parisGreen:uint = 0x50c878;
		public static const pastelBlue:uint = 0xaec6cf;
		public static const pastelBrown:uint = 0x836953;
		public static const pastelGray:uint = 0xcfcfc4;
		public static const pastelGreen:uint = 0x77dd77;
		public static const pastelMagenta:uint = 0xf49ac2;
		public static const pastelOrange:uint = 0xffb347;
		public static const pastelPink:uint = 0xffd1dc;
		public static const pastelPurple:uint = 0xb39eb5;
		public static const pastelRed:uint = 0xff6961;
		public static const pastelViolet:uint = 0xcb99c9;
		public static const pastelYellow:uint = 0xfdfd96;
		public static const patriarch:uint = 0x800080;
		public static const paynesGrey:uint = 0x40404f;
		public static const peach:uint = 0xffe5b4;
		public static const peachOrange:uint = 0xffcc99;
		public static const peachPuff:uint = 0xffdab9;
		public static const peachYellow:uint = 0xfadfad;
		public static const pear:uint = 0xd1e231;
		public static const pearl:uint = 0xf0ead6;
		public static const pearlAqua:uint = 0x88d8c0;
		public static const peridot:uint = 0xe6e200;
		public static const periwinkle:uint = 0xccccff;
		public static const persianblue:uint = 0x1c39bb;
		public static const persianGreen:uint = 0x00a693;
		public static const persianIndigo:uint = 0x32127a;
		public static const persianOrange:uint = 0xd99058;
		public static const persianPink:uint = 0xf77fbe;
		public static const persianPlum:uint = 0x701c1c;
		public static const persianRed:uint = 0xcc3333;
		public static const persianRose:uint = 0xfe28a2;
		public static const persimmon:uint = 0xec5800;
		public static const phlox:uint = 0xdf00ff;
		public static const phthaloBlue:uint = 0x000f89;
		public static const phthaloGreen:uint = 0x123524;
		public static const piggyPink:uint = 0xfddde6;
		public static const pineGreen:uint = 0x01796f;
		public static const pink:uint = 0xffc0cb;
		public static const pinkOrange:uint = 0xff9966;
		public static const pinkPearl:uint = 0xe7accf;
		public static const pinkSherbet:uint = 0xf78fa7;
		public static const pistachio:uint = 0x93c572;
		public static const platinum:uint = 0xe5e4e2;
		public static const plumTraditional:uint = 0x8e4585;
		public static const plumWeb:uint = 0xdda0dd;
		public static const portlandOrange:uint = 0xff5a36;
		public static const powderBlueWeb:uint = 0xb0e0e6;
		public static const princetonOrange:uint = 0xff8f00;
		public static const prune:uint = 0x701c1c;
		public static const prussianBlue:uint = 0x003153;
		public static const psychedelicPurple:uint = 0xdf00ff;
		public static const puce:uint = 0xcc8899;
		public static const pumpkin:uint = 0xff7518;
		public static const purpleHtmlCss:uint = 0x800080;
		public static const purpleMunsell:uint = 0x9f00c5;
		public static const purpleX11:uint = 0xa020f0;
		public static const purpleHeart:uint = 0x69359c;
		public static const purpleMountainMajesty:uint = 0x9678b6;
		public static const purplePizzazz:uint = 0xfe4eda;
		public static const purpleTaupe:uint = 0x50404d;
		public static const quartz:uint = 0x51484f;
		public static const radicalRed:uint = 0xff355e;
		public static const raspberry:uint = 0xe30b5d;
		public static const raspberryGlace:uint = 0x915f6d;
		public static const raspberryPink:uint = 0xe25098;
		public static const raspberryRose:uint = 0xb3446c;
		public static const rawUmber:uint = 0x826644;
		public static const razzleDazzleRose:uint = 0xff33cc;
		public static const razzmatazz:uint = 0xe3256b;
		public static const red:uint = 0xff0000;
		public static const redMunsell:uint = 0xf2003c;
		public static const redNcs:uint = 0xc40233;
		public static const redPigment:uint = 0xed1c24;
		public static const redRyb:uint = 0xfe2712;
		public static const redBrown:uint = 0xa52a2a;
		public static const redViolet:uint = 0xc71585;
		public static const redwood:uint = 0xab4e52;
		public static const regalia:uint = 0x522d80;
		public static const richBlack:uint = 0x004040;
		public static const richBrilliantLavender:uint = 0xf1a7fe;
		public static const richCarmine:uint = 0xd70040;
		public static const richElectricBlue:uint = 0x0892d0;
		public static const richLavender:uint = 0xa76bcf;
		public static const richLilac:uint = 0xb666d2;
		public static const richMaroon:uint = 0xb03060;
		public static const rifleGreen:uint = 0x414833;
		public static const robinEggBlue:uint = 0x00cccc;
		public static const rose:uint = 0xff007f;
		public static const roseBonbon:uint = 0xf9429e;
		public static const roseEbony:uint = 0x674846;
		public static const roseGold:uint = 0xb76e79;
		public static const roseMadder:uint = 0xe32636;
		public static const rosePink:uint = 0xff66cc;
		public static const roseQuartz:uint = 0xaa98a9;
		public static const roseTaupe:uint = 0x905d5d;
		public static const roseVale:uint = 0xab4e52;
		public static const rosewood:uint = 0x65000b;
		public static const rossoCorsa:uint = 0xd40000;
		public static const rosyBrown:uint = 0xbc8f8f;
		public static const royalAzure:uint = 0x0038a8;
		public static const royalBlueTraditional:uint = 0x002366;
		public static const royalBlueWeb:uint = 0x4169e1;
		public static const royalFuchsia:uint = 0xca2c92;
		public static const royalPurple:uint = 0x7851a9;
		public static const ruby:uint = 0xe0115f;
		public static const ruddy:uint = 0xff0028;
		public static const ruddyBrown:uint = 0xbb6528;
		public static const ruddyPink:uint = 0xe18e96;
		public static const rufous:uint = 0xa81c07;
		public static const russet:uint = 0x80461b;
		public static const rust:uint = 0xb7410e;
		public static const sacramentoStateGreen:uint = 0x00563f;
		public static const saddleBrown:uint = 0x8b4513;
		public static const safetyOrangeBlazeOrange:uint = 0xff6700;
		public static const saffron:uint = 0xf4c430;
		public static const stPatricksBlue:uint = 0x23297a;
		public static const salmon:uint = 0xff8c69;
		public static const salmonPink:uint = 0xff91a4;
		public static const sand:uint = 0xc2b280;
		public static const sandDune:uint = 0x967117;
		public static const sandstorm:uint = 0xecd540;
		public static const sandyBrown:uint = 0xf4a460;
		public static const sandyTaupe:uint = 0x967117;
		public static const sangria:uint = 0x92000a;
		public static const sapGreen:uint = 0x507d2a;
		public static const sapphire:uint = 0x082567;
		public static const satinSheenGold:uint = 0xcba135;
		public static const scarlet:uint = 0xff2400;
		public static const schoolBusYellow:uint = 0xffd800;
		public static const screaminGreen:uint = 0x76ff7a;
		public static const seaGreen:uint = 0x2e8b57;
		public static const sealBrown:uint = 0x321414;
		public static const seashell:uint = 0xfff5ee;
		public static const selectiveYellow:uint = 0xffba00;
		public static const sepia:uint = 0x704214;
		public static const shadow:uint = 0x8a795d;
		public static const shamrockGreen:uint = 0x009e60;
		public static const shockingPink:uint = 0xfc0fc0;
		public static const sienna:uint = 0x882d17;
		public static const silver:uint = 0xc0c0c0;
		public static const sinopia:uint = 0xcb410b;
		public static const skobeloff:uint = 0x007474;
		public static const skyBlue:uint = 0x87ceeb;
		public static const skyMagenta:uint = 0xcf71af;
		public static const slateBlue:uint = 0x6a5acd;
		public static const slateGray:uint = 0x708090;
		public static const smaltDarkPowderBlue:uint = 0x003399;
		public static const smokeyTopaz:uint = 0x933d41;
		public static const smokyBlack:uint = 0x100c08;
		public static const snow:uint = 0xfffafa;
		public static const spiroDiscoBall:uint = 0x0fc0fc;
		public static const splashedWhite:uint = 0xfefdff;
		public static const springBud:uint = 0xa7fc00;
		public static const springGreen:uint = 0x00ff7f;
		public static const steelBlue:uint = 0x4682b4;
		public static const stilDeGrainYellow:uint = 0xfada5e;
		public static const stizza:uint = 0x990000;
		public static const straw:uint = 0xe4d96f;
		public static const sunglow:uint = 0xffcc33;
		public static const sunset:uint = 0xfad6a5;
		public static const tan:uint = 0xd2b48c;
		public static const tangelo:uint = 0xf94d00;
		public static const tangerine:uint = 0xf28500;
		public static const tangerineYellow:uint = 0xffcc00;
		public static const taupe:uint = 0x483c32;
		public static const taupeGray:uint = 0x8b8589;
		public static const teaGreen:uint = 0xd0f0c0;
		public static const teaRoseOrange:uint = 0xf88379;
		public static const teaRoseRose:uint = 0xf4c2c2;
		public static const teal:uint = 0x008080;
		public static const tealBlue:uint = 0x367588;
		public static const tealGreen:uint = 0x006d5b;
		public static const tenneTawny:uint = 0xcd5700;
		public static const terraCotta:uint = 0xe2725b;
		public static const thistle:uint = 0xd8bfd8;
		public static const thulianPink:uint = 0xde6fa1;
		public static const tickleMePink:uint = 0xfc89ac;
		public static const tiffanyBlue:uint = 0x0abab5;
		public static const tigersEye:uint = 0xe08d3c;
		public static const timberwolf:uint = 0xdbd7d2;
		public static const titaniumYellow:uint = 0xeee600;
		public static const tomato:uint = 0xff6347;
		public static const toolbox:uint = 0x746cc0;
		public static const topaz:uint = 0xffc87c;
		public static const tractorRed:uint = 0xfd0e35;
		public static const trolleyGrey:uint = 0x808080;
		public static const tropicalRainForest:uint = 0x00755e;
		public static const trueBlue:uint = 0x0073cf;
		public static const tuftsBlue:uint = 0x417dc1;
		public static const tumbleweed:uint = 0xdeaa88;
		public static const turkishRose:uint = 0xb57281;
		public static const turquoise:uint = 0x30d5c8;
		public static const turquoiseBlue:uint = 0x00ffef;
		public static const turquoiseGreen:uint = 0xa0d6b4;
		public static const tuscanRed:uint = 0x66424d;
		public static const twilightLavender:uint = 0x8a496b;
		public static const tyrianPurple:uint = 0x66023c;
		public static const uaBlue:uint = 0x0033aa;
		public static const uaRed:uint = 0xd9004c;
		public static const ube:uint = 0x8878c3;
		public static const uclaBlue:uint = 0x536895;
		public static const uclkaGold:uint = 0xffb300;
		public static const ufoGreen:uint = 0x3cd070;
		public static const ultramarine:uint = 0x120a8f;
		public static const ultramarineBlue:uint = 0x4166f5;
		public static const ultraPink:uint = 0xff6fff;
		public static const umber:uint = 0x635147;
		public static const unitedNationsBlue:uint = 0x5b92e5;
		public static const universityOfCaliforniaGold:uint = 0xb78727;
		public static const unmellowYellow:uint = 0xffff66;
		public static const upForestGreen:uint = 0x014421;
		public static const upMaroon:uint = 0x7b1113;
		public static const upsdellRed:uint = 0xae2029;
		public static const urobilin:uint = 0xe1ad21;
		public static const uscCardinal:uint = 0x990000;
		public static const uscGold:uint = 0xffcc00;
		public static const utahCrimson:uint = 0xd3003f;
		public static const vanilla:uint = 0xf3e5ab;
		public static const vegasGold:uint = 0xc5b358;
		public static const venetianRed:uint = 0xc80815;
		public static const verdigris:uint = 0x43b3ae;
		public static const vermilion:uint = 0xe34234;
		public static const veronica:uint = 0xa020f0;
		public static const violet:uint = 0x8f00ff;
		public static const violetColorwheel:uint = 0x7f00ff;
		public static const violetRyb:uint = 0x8601af;
		public static const violetWeb:uint = 0xee82ee;
		public static const viridian:uint = 0x40826d;
		public static const vividAuburn:uint = 0x922724;
		public static const vividBurgundy:uint = 0x9f1d35;
		public static const vividCerise:uint = 0xda1d81;
		public static const vividTangerine:uint = 0xffa089;
		public static const vividViolet:uint = 0x9f00ff;
		public static const warmBlack:uint = 0x004242;
		public static const wenge:uint = 0x645452;
		public static const wheat:uint = 0xf5deb3;
		public static const white:uint = 0xffffff;
		public static const whiteSmoke:uint = 0xf5f5f5;
		public static const wildBlueYonder:uint = 0xa2add0;
		public static const wildStrawberry:uint = 0xff43a4;
		public static const wildWatermelon:uint = 0xfc6c85;
		public static const wine:uint = 0x722f37;
		public static const wisteria:uint = 0xc9a0dc;
		public static const xanadu:uint = 0x738678;
		public static const yaleBlue:uint = 0x0f4d92;
		public static const yellow:uint = 0xffff00;
		public static const yellowMunsell:uint = 0xefcc00;
		public static const yellowNcs:uint = 0xffd300;
		public static const yellowProcess:uint = 0xffef00;
		public static const yellowRyb:uint = 0xfefe33;
		public static const yellowGreen:uint = 0x9acd32;
		public static const yellowOrange:uint = 0xffef02;
		public static const zaffre:uint = 0x0014a8;
		public static const zinnwalditeBrown:uint = 0x2c1608;

	}
}
