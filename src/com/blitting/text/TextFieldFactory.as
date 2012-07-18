//
//  com.blitting.text.TextFieldFactory
//
//  Created by Jason Sturges.
//
package com.blitting.text
{
	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class TextFieldFactory
	{

		public static function construct(text:String, textFormat:TextFormat=null, autoSize:String=TextFieldAutoSize.LEFT, antiAliasType:String=AntiAliasType.ADVANCED):TextField
		{
			var tf:TextField = new TextField();

			if (textFormat)
			{
				tf.setTextFormat(textFormat);
				tf.defaultTextFormat = textFormat;
				tf.embedFonts = true;
			}
			tf.autoSize = autoSize;
			tf.antiAliasType = antiAliasType;

			tf.htmlText = text;

			return (tf);
		}

	}
}
