/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.display {
import blitting.core.blitting_internal;

import flash.display.DisplayObject;
import flash.display.Graphics;

use namespace blitting_internal;

/**
 *
 * @author Jason Sturges
 *
 */
public class GraphicsRenderer extends AbstractRenderer implements IGraphicsRenderer {

    //------------------------------
    //  model
    //------------------------------

    protected var displayObject:DisplayObject;

    protected var graphics:Graphics;


    //------------------------------
    //  lifecycle
    //------------------------------

    public function GraphicsRenderer() {
        super();
    }

    override public function initialize():void {
        super.initialize();

        displayObject = null;
        graphics = null;
    }

    public function render(graphics:Graphics, displayObject:DisplayObject = null):void {
        this.displayObject = displayObject;
        this.graphics = graphics;
    }

    override public function dispose():void {
        super.dispose();

        displayObject = null;
        graphics = null;
    }

}
}
