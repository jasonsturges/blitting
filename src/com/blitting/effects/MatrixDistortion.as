//  
//  com.blitting.effects.MatrixDistortion
//
//  Created by Jason Sturges.
//
package com.blitting.effects
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.geom.Matrix;

	public class MatrixDistortion extends AbstractEffect
	{

		//------------------------------
		//  model
		//------------------------------

		public var aOffSet:Number = 0;

		public var bOffSet:Number = 0;

		public var cOffSet:Number = 0;

		public var dOffSet:Number = 0;

		public var txOffSet:Number = 0;

		public var tyOffSet:Number = 0;

		/**
		 * Whether to randomize a, b, c, d, tx, and ty offsets.
		 */
		public var randomOffsets:Boolean = false;

		/**
		 * Target display object to apply transformation.
		 */
		private var _target:DisplayObject;

		/**
		 * Transformation matrix.
		 */
		private var _transformMatrix:Matrix;


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function MatrixDistortion(target:DisplayObject)
		{
			super();

			this._target = target;

			this._transformMatrix = new Matrix();
			this._target.transform.matrix = this._transformMatrix;
		}

		/**
		 * reset
		 */
		public function reset():void
		{
			aOffSet = 0;
			bOffSet = 0;
			cOffSet = 0;
			dOffSet = 0;
			txOffSet = 0;
			tyOffSet = 0;

			this._transformMatrix = new Matrix();
			this._target.transform.matrix = this._transformMatrix;
		}

		/**
		 * Start effect animation.
		 */
		public function start():void
		{
			this._target.addEventListener(Event.ENTER_FRAME, frameHandler);
		}

		/**
		 * on enter frame
		 */
		private function frameHandler(event:Event):void
		{
			if (this.randomOffsets)
			{
				var randomOffset:Number = Math.random() * 0.01;

				if (Math.floor(Math.random() * 2))
					randomOffset = -(randomOffset);

				switch (Math.floor(Math.random() * 6))
				{
					case 0:
					{
						this._transformMatrix.a = this._transformMatrix.a + randomOffset;
						break;
					}
					case 1:
					{
						this._transformMatrix.b = this._transformMatrix.b + randomOffset;
						break;
					}
					case 2:
					{
						this._transformMatrix.c = this._transformMatrix.c + randomOffset;
						break;
					}
					case 3:
					{
						this._transformMatrix.d = this._transformMatrix.d + randomOffset;
						break;
					}
					case 4:
					{
						this._transformMatrix.tx = this._transformMatrix.tx + randomOffset;
						break;
					}
					case 5:
					{
						this._transformMatrix.ty = this._transformMatrix.ty + randomOffset;
						break;
					}
				}
			}
			else
			{
				if (this.aOffSet)
					this._transformMatrix.a = this._transformMatrix.a + this.aOffSet;
				if (this.bOffSet)
					this._transformMatrix.b = this._transformMatrix.b + this.bOffSet;
				if (this.cOffSet)
					this._transformMatrix.c = this._transformMatrix.c + this.cOffSet;
				if (this.dOffSet)
					this._transformMatrix.d = this._transformMatrix.d + this.dOffSet;
				if (this.txOffSet)
					this._transformMatrix.tx = this._transformMatrix.tx + this.txOffSet;
				if (this.tyOffSet)
					this._transformMatrix.ty = this._transformMatrix.ty + this.tyOffSet;
			}

			this._target.transform.matrix = this._transformMatrix;
		}

		/**
		 * Stop effect animation.
		 */
		public function stop():void
		{
			this._target.removeEventListener(Event.ENTER_FRAME, frameHandler);
		}

	}
}
