//
//  com.blitting.net.AbstractSocketService
//
//  Created by Jason Sturges.
//
package com.blitting.net
{
	import com.blitting.lifecycle.IDisposable;

	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.Socket;

	public class AbstractSocketService extends EventDispatcher implements IDisposable
	{
		include "../core/Version.as";


		//------------------------------
		//  model
		//------------------------------

		public var hostname:String;

		public var port:uint;

		public var requestMessage:String;

		public var responseMessage:String;

		protected var socket:Socket;


		//------------------------------
		//  lifecycle
		//------------------------------

		public function AbstractSocketService()
		{
			socket = new Socket();
			socket.addEventListener(Event.CONNECT, socketConnectHandler);
			socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler);
			socket.addEventListener(Event.CLOSE, socketCloseHandler);
			socket.addEventListener(IOErrorEvent.IO_ERROR, socketErrorHandler);
			socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR, socketSecurityErrorHandler);
		}

		public function connect(hostname:String=null, port:uint=80, requestMessage:String=null):void
		{
			if (hostname)
				this.hostname = hostname;

			if (!isNaN(port))
				this.port = port;

			if (requestMessage)
				this.requestMessage = requestMessage;

			socket.connect(hostname, port);
		}

		protected function socketConnectHandler(event:Event):void
		{
			responseMessage = "";
			socket.writeUTFBytes(requestMessage);
			socket.flush();
		}

		protected function socketDataHandler(event:ProgressEvent):void
		{
			while (socket.bytesAvailable > 4)
			{
				responseMessage += socket.readUTFBytes(socket.bytesAvailable);
			}
		}

		protected function socketCloseHandler(event:Event):void
		{
			dispose();
		}

		protected function socketErrorHandler(event:IOErrorEvent):void
		{
			dispose();
		}

		protected function socketSecurityErrorHandler(event:SecurityErrorEvent):void
		{
			dispose();
		}

		public function dispose():void
		{
			if (!socket)
				return;

			if (socket.connected)
				socket.close();

			socket.removeEventListener(Event.CONNECT, socketConnectHandler);
			socket.removeEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler);
			socket.removeEventListener(Event.CLOSE, socketCloseHandler);
			socket.removeEventListener(IOErrorEvent.IO_ERROR, socketErrorHandler);
			socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, socketSecurityErrorHandler);
		}

	}
}
