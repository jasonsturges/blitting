/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.math {

import flash.geom.Point;
import flash.geom.Rectangle;

/**
 * Geometric utility package of static methods.
 */
public class Geometry {

    /**
     * Convert radians to degrees.
     */
    public static function deg2rad(angle:Number):Number {
        angle = !isNaN(angle) ? (angle) : (0);

        return angle * Math.PI / 180;
    }

    /**
     * Distance between two points within the same
     * coordinate system.
     */
    public static function distance(x1:Number, y1:Number, x2:Number, y2:Number):Number {
        var dx:Number = x1 - x2;
        var dy:Number = y1 - y2;

        return Math.sqrt(dx * dx + dy * dy);
    }

    /**
     * Calculate angle of a point from a center point.
     */
    public static function polarAngle(point:Point, center:Point = null):Number {
        if (!center)
            center = new Point(0, 0);

        var degrees:Number = Geometry.rad2deg(Math.atan2(point.y - center.y, point.x - center.x));

        if (degrees < 0)
            degrees += 360;

        return degrees;
    }

    /**
     * Returns the x, y coordinate point on a circle for a given angle in degrees.
     */
    public static function pointOnCircle(degrees:Number, radius:Number):Point {
        var p:Point = new Point();

        p.x = radius + (radius * Math.cos(Geometry.deg2rad(degrees)));
        p.y = radius + (radius * Math.sin(Geometry.deg2rad(degrees)));

        return p;
    }

    /**
     * Cartesian point from circle center, angle, and radius.
     */
    public static function pointOnCircleFromPoint(center:Point, angle:Number, radius:Number):Point {
        var p:Point = new Point();

        p.x = center.x + Math.cos(angle * Math.PI / 180) * radius;
        p.y = center.y + Math.sin(angle * Math.PI / 180) * radius;

        return p;
    }

    /**
     * Returns the points on a bezier curve for a given time (0 - 1).
     */
    public static function pointOnCurve(p1x:Number, p1y:Number, cx:Number, cy:Number, p2x:Number, p2y:Number, t:Number):Point {
        return (new Point(p1x + t * (2 * (1 - t) * (cx - p1x) + t * (p2x - p1x)),
                        p1y + t * (2 * (1 - t) * (cy - p1y) + t * (p2y - p1y))));
    }

    /**
     * Convert degrees to radians.
     */
    public static function rad2deg(angle:Number):Number {
        angle = !isNaN(angle) ? (angle) : (0);

        return angle * 180 / Math.PI;
    }

    /**
     * Return a random degree.
     */
    public static function randomAngle():Number {
        return (Math.random() * 360);
    }

    public static function randomAngleBetween(min:Number, max:Number):Number {
        return (min + (Math.random() * Math.abs(max - min)));
    }

    /**
     * Whether a point is within a rectangular bounds.
     *
     * @param x         Point x-coordinate to be tested.
     * @param y         Point y-coordinate to be tested.
     * @param bounds    Rectangle boundary to be tested against.
     * @return          True if point is within bounds.
     */
    public static function withinBounds(x:Number, y:Number, bounds:Rectangle):Boolean {
        return ((x > bounds.x) &&
                (x < bounds.x + bounds.width) &&
                (y > bounds.y) &&
                (y < bounds.y + bounds.height));
    }

}
}
