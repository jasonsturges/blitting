/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.text {
import blitting.model.IFactory;

import flash.text.AntiAliasType;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

public class TextFieldFactory implements IFactory {

    public static function construct(text:String, textFormat:TextFormat = null, autoSize:String = TextFieldAutoSize.LEFT, antiAliasType:String = AntiAliasType.ADVANCED):TextField {
        var tf:TextField = new TextField();

        if (textFormat) {
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
