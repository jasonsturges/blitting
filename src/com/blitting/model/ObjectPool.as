//
//  com.blitting.model.ObjectPool
//
//  Created by Jason Sturges.
//
package com.blitting.model
{
	import com.blitting.lifecycle.IDisposable;
	import com.blitting.lifecycle.IInitializable;

	import flash.utils.Dictionary;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public class ObjectPool implements IAbstractFactory, IAbstractSingleton
	{
		include "../core/Version.as";


		//------------------------------
		//  singleton instance
		//------------------------------

		/**
		 * Singleton instance.
		 */
		private static var instance:ObjectPool = new ObjectPool();

		/**
		 * Return singleton instance.
		 */
		public static function getInstance():ObjectPool
		{
			return instance;
		}


		//------------------------------
		//  model
		//------------------------------

		protected var pool:Dictionary = new Dictionary();

		public var maxPoolSize:uint = 64;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * Constructor as singleton enforcer.
		 */
		public function ObjectPool()
		{
			if (instance)
				throw new Error("ObjectPool is a singleton and can only be accessed through ObjectPool.getInstance()");
		}

		/**
		 * Construct an instance of an object by specifying class type.
		 */
		public function construct(type:Class):Object
		{
			if (type == null)
				return null;

			if (!(type in pool))
				pool[type] = new Vector.<Object>;

			var set:Vector.<Object> = Vector.<Object>(pool[type]);

			if (set.length > 0)
			{
				var object:Object = set.pop();

				if (object is IInitializable)
					IInitializable(object).initialize();

				return object;
			}

			return new type();
		}

		/**
		 *
		 */
		public function dispose(object:Object, type:Class=null):void
		{
			if (object == null)
				return;

			if (!type)
			{
				var qualifiedName:String = getQualifiedClassName(object);
				type = getDefinitionByName(qualifiedName) as Class;
			}

			if (object is IDisposable)
				IDisposable(object).dispose();

			if (!(type in pool))
				pool[type] = new Vector.<Object>;

			var set:Vector.<Object> = Vector.<Object>(pool[type]);

			if (set.length > maxPoolSize)
				return;

			set.push(object);
		}

	}
}
