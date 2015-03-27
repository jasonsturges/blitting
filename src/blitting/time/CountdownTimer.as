/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.time {
import blitting.lifecycle.IDisposable;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class CountdownTimer extends Timer implements IDisposable {

    //------------------------------
    //  model
    //------------------------------

    /**
     *
     */
    private var _time:Number = 0;

    public function get time():Number {
        return _time;
    }

    public function set time(value:Number):void {
        _time = value;
    }


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     *
     * @param time
     * @param delay
     */
    public function CountdownTimer(time:Number = Number.NEGATIVE_INFINITY, delay:Number = 1000) {
        super(delay, repeatCount);

        if (!isNaN(time))
            this.time = time;

        repeatCount = Math.ceil(time / delay);

        addEventListener(TimerEvent.TIMER, timerHandler);
        addEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteHandler);
    }

    /**
     *
     */
    override public function start():void {
        super.start();
    }

    /**
     *
     * @param event
     */
    protected function timerHandler(event:TimerEvent):void {
        time -= delay;
    }

    /**
     *
     * @param event
     */
    protected function timerCompleteHandler(event:TimerEvent):void {
    }

    /**
     *
     */
    override public function stop():void {
        super.stop();
    }

    /**
     * dispose (IDisposable)
     */
    public function dispose():void {
        removeEventListener(TimerEvent.TIMER, timerHandler);
        removeEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteHandler);
    }

}
}
