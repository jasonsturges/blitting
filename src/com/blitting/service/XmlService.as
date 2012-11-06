//
//  com.blitting.service.XmlService
//
//  Created by Jason Sturges.
//
package com.blitting.service
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;

	public class XmlService extends AbstractService
	{

		//------------------------------
		//  model
		//------------------------------

		public var xml:XML = null;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function XmlService()
		{
			super();
		}

		override protected function completeHandler(event:Event):void
		{
			super.completeHandler(event);

			if (event.target.data)
				xml = new XML(event.target.data);

			dispatchEvent(event);

			dispose();
		}

		override protected function ioErrorHandler(event:IOErrorEvent):void
		{
			dispatchEvent(event);

			dispose();
		}

		override protected function securityErrorHandler(event:SecurityErrorEvent):void
		{
			dispatchEvent(event);

			dispose();
		}

		override public function dispose():void
		{
			super.dispose();

			xml = null;
		}

	}
}
