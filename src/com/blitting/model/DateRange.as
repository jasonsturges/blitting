//
//  com.blitting.model.DateRange
//
//  Created by Jason Sturges.
//
package com.blitting.model
{
	import flash.net.registerClassAlias;

	[RemoteClass(alias = "com.blitting.model.DateRange")]
	[Bindable]
	public class DateRange
	{

		//------------------------------
		//  model
		//------------------------------

		/** maximum */
		public var maximum:Date;

		/** minimum */
		public var minimum:Date;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor.
		 */
		public function DateRange()
		{
		}

		/**
		 * Register the class alias for remoting.
		 */
		public static function registerClass():void
		{
			flash.net.registerClassAlias("com.blitting.model.DateRange", DateRange);
		}

	}
}
