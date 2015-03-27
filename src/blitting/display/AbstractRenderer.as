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
import blitting.core.Blitting;
import blitting.core.blitting_internal;
import blitting.lifecycle.IDisposable;
import blitting.lifecycle.IInitializable;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.geom.Point;
import flash.geom.Rectangle;

use namespace blitting_internal;

/**
 *
 * @author Jason Sturges
 *
 */
public class AbstractRenderer extends EventDispatcher implements IRenderer, IViewport, IInitializable, IDisposable {

    //------------------------------
    //  model
    //------------------------------

    /**
     * Rendering engine.
     */
    blitting_internal static const blitting:Blitting = Blitting.getInstance();

    /**
     * Viewport bounds (IViewport)
     */
    private var _bounds:Rectangle = new Rectangle();

    public function get bounds():Rectangle {
        return _bounds;
    }

    public function set bounds(value:Rectangle):void {
        _bounds = value;
    }

    /**
     * Registration point (IViewport)
     */
    private var _registration:Point = new Point();

    public function get registration():Point {
        return _registration;
    }

    public function set registration(value:Point):void {
        _registration = value;
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     *
     */
    public function AbstractRenderer(target:IEventDispatcher = null) {
        super(target);
    }

    /**
     * initialize (IInitializable)
     */
    public function initialize():void {
        bounds = new Rectangle();
        registration = new Point();
    }

    /**
     * dispose (IDisposable)
     */
    public function dispose():void {
        bounds = null;
        registration = null;
    }

}
}
