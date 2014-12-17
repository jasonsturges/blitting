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
import blitting.lifecycle.IDisposable;
import blitting.lifecycle.IInitializable;

import flash.display.Sprite;
import flash.geom.Point;
import flash.geom.Rectangle;

use namespace blitting_internal;

/**
 * bounds, registration point
 *
 * Provides base lifecycle for views.
 *
 * Implements IInitializable lifecycle
 *
 * <ul>
 *    <li>initialize()</li>
 * </ul>
 *
 * Implements IDisposable lifecycle
 *
 * <ul>
 *    <li>dispose()</li>
 * </ul>
 */
public class AbstractViewport extends Sprite implements IViewport, IInitializable, IDisposable {

    //------------------------------
    //  model
    //------------------------------

    /**
     * Viewport bounds (IViewport)
     */
    private var _bounds:Rectangle;

    public function get bounds():Rectangle {
        return _bounds;
    }

    public function set bounds(value:Rectangle):void {
        _bounds = value;
    }

    /**
     * Registration point (IViewport)
     */
    private var _registration:Point;

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
     * constructor
     */
    public function AbstractViewport() {
        super();

        initialize();
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
