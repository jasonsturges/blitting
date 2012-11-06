//
//  com.blitting.time.CountdownTimer
//
//  Created by Jason Sturges.
//
package com.blitting.time
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	public class CountdownTimer extends Timer
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 *
		 */
		protected var time:Number = 0;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 *
		 * @param time
		 * @param delay
		 */
		public function CountdownTimer(time:Number=Number.NEGATIVE_INFINITY, delay:Number=1000)
		{
			super(delay, repeatCount);

			if (isNaN(time))
				this.time = 0;
			else
				this.time = time;

			repeatCount = Math.ceil(time / delay);
		}

		/**
		 *
		 *
		 */
		override public function start():void
		{
			super.start();

			addEventListener(TimerEvent.TIMER, timerHandler);
			addEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteHandler);
		}

		/**
		 *
		 * @param event
		 *
		 */
		protected function timerHandler(event:TimerEvent):void
		{
			time -= delay;
		}

		/**
		 *
		 * @param event
		 *
		 */
		protected function timerCompleteHandler(event:TimerEvent):void
		{
		}

		/**
		 *
		 *
		 */
		override public function stop():void
		{
			super.stop();

			removeEventListener(TimerEvent.TIMER, timerHandler);
			removeEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteHandler);
		}

	}
}
