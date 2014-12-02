package com.blitting.model {
import com.blitting.lifecycle.IInitializable;

import flash.net.registerClassAlias;

[RemoteClass(alias="com.blitting.time.TimeSpan")]
public class TimeSpan implements IInitializable {

    //------------------------------
    //  const
    //------------------------------

    public static const MILLISECONDS_IN_DAY:Number = 86400000;
    public static const MILLISECONDS_IN_HOUR:Number = 3600000;
    public static const MILLISECONDS_IN_MINUTE:Number = 60000;
    public static const MILLISECONDS_IN_SECOND:Number = 1000;


    //------------------------------
    //  model
    //------------------------------

    /**
     *
     */
    protected var time:Number = Number.POSITIVE_INFINITY;

    /**
     * Milliseconds component of time interval.
     */
    public function get milliseconds():int {
        return time % 1000;
    }

    /**
     * Number of milliseconds that represent the TimeSpan structure.
     */
    public function get totalMilliseconds():Number {
        return time;
    }

    public function set totalMilliseconds(value:Number):void {
        time = value;
    }

    /**
     * Seconds component of time interval.
     */
    public function get seconds():int {
        return ((time / MILLISECONDS_IN_SECOND) % 60) | 0;
    }

    /**
     * Value of the time interval expressed in whole and fractional seconds.
     */
    public function get totalSeconds():Number {
        return time / MILLISECONDS_IN_SECOND;
    }

    public function set totalSeconds(value:Number):void {
        time = value * MILLISECONDS_IN_SECOND;
    }

    /**
     * Minutes component of time interval.
     */
    public function get minutes():int {
        return ((time / MILLISECONDS_IN_MINUTE) % 60) | 0;
    }

    /**
     * Value of the time interval expressed in whole and fractional minutes.
     */
    public function get totalMinutes():Number {
        return time / MILLISECONDS_IN_MINUTE;
    }

    public function set totalMinutes(value:Number):void {
        time = value * MILLISECONDS_IN_MINUTE;
    }

    /**
     * Hours component of time interval.
     */
    public function get hours():int {
        return ((time / MILLISECONDS_IN_HOUR) % 24) | 0;
    }

    /**
     * Value of the time interval expressed in whole and fractional hours.
     */
    public function get totalHours():Number {
        return time / MILLISECONDS_IN_HOUR;
    }

    public function set totalHours(value:Number):void {
        time = value * MILLISECONDS_IN_HOUR;
    }

    /**
     * Days component of time interval.
     */
    public function get days():int {
        return (time / MILLISECONDS_IN_DAY) | 0;
    }

    /**
     * Value of the time interval expressed in whole and fractional days.
     */
    public function get totalDays():Number {
        return time / MILLISECONDS_IN_DAY;
    }

    public function set totalDays(value:Number):void {
        time = value * MILLISECONDS_IN_DAY;
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     *
     * @param time
     */
    public function TimeSpan(time:Number = Number.POSITIVE_INFINITY) {
        this.time = time;
    }

    /**
     * IInitialize initialization.
     */
    public function initialize():void {
        this.time = Number.POSITIVE_INFINITY;
    }

    /**
     *
     * @param timeSpan
     *
     */
    public function add(timeSpan:TimeSpan):void {
        time += timeSpan.time;
    }

    /**
     *
     * @param timeSpan
     *
     */
    public function subtract(timeSpan:TimeSpan):void {
        time -= timeSpan.time;
    }

    /**
     *
     * @param startDate
     * @param endDate
     * @return
     *
     */
    public static function from(startDate:Date, endDate:Date):TimeSpan {
        return new TimeSpan(endDate.time - startDate.time);
    }

    /**
     *
     * @param days
     * @return
     *
     */
    public static function fromDays(days:Number):TimeSpan {
        return new TimeSpan(days * MILLISECONDS_IN_DAY);
    }

    /**
     *
     * @param minutes
     * @return
     *
     */
    public static function fromMinutes(minutes:Number):TimeSpan {
        return new TimeSpan(minutes * MILLISECONDS_IN_MINUTE);
    }

    /**
     *
     * @param seconds
     * @return
     *
     */
    public static function fromSeconds(seconds:Number):TimeSpan {
        return new TimeSpan(seconds * MILLISECONDS_IN_SECOND);
    }

    /**
     *
     * @param milliseconds
     * @return
     *
     */
    public static function fromMilliseconds(milliseconds:Number):TimeSpan {
        return new TimeSpan(milliseconds);
    }

    /**
     *
     * @param date
     * @return
     *
     */
    public static function until(date:Date):TimeSpan {
        return new TimeSpan(date.time - new Date().time);
    }

    /**
     *
     */
    public static function registerClass():void {
        registerClassAlias("com.blitting.time.TimeSpan", TimeSpan);
    }

}
}
