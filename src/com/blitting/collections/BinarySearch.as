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

		public static function search(array:*, value:*):int
		{
			var h:int = 0;
			var t:int = array.length - 1;
			var i:int;

			while (h <= t)
			{
				i = (h + t) / 2;

				if (array[i] == value)
					return i;
				else if (array[i] < value)
					h = i + 1;
				else
					t = i - 1;
			}

			return -(++h);
		}

	}
}
