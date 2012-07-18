//
//  com.blitting.time.TimeSpan
//
//  Created by Jason Sturges.
//
package com.blitting.time
{

	public class TimeSpan
	{

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

		protected var time:Number = Number.POSITIVE_INFINITY;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function TimeSpan(time:Number=Number.POSITIVE_INFINITY)
		{
			this.time = time;
		}

		public function get days():Number
		{
			return time / MILLISECONDS_IN_DAY;
		}

		public function get hours():Number
		{
			return (time / MILLISECONDS_IN_HOUR) % 24;
		}

		public function get minutes():Number
		{
			return (time / MILLISECONDS_IN_MINUTE) % 60;
		}

		public function get seconds():Number
		{
			return (time / MILLISECONDS_IN_SECOND) % 60;
		}

		public function get milliseconds():Number
		{
			return time % 1000;
		}

		public function get totalDays():Number
		{
			return time / MILLISECONDS_IN_DAY;
		}

		public function get totalHours():Number
		{
			return time / MILLISECONDS_IN_HOUR;
		}

		public function get totalMinutes():Number
		{
			return time / MILLISECONDS_IN_MINUTE;
		}

		public function get totalSeconds():Number
		{
			return time / MILLISECONDS_IN_SECOND;
		}

		public function get totalMilliseconds():Number
		{
			return time;
		}

		public function add(timeSpan:TimeSpan):void
		{
			time += timeSpan.time;
		}

		public function subtract(timeSpan:TimeSpan):void
		{
			time -= timeSpan.time;
		}


		//------------------------------
		//  lifecycle - static
		//------------------------------

		public static function from(startDate:Date, endDate:Date):TimeSpan
		{
			return new TimeSpan(endDate.time - startDate.time);
		}

		public static function fromDays(days:Number):TimeSpan
		{
			return new TimeSpan(days * MILLISECONDS_IN_DAY);
		}

		public static function fromMinutes(minutes:Number):TimeSpan
		{
			return new TimeSpan(minutes * MILLISECONDS_IN_MINUTE);
		}

		public static function fromSeconds(seconds:Number):TimeSpan
		{
			return new TimeSpan(seconds * MILLISECONDS_IN_SECOND);
		}

		public static function fromMilliseconds(milliseconds:Number):TimeSpan
		{
			return new TimeSpan(milliseconds);
		}

		public static function until(date:Date):TimeSpan
		{
			return new TimeSpan(date.time - new Date().time);
		}

	}
}
