//
//  com.blitting.event.EventPipeline
//
//  Created by Jason Sturges
//
package com.blitting.event
{
	import com.blitting.model.IAbstractSingleton;

	import flash.events.EventDispatcher;

	public class EventPipeline extends EventDispatcher implements IAbstractSingleton
	{
		include "../core/Version.as";


		//------------------------------
		//  singleton instance
		//------------------------------

		/**
		 * Singleton instance.
		 */
		private static var _instance:EventPipeline = new EventPipeline();

		/**
		 * Return singleton instance.
		 */
		public static function getInstance():EventPipeline
		{
			return _instance;
		}


		//------------------------------
		//  model
		//------------------------------


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor as singleton enforcer.
		 */
		public function EventPipeline()
		{
			if (_instance)
				throw new Error("EventPipeline is a singleton and can only be accessed through EventPipeline.getInstance()");
		}

	}
}
