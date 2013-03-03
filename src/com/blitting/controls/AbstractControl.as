package com.blitting.controls
{
	import com.blitting.core.RenderType;
	import com.blitting.display.BufferedViewport;
	import com.blitting.lifecycle.IInitializable;

	public class AbstractControl extends BufferedViewport implements IControl, IInitializable
	{

		//------------------------------
		//  model
		//------------------------------

		/**
		 * value
		 */
		private var _value:Object;

		public function get value():Object
		{
			return _value;
		}

		public function set value(value:Object):void
		{
			if (_value == value)
				return;

			_value = value;
			invalidate();
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function AbstractControl()
		{
			super();

			renderType = RenderType.ON_INVALIDATION;
		}

		/**
		 * initialize
		 */
		public function initialize():void
		{
		}

	}
}
