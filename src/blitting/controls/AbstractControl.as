/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.controls {
import blitting.core.RenderType;
import blitting.display.BufferedViewport;
import blitting.lifecycle.IInitializable;

public class AbstractControl extends BufferedViewport implements IControl, IInitializable {

    //------------------------------
    //  model
    //------------------------------

    /**
     * value
     */
    private var _value:Object;

    [Inspectable]
    public function get value():Object {
        return _value;
    }

    public function set value(value:Object):void {
        if (_value == value)
            return;

        _value = value;
        invalidate();
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * constructor
     */
    public function AbstractControl() {
        super();

        renderType = RenderType.ON_INVALIDATION;
    }

    /**
     * initialize
     */
    override public function initialize():void {
        super.initialize();

        value = null;
    }

}
}
