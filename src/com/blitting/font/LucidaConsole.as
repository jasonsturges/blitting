//  
//  com.blitting.font.LucidaConsole
//
//  Created by Jason Sturges.
//
package com.blitting.font
{
	import flash.text.Font;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	/**
	 * U+0020-U+002F,  Space + Punctuation [ !"#$%&amp;'()*+,-./ ]
	 * U+0030-U+0039,  Numbers [0..9]
	 * U+003A-U+0040,  Special Chars [ :;&lt;=&gt;?@ ]
	 * U+0041-U+005A,  Upper-Case [A..Z]
	 * U+005B-U+0060,  Special Chars [ [\]^_` ]
	 * U+0061-U+007A,  Lower-Case a-z
	 * U+007B-U+007E,  Special Chars [ {|}~ ]
	 * U+00A1-U+00A1,  Latin Character: ¡
	 * U+00A3-U+00A3,  British Pound Symbol
	 * U+00A9-U+00A9,  Copyright Symbol
	 * U+00AE-U+00AE,  Registered Symbol
	 * U+00B0-U+00B0,  Degrees Symbol
	 * U+00BC-U+00BE,  Fractions Symbols
	 * U+00BF-U+00BF,  Latin Character: ¿
	 * U+00C0-U+00FF,  Latin Characters
	 * U+2013-U+2014,  EN Dash, EM Dash
	 * U+2018-U+2019,  Directional Single Quotes
	 * U+201C-U+201D,  Directional Double Quotes
	 * U+2022-U+2023,  Bullets
	 * U+2120-U+2120,  SM
	 * U+2122-U+2122   Trade mark (TM)
	 */
	public class LucidaConsole
	{

		[Embed(systemFont = "Lucida Console", fontWeight = "Regular", fontName = "Lucida Console", mimeType = "application/x-font", embedAsCFF = "false", unicodeRange = "U+0020-U+002F,U+0030-U+0039,U+003A-U+0040,U+0041-U+005A,U+005B-U+0060,U+0061-U+007A,U+007B-U+007E,U+00A1-U+00A1,U+00A3-U+00A3,U+00A9-U+00A9,U+00AE-U+00AE,U+00B0-U+00B0,U+00BC-U+00BE,U+00BF-U+00BF,U+00C0-U+00FF,U+2013-U+2014,U+2018-U+2019,U+201C-U+201D,U+2022-U+2023,U+2120-U+2120,U+2122-U+2122")]
		private static const _regular:Class;

		public static function regular(size:int=12, color:uint=0x000000, align:String=TextFormatAlign.LEFT, bold:Boolean=false, italic:Boolean=false):TextFormat
		{
			Font.registerFont(LucidaConsole._regular);

			var tf:TextFormat = new TextFormat();
			tf.font = "Lucida Console";
			tf.bold = bold;
			tf.size = size;
			tf.color = color;
			tf.align = TextFormatAlign.LEFT;

			return (tf);
		}

	}
}
