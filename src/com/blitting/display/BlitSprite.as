//
//  com.blitting.display.BlitSprite
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.lifecycle.IDisposable;
	import com.blitting.lifecycle.IRenderable;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;


	/**
	 * Wraps Bitmap and BitmapData functionality to
	 * a base Sprite DisplayObject.
	 */
	public class BlitSprite extends Sprite implements IRenderable, IDisposable
	{

		//------------------------------
		//  renderers
		//------------------------------

		/**
		 * _renderFunctions (Collection of Functions)
		 *
		 * Render functions associated with this BlitSprite.
		 */
		private var _renderFunctions:Vector.<Function>;


		//------------------------------
		//  bounds
		//------------------------------

		/** bounds */
		public function get bounds():Rectangle
		{
			if (_buffer == null)
				return (null);

			return (_buffer.rect);
		}

		/** bitmapWidth */
		public function get bitmapWidth():Number
		{
			if (_buffer == null)
				return (NaN);

			return (_buffer.width);
		}

		/** bitmapHeight */
		public function get bitmapHeight():Number
		{
			if (_buffer == null)
				return (NaN);

			return (_buffer.height);
		}

		//------------------------------
		//  viewport
		//------------------------------

		/** _frameNumber */
		protected var _frameNumber:uint = 0;

		/** frame number public getter. */
		public function get frameNumber():uint
		{
			return _frameNumber;
		}

		/** _buffer */
		private var _buffer:BitmapData;

		public function get buffer():BitmapData
		{
			return (_buffer);
		}

		private var _transparent:Boolean = true;

		private var _fillColor:uint = 0xff0000;

		/** _viewport */
		private var _viewport:Bitmap;

		public function get smoothing():Boolean
		{
			if (!_viewport)
				return false;

			return _viewport.smoothing;
		}

		public function set smoothing(value:Boolean):void
		{
			if (!_viewport)
				return;

			_viewport.smoothing = value;
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		/** constructor */
		public function BlitSprite(w:Number=0, h:Number=0, transparent:Boolean=true, fillColor:uint=0xff0000)
		{
			super();

			_renderFunctions = new Vector.<Function>();
			_transparent = transparent;
			_fillColor = fillColor;

			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

			if ((w > 0) && (h > 0))
				resize(w, h);
		}

		/** addedToStageHandler */
		protected function addedToStageHandler(e:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);

			this.addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			this.addEventListener(Event.ENTER_FRAME, enterFrameHandler);
		}

		/** resize */
		public function resize(w:Number, h:Number):void
		{
			if ((_buffer) &&
				(_buffer.width == w) &&
				(_buffer.height == h))
				return;

			if ((w == 0) ||
				(h == 0))
				return;

			var bd:BitmapData = _buffer

			if ((_viewport) && (contains(_viewport)))
				removeChild(_viewport);

			_buffer = null;
			_viewport = null;

			_buffer = new BitmapData(w, h, _transparent, _fillColor);
			_viewport = new Bitmap(_buffer);
			addChild(_viewport);

			if (!bd)
				return;

			var m:Matrix = new Matrix();
			m.scale(w / bd.width, h / bd.height);

			_buffer.draw(bd, m);

			bd.dispose();
			bd = null;
		}

		/** enterFrameHandler */
		protected function enterFrameHandler(e:Event):void
		{
			render();
		}

		/** removedFromStageHandler */
		protected function removedFromStageHandler(e:Event):void
		{
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			this.removeEventListener(Event.ENTER_FRAME, enterFrameHandler);

			this.addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}

		/** dispose (IDisposable) */
		public function dispose():void
		{
			_buffer.dispose();
			_buffer = null;
			_viewport = null;

			removeAllRenderers();

			this.removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			this.removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
			this.removeEventListener(Event.ENTER_FRAME, enterFrameHandler);
		}


		//------------------------------
		//  rendering
		//------------------------------

		/** addRenderer */
		public function addRenderer(renderer:IRenderable):void
		{
			_renderFunctions.push(IRenderable(renderer).render());
		}

		/** addRenderFunction */
		public function addRenderFunction(f:Function):void
		{
			_renderFunctions.push(f);
		}

		/** removeAllRenderers */
		public function removeAllRenderers():void
		{
			while (_renderFunctions.length > 0)
				_renderFunctions.shift();
		}

		/** lock */
		protected function lock():void
		{
			if (_buffer == null)
				return;

			_buffer.lock();
		}

		/** unlock */
		protected function unlock(changeRect:Rectangle=null):void
		{
			if (_buffer == null)
				return;

			_buffer.unlock(changeRect);
		}

		public function prerender():void
		{
			lock();
		}

		/** render (IRenderable) */
		public function render():void
		{
			_frameNumber++;

			for each (var f:Function in this._renderFunctions)
			{
				f();
			}
		}

		public function postrender(changeRect:Rectangle=null):void
		{
			unlock(changeRect);
		}


		//------------------------------
		//  bitmap data operations
		//------------------------------

		/**
		 * draw
		 *
		 * @param source
		 * @param matrix
		 * @param colorTransform
		 * @param blendMode
		 * @param clipRect
		 * @param smoothing
		 */
		public function draw(source:IBitmapDrawable, matrix:Matrix=null, colorTransform:ColorTransform=null, blendMode:String=null, clipRect:Rectangle=null, smoothing:Boolean=false):void
		{
			if (_buffer == null)
				return;

			_buffer.draw(source, matrix, colorTransform, blendMode, clipRect, smoothing);
		}

		public function copyChannel(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, sourceChannel:uint, destChannel:uint):void
		{
			_buffer.copyChannel(sourceBitmapData, sourceRect, destPoint, sourceChannel, destChannel);
		}

		/**
		 *
		 * @param rect
		 * @param color
		 */
		public function fillRect(rect:Rectangle, color:uint):void
		{
			_buffer.fillRect(rect, color);
		}

		/** noise */
		public function noise(randomSeed:int, low:uint, high:uint, channelOptions:uint=7, grayScale:Boolean=false):void
		{
			_buffer.noise(randomSeed, low, high, channelOptions, grayScale);
		}

		/** perlinNoise */
		public function perlinNoise(baseX:Number, baseY:Number, numOctaves:uint, randomSeed:int, stitch:Boolean, fractalNoise:Boolean, channelOptions:uint=7, grayScale:Boolean=false, offsets:Array=null):void
		{
			_buffer.perlinNoise(baseX, baseY, numOctaves, randomSeed, stitch, fractalNoise, channelOptions, grayScale, offsets);
		}

		/** scroll */
		public function scroll(x:int, y:int):void
		{
			_buffer.scroll(x, y);
		}

		/** setPixel32 */
		public function setPixel32(x:int, y:int, color:uint):void
		{
			_buffer.setPixel32(x, y, color);
		}

	}
}
