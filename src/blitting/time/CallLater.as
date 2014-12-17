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
 * Setup a timer to call a handler once at a later time.
 *
 * Example:
 * <pre><code>
 * new CallLater(5000, exampleFunction, "Hello", "World!").call();
 * </code></pre>
 *
 * @author Jason Sturges
 */
public class CallLater {

    //------------------------------
    //  model
    //------------------------------

    /**
     * The delay to make the call, in ms.  If delay is 0, then make the call
     * immediately; otherwise, defaulting to 1ms to execute next frame.
     */
    protected var delay:int = 1;

    /**
     * An object that specifies the value of `this` object within the function body.
     */
    protected var scope:*;

    /**
     * The function to call.
     */
    protected var callback:Function;

    /**
     * Parameters to be passed to the function.
     */
    protected var params:Array;

    /**
     * Timer to dispatch time to call.
     */
    protected var timer:Timer;


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * Constructor
     *
     * @param delay    The delay in ms to make the call.
     * @param scope    An object that specifies the value of `this` object within the function body.
     * @param callback The function to call.
     * @param params   Parameters to be passed to the function.
     */
    public function CallLater(delay:int = 1, scope:* = null, callback:Function = null, ...params:Array) {
        this.delay = delay;
        this.scope = scope;
        this.callback = callback;
        this.params = params;

        timer = null;
    }

    /**
     * Call the function.
     */
    public function call():void {
        var delay:int = (delay > 0) ? (delay) : (0);

        if (delay > 0 && !timer) {
            timer = new Timer(delay, 1);
            timer.addEventListener(TimerEvent.TIMER, timerHandler);
            timer.start();
        }
        else {
            callHandler();
        }
    }

    /**
     * Handler to execute the call function.
     */
    protected function callHandler():void {
        if (callback != null)
            callback.apply(scope, params);

        callback = null;
        params = null;
    }

    /**
     *
     * @param timerEvent The type of the event
     */
    protected function timerHandler(timerEvent:TimerEvent):void {
        timer.reset();
        timer.removeEventListener(TimerEvent.TIMER, timerHandler);
        timer = null;

        callHandler();
    }

}
}
