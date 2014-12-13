//
//  blitting.math.Numeric
//
//  Created by Jason Sturges.
//
package blitting.math {

public class Numeric {

    /**
     * Convert a ratio to a value, using the min and max values
     */
    public static function convertRatioToValue(value:Number, minValue:Number, maxValue:Number):Number {
        return (value * (maxValue - minValue)) + minValue;
    }

    /**
     * Convert a value to a ratio, using the min and max values
     */
    public static function convertValueToRatio(value:Number, minValue:Number, maxValue:Number):Number {
        var ratio:Number = 0.0;

        if (minValue != maxValue)
            ratio = (value - minValue) / (maxValue - minValue);

        return ratio;
    }

    /**
     * Check equality of two numbers.  Return true if both numbers are NaN.
     */
    public static function equalsNumber(num1:Number, num2:Number):Boolean {
        return ((isNaN(num1) && isNaN(num2)) || (num1 == num2));
    }

    /**
     * Whether a number is odd value.
     *
     * If floating point value is passed, only the characteristic
     * is evaluated (ie: whole number left of the decimal).
     *
     * Example:
     *
     *     Numeric.isOdd(1); // true
     *     Numeric.isOdd(2); // false
     *
     *     Numeric.isOdd(1.1); // true
     *     Numeric.isOdd(1.2); // true
     *     Numeric.isOdd(2.1); // false
     *     Numeric.isOdd(2.2); // false
     */
    public static function isOdd(n:Number):Boolean {
        return ((n & 1) == 1);
    }

    /**
     * Whether a number is even value.
     *
     * If floating point value is passed, only the characteristic
     * is evaluated (ie: whole number left of the decimal).
     *
     * Example:
     *
     *     Numeric.isEven(1); // false
     *     Numeric.isEven(2); // true
     *
     *     Numeric.isEven(1.1); // false
     *     Numeric.isEven(1.2); // false
     *     Numeric.isEven(2.1); // true
     *     Numeric.isEven(2.2); // true
     */
    public static function isEven(n:Number):Boolean {
        return ((n & 1) == 0);
    }

    /**
     * Format a number with thousands separator
     *
     * Formats the characteristic, leaving the mantissa.
     */
    public static function formatThousandsSeparator(value:String):String {
        var d:int = value.indexOf('.');
        if (d < 0)
            d = value.length;
        var s:String = value.substr(0, d);
        s = s.replace(/(\d)(?=(\d\d\d)+$)/g, "$1,");
        s += value.substr(d, (value.length - d));
        return (s);
    }

    /**
     * Convert a number to a string of a specified length padded by zeroes.
     */
    public static function getPaddedNumber(value:Number, length:int):String {
        var numString:String = value.toString();

        while (numString.length < length) {
            numString = "0" + numString;
        }

        return numString;
    }

    /**
     * Inaccurate log 10.
     */
    public static function log10(n:Number):Number {
        return Math.log(n) * Math.LOG10E;
    }

    /**
     * Get a random number where min &lt;= n &lt; max
     */
    public static function randomNumber(min:Number = 0, max:Number = 1, precision:int = -1):Number {
        min = (!isNaN(min)) ? (min) : (0);
        max = (!isNaN(max)) ? (max) : (1);

        var num:Number = min + Math.random() * (max - min);

        if (precision > -1) {
            num = roundDecimal(num, precision);
        }

        return num;
    }

    /**
     * Utility to manage roundoff errors of floating point numbers.
     *
     * http://kb2.adobe.com/cps/139/tn_13989.html
     *
     * @param n Number to be rounded.
     * @param precision Decimal places.
     * @return Rounded Number
     *
     * example
     *
     * <listing version="3.0">
     *    trace(0.9 - 1); // -0.09999999999999998
     *
     *    trace(Numeric.roundDecimal(0.9 - 1, 1)); // -0.1
     *    trace(Numeric.roundDecimal(0.9 - 1, 2)); // -0.1
     *
     *    trace(Numeric.roundDecimal(0.9 - 1.123, 1)); // -0.2
     *    trace(Numeric.roundDecimal(0.9 - 1.123, 2)); // -0.22
     *    trace(Numeric.roundDecimal(0.9 - 1.123, 3)); // -0.223
     * </listing>
     */
    public static function roundDecimal(n:Number, precision:Number):Number {
        var factor:int = Math.pow(10, precision);
        return (Math.round(n * factor) / factor);
    }

    /**
     * Round a number to the nearest (n).
     *
     * Example:
     *
     *      roundToNearest(.25, 19.95)   = 20
     *      roundToNearest(50, 1275)     = 1300
     *
     */
    public static function roundToNearest(roundTo:Number, value:Number):Number {
        return Math.round(value / roundTo) * roundTo;
    }

    /**
     * Round a number to an even number.
     *
     * If floating point value is passed, only the characteristic
     * is evaluated (ie: whole number left of the decimal), and the
     * mantissa is dropped.  Return will be integer.
     *
     * Example:
     *
     *     Numeric.roundEven(1); // 0
     *     Numeric.roundEven(2); // 2
     *     Numeric.roundEven(3); // 2
     *     Numeric.roundEven(4); // 4
     *
     *     Numeric.roundEven(1.1); // 0
     *     Numeric.roundEven(1.2); // 0
     *     Numeric.roundEven(2.1); // 2
     *     Numeric.roundEven(2.2); // 2
     */
    public static function roundEven(n:int):int {
        return n & 0xfffe;
    }

}
}
