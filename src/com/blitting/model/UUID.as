//
//  com.blitting.model.UUID
//
//  Created by Jason Sturges.
//
package com.blitting.model
{
	import com.blitting.lifecycle.IDisposable;
	import com.blitting.lifecycle.IInitializable;

	import flash.net.registerClassAlias;
	import flash.utils.ByteArray;

	[RemoteClass(alias = "com.blitting.model.UUID")]
	[Bindable]
	/**
	 * Universal unique identifier (UUID) akin to
	 * globally unique identifier (GUID).
	 */
	public class UUID implements IDisposable, IInitializable
	{
		include "../core/Version.as";


		//------------------------------
		//  const
		//------------------------------

		/**
		 *  Char codes for hex set (0123456789abcdef).
		 */
		private static const ALPHA_CHAR_CODES:Array = [ 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 ];


		//------------------------------
		//  model
		//------------------------------

		protected var _buffer:ByteArray = new ByteArray();

		/**
		 *
		 */
		public function get buffer():ByteArray
		{
			return _buffer;
		}

		public function set buffer(value:ByteArray):void
		{
			_buffer = value;
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		public function UUID(uid:String=null)
		{
			initialize();

			if (uid)
				fromString(uid);
		}

		/**
		 * IInitializable initialize.
		 *
		 */
		public function initialize():void
		{
			_buffer = new ByteArray();
		}

		/**
		 * Register the class alias for remoting.
		 */
		public static function registerClass():void
		{
			flash.net.registerClassAlias("com.blitting.model.UUID", UUID);
		}

		public static function create(uid:String=null):UUID
		{
			var uuid:UUID = new UUID();

			if (uid)
				uuid.fromString(uid);
			else
				uuid.next();

			return (uuid);
		}

		public function next():void
		{
			var t:Number = uint(new Date().time);

			_buffer.clear();
			_buffer.writeUnsignedInt(Math.random() * t);
			_buffer.writeInt(Math.random() * t);
			_buffer.writeDouble(Math.random() * t);
			_buffer.position = 0;
		}

		public function toString():String
		{
			var chars:Array = new Array(36);
			var index:uint = 0;

			_buffer.position = 0;

			for (var i:uint = 0; i < 16; i++)
			{
				if (i == 4 || i == 6 || i == 8 || i == 10)
					chars[index++] = 45; // hyphen

				var b:int = _buffer.readByte();
				chars[index++] = ALPHA_CHAR_CODES[(b & 0xF0) >>> 4];
				chars[index++] = ALPHA_CHAR_CODES[(b & 0x0F)];
			}

			return (String.fromCharCode.apply(null, chars));
		}

		public function toBinary():ByteArray
		{
			return _buffer;
		}

		public function fromString(uid:String):void
		{
			_buffer.clear();

			for (var i:uint = 0; i < uid.length; i++)
			{
				var c:String = uid.charAt(i);
				if (c == "-")
					continue;

				var h1:uint = getDigit(c);
				i++;
				var h2:uint = getDigit(uid.charAt(i));
				_buffer.writeByte(((h1 << 4) | h2) & 0xFF);
			}

			_buffer.position = 0;
		}

		private static function getDigit(hex:String):uint
		{
			switch (hex)
			{
				case "A":
				case "a":
					return 10;
				case "B":
				case "b":
					return 11;
				case "C":
				case "c":
					return 12;
				case "D":
				case "d":
					return 13;
				case "E":
				case "e":
					return 14;
				case "F":
				case "f":
					return 15;
				default:
					return new uint(hex);
			}
		}

		public function dispose():void
		{
			_buffer.clear();
		}

	}
}
