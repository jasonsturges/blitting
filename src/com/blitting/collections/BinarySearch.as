//
//  com.blitting.collections.BinarySearch
//
//  Created by Jason Sturges.
//
package com.blitting.collections
{

	public class BinarySearch
	{

		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Search an ordered index collection for a value.
		 *
		 * Supports array or Vector based collection type.
		 */
		public static function search(collection:*, value:*):int
		{
			var h:int = 0;
			var t:int = collection.length - 1;
			var i:int;

			while (h <= t)
			{
				i = (h + t) / 2;

				if (collection[i] == value)
					return i;
				else if (collection[i] < value)
					h = i + 1;
				else
					t = i - 1;
			}

			return -(++h);
		}

	}
}
