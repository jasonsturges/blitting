/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.display {
import blitting.core.blitting_internal;

import flash.display.BitmapData;

use namespace blitting_internal;

/**
 *
 * @author Jason Sturges
 *
 */
public class BitmapRenderer extends AbstractRenderer implements IBitmapRenderer {

    //------------------------------
    //  model
    //------------------------------

    protected var bitmapData:BitmapData;


    //------------------------------
    //  lifecycle
    //------------------------------

    public function BitmapRenderer() {
        super();
    }

    override public function initialize():void {
        super.initialize();

        bitmapData = null;
    }

    public function render(bitmapData:BitmapData):void {
        this.bitmapData = bitmapData;
    }

    override public function dispose():void {
        super.dispose();

        bitmapData = null;
    }

}
}
