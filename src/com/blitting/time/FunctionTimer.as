//
//  com.blitting.examples.time.FunctionTimer
//
//  Created by Jason Sturges.
//
package com.blitting.time
{
	import flash.events.TimerEvent;

	/**
	 * Extension of RandomTimer, executing functions
	 * at random intervals.
	 */
	public class FunctionTimer extends RandomTimer
	{
		include "../core/Version.as";
		
		
		//------------------------------
		//  model
		//------------------------------

		/** Functions to be executed on timer event. */
		private var _functions:Vector.<Function>;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor, as RandomTimer.
		 *
		 * @param min
		 * @param max
		 * @param repeatCount
		 */
		public function FunctionTimer(min:Number, max:Number, repeatCount:int=0)
		{
			super(min, max, repeatCount);

			_functions = new Vector.<Function>();
		}

		/**
		 * Add a function to be executed on timer event.
		 */
		public function addFunction(f:Function):void
		{
			_functions.push(f);
		}

		/**
		 * Execute function on timer event.@param event
		 */
		override protected function timerHandler(event:TimerEvent):void
		{
			super.timerHandler(event);

			for each (var f:Function in _functions)
			{
				if (f != null)
					f();
			}
		}

	}
}
