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
import flash.geom.Point;
import flash.geom.Rectangle;

public interface IViewport {

    function get bounds():Rectangle;

    function set bounds(value:Rectangle):void;

    function get registration():Point;

    function set registration(value:Point):void;

}
}
