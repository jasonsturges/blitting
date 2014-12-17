/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.time {
import flash.events.TimerEvent;
import flash.utils.Timer;

/**
 * <p>
 * Dispatch timer events at random intervals.
 * </p>
 * <p>
 * Inherits from native flash.utils.Timer;
 * therefore, implemented using standard Timer patterns.<br />
 * </p>
 * <p>
 * Dispatches native flash.events.TimerEvent
 * of types TimerEvent.TIMER and TimerEvent.TIMER_COMPLETE.
 * </p>
 */
public class RandomTimer extends Timer {

    //------------------------------
    //  model
    //------------------------------

    /** Minimum possible delay for random timer signal. */
    public var minimumDelay:Number;

    /** Maximum possible delay for random timer signal. */
    public var maximumDelay:Number;

    /** _count */
    private var _count:uint = 0;

    /** _repeatCount */
    private var _repeatCount:int = 0;


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * constructor
     *
     * <p>
     * Create random timer dispatching events within
     * min / max millisecond values.<br />
     * </p>
     */
    public function RandomTimer(min:Number, max:Number, repeatCount:int = 0) {
        super(delay, repeatCount);

        minimumDelay = min;
        maximumDelay = max;
        _repeatCount = repeatCount;
    }

    /**
     * start
     *
     * <p>
     * Start the timer.  As the timer runs, random
     * delay periods will be set on each timer event.
     * </p>
     */
    override public function start():void {
        delay = nextDelay();
        addEventListener(TimerEvent.TIMER, timerHandler);
        super.start();
    }

    /**
     * Internal private function to determine next delay period.
     */
    private function nextDelay():Number {
        return (minimumDelay + (Math.random() * (maximumDelay - minimumDelay)));
    }

    /**
     * Stop the timer.
     */
    override public function stop():void {
        removeEventListener(TimerEvent.TIMER, timerHandler);
        super.stop();
    }

    /**
     * Handler on TimerEvent.TIMER, responsible for
     * changing delay to random value.
     *
     * When inheriting from RandomTimer, this override
     * provides a convenient implementation to timer
     * event handling without directly assigned.
     *
     * Example:
     * <pre><code>
     * public class FunctionTimer extends RandomTimer {
     *     private var _functions:Vector.&lt;Function&gt; = new &lt;Function&gt;[];
     *
     *     public function addFunction(f:Function):void {
     *         _functions.push(f);
     *     }
     *
     *     override protected function timerHandler(event:TimerEvent):void {
     *         super.timerHandler(event);
     *         for each(var f:Function in _functions) {
     *             if (f != null)
     *                 f();
     *         }
     *     }
     * }
     * </code></pre>
     */
    protected function timerHandler(event:TimerEvent):void {
        _count++;
        if ((_repeatCount > 0) && (_count >= _repeatCount)) {
            stop();
        }
        delay = nextDelay();
    }

}
}
