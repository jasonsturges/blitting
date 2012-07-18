//
//  com.blitting.time.Temporal
//
//  Created by Jason Sturges.
//
package com.blitting.time
{

	public class Temporal
	{

		/**
		 * Whether the current time is Ante meridiem (AM) or
		 * Post meridiem (PM).
		 */
		public static function amPm(d:Date):String
		{
			return (d.hours > 11) ? "PM" : "AM";
		}

		/**
		 * Whether daylight savings time is currently observed.
		 */
		public static function isDaylightSavings(d:Date):Boolean
		{
			var months:uint = 12;
			var offset:uint = d.timezoneOffset;
			var offsetCheck:Number;

			while (months--)
			{
				offsetCheck = (new Date(d.getFullYear(), months, 1)).timezoneOffset;

				if (offsetCheck != offset)
					return (offsetCheck > offset);
			}

			return false;
		}

		/**
		 * Whether the current year is leap year.
		 */
		public static function isLeapYear(year:Number):Boolean
		{
			return daysInMonth(year, 1) == 29;
		}

		/**
		 * Numer of days in a month.
		 *
		 * @param year   Full year (ex: 2000) containing specified month.
		 * @param month  Month number (ex: 0=January, 11=December).
		 */
		public static function daysInMonth(year:Number, month:Number):Number
		{
			return (new Date(year, ++month, 0)).date;
		}

		/**
		 * Get today's date at start of day
		 * (zero-hour just past midnight).
		 */
		public static function today(d:Date):Date
		{
			var d:Date = new Date(d.time);
			d.hours = 0;
			d.minutes = 0;
			d.seconds = 0;
			d.milliseconds = 0;
			return d;
		}

	}
}
