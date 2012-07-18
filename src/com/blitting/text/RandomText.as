//
//  com.blitting.text.RandomText
//
//  Created by Jason Sturges.
//
package com.blitting.text
{
	import flash.utils.Dictionary;

	/**
	 * Random text generation utility.
	 */
	public class RandomText
	{

		//------------------------------
		// character set constants
		//------------------------------

		/* Do not attempt to override constants -
		 * A better pattern is to extend this class
		 * and leverage the fromCharacters(chars:String...
		 * static function of this class.
		 */

		/** All lower case alphabet letters. */
		public static const alphabetLowerCase:String = "abcdefghijklmnopqrstuvwxyz";

		/** All upper case alphabet letters. */
		public static const alphabetUpperCase:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

		/** All numbers. */
		public static const numeric:String = "0123456789";

		/** All symbols. */
		public static const symbol:String = "`~!@#$%^&*()-_=+[{]}\\|;:'\",<.>/?";

		/**
		 * All character sets concatenated in to a collected
		 * named "all".  All includes upper andn lower case
		 * alphabet, numbers, and symbols.
		 */
		public static const all:String = alphabetLowerCase + alphabetUpperCase + numeric + symbol;


		//------------------------------
		// character set IDs
		//------------------------------

		/**
		 * Charset bitwise operator for upper case alphabet
		 * for use in: RandomText.fromCharset(sets:int).
		 */
		public static const CHARS_ALPHABET_UPPER_CASE:int /* ... */ = 1;

		/**
		 * Charset bitwise operator for lower case alphabet
		 * for use in: RandomText.fromCharset(sets:int).
		 */
		public static const CHARS_ALPHABET_LOWER_CASE:int /* ... */ = 2;

		/**
		 * Charset bitwise operator for numbers
		 * for use in: RandomText.fromCharset(sets:int).
		 */
		public static const CHARS_NUMERIC:int /* ............... */ = 4;

		/**
		 * Charset bitwise operator for symbols
		 * for use in: RandomText.fromCharset(sets:int).
		 */
		public static const CHARS_SYMBOL:int /* ................ */ = 8;


		//------------------------------
		// cache
		//------------------------------

		/** Internal cache of concatenated character sets. */
		protected static var _chars:Dictionary = new Dictionary();


		//------------------------------
		// character operations
		//------------------------------

		/**
		 * Return a randomly generated singular character
		 * from any set including upper and lower case alphabet,
		 * numbers, and symbols.
		 */
		public static function character():String
		{
			return (RandomText.fromCharacters(all, true));
		}


		/**
		 * <p>
		 * Return a randomly generated singular character
		 * from specified sets.
		 * </p>
		 * <p>
		 * Example:<br />
		 * </p>
		 * <pre>
		 * RandomText.fromCharset(RandomText.CHARS_SYMBOL);
		 * RandomText.fromCharset(RandomText.CHARS_SYMBOL | RandomText.CHARS_NUMERIC);
		 * RandomText.fromCharset(RandomText.CHARS_ALPHABET_UPPER_CASE | CHARS_ALPHABET_LOWER_CASE | RandomText.CHARS_SYMBOL | RandomText.CHARS_NUMERIC);
		 * </pre>
		 */
		public static function fromCharset(sets:int=(1 + 2 + 4 + 8)):String
		{
			var chars:String = "";

			if ((sets & RandomText.CHARS_ALPHABET_UPPER_CASE) > 0)
				chars += alphabetUpperCase;
			if ((sets & RandomText.CHARS_ALPHABET_LOWER_CASE) > 0)
				chars += alphabetLowerCase;
			if ((sets & RandomText.CHARS_NUMERIC) > 0)
				chars += numeric;
			if ((sets & RandomText.CHARS_SYMBOL) > 0)
				chars += symbol;

			return (RandomText.fromCharacters(chars, true));
		}


		/**
		 * <p>
		 * Return a randomly generated singular character
		 * from specified string of possible characters.
		 * </p>
		 * <p>
		 * Example:<br />
		 * </p>
		 * <pre>
		 * RandomText.fromCharacters(RandomText.alphabetUpperCase + "!?");
		 * </pre>
		 */
		public static function fromCharacters(chars:String, cache:Boolean=false):String
		{
			if ((chars == null) || (chars.length == 0))
				return (null);

			var c:Array;

			if (_chars.hasOwnProperty(chars) == true)
			{
				c = _chars[chars];
			}
			else
			{
				c = chars.split("");

				if (cache == true)
					_chars[chars] = c;
			}

			return (c[Math.floor(Math.random() * c.length)]);
		}


	}
}
