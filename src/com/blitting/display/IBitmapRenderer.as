package com.blitting.display {
import flash.display.BitmapData;

public interface IBitmapRenderer extends IRenderer {

    function render(bitmapData:BitmapData):void;

}
}
