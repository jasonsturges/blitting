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
public class DateUtil {

    /**
     * Whether the current time is Ante meridiem (AM) or
     * Post meridiem (PM), for 12-hour clock.
     */
    public static function meridiem(d:Date):String {
        return (d.hours > 11) ? "pm" : "am";
    }

    /**
     * Whether daylight savings time is currently observed.
     */
    public static function isDaylightSavings(d:Date):Boolean {
        var months:uint = 12;
        var offset:uint = d.timezoneOffset;
        var offsetCheck:Number;

        while (months--) {
            offsetCheck = (new Date(d.getFullYear(), months, 1)).timezoneOffset;

            if (offsetCheck != offset)
                return (offsetCheck > offset);
        }

        return false;
    }

    /**
     * Whether the specified year is leap year.
     */
    public static function isLeapYear(year:int):Boolean {
        return daysInMonth(year, 1) == 29;
    }

    /**
     * Number of days in the specified month.
     *
     * @param year   Full year as int (ex: 2000).
     * @param month  Month as int, zero-based (ex: 0=January, 11=December).
     */
    public static function daysInMonth(year:int, month:int):int {
        return (new Date(year, ++month, 0)).date;
    }

    /**
     * Get today's date at start of day.
     * (zero-hour, at midnight).
     */
    public static function today(date:Date = null):Date {
        if (date == null)
            date = new Date();

        return new Date(date.fullYear, date.month, date.date, 0, 0, 0, 0);
    }

}
}
