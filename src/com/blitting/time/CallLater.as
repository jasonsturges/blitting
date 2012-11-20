//
//  com.blitting.time.CallLater
//
//  Created by Jason Sturges.
//
package com.blitting.time
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	/**
	 * Setup a timer to call a handler once at a later time.
	 *
	 * <p>
	 * Example:
	 *
	 * <pre>
	 * new CallLater(exampleFunction2, 5000, "Hello", "World!").call();
	 * </pre>
	 * </p>
	 * @author jason
	 */
	public class CallLater
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		/**
		 * The delay to make the call, in ms.  If delay is 0, then make the call
		 * immediately; otherwise, defaulting to 1ms to execute next frame.
		 */
		private var _delay:int = 1;

		/**
		 *
		 */
		private var _callFunc:Function;

		/**
		 *
		 */
		private var _params:Array;

		/**
		 *
		 */
		private var _timer:Timer;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor
		 *
		 * @param callFunc The function to call.
		 * @param delay    The delay in ms to make the call.
		 * @param params   Parameters to be passed to the function.
		 */
		public function CallLater(callFunc:Function=null, delay:int=1, ... params:Array)
		{
			_callFunc = callFunc;
			_delay = delay;
			_params = params;
			_timer = null;
		}

		/**
		 * Call the function.
		 */
		public function call():void
		{
			var delay:int = (delay > 0) ? (delay) : (0);

			if (delay > 0 && !_timer)
			{
				// setup a timer to fire once
				_timer = new Timer(delay, 1);
				_timer.addEventListener(TimerEvent.TIMER, timerHandler);

				_timer.start();
			}
			else
			{
				doCallFunc();
			}
		}

		/**
		 *
		 *
		 */
		private function doCallFunc():void
		{
			// make the call
			if (_callFunc != null)
				_callFunc.apply(null, _params);

			// dispose			
			_callFunc = null;
			_params = null;
		}

		/**
		 *
		 * @param timerEvent
		 */
		private function timerHandler(timerEvent:TimerEvent):void
		{
			// dispose the timer
			_timer.reset();
			_timer.removeEventListener(TimerEvent.TIMER, timerHandler);
			_timer = null;

			doCallFunc();
		}

	}
}
