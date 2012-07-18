//
//  com.blitting.display.DraftViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.controls.rule.HorizontalRuler;
	import com.blitting.controls.rule.VerticalRuler;

	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;

	public class RuledViewport extends ResizableViewport
	{

		//------------------------------
		//  model
		//------------------------------

		private var _border:Sprite;

		public var borderColor:uint = 0x313131;

		private var _horizontalRuler:HorizontalRuler;

		private var _verticalRuler:VerticalRuler;


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function RuledViewport()
		{
			super();

			_horizontalRuler = new HorizontalRuler();
			_verticalRuler = new VerticalRuler();
			_border = new Sprite();
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			addChild(_horizontalRuler);
			addChild(_verticalRuler);
			addChild(_border);
		}

		override public function render():void
		{
			super.render();

			this.x = 14;
			this.y = 14;

			_horizontalRuler.x = 0;
			_horizontalRuler.y = -14;
			_horizontalRuler.render(bounds.width, 14);

			_verticalRuler.x = -14;
			_verticalRuler.y = 0;
			_verticalRuler.render(14, bounds.height);

			var g:Graphics = _border.graphics;
			g.clear();
			g.lineStyle(2, borderColor, 0.9, true);
			g.moveTo(-14, 0);
			g.lineTo(bounds.width, 0);
			g.moveTo(0, -14);
			g.lineTo(0, bounds.height);
		}

		/**
		 * dispose (IDisposable)
		 */
		override public function dispose():void
		{
			super.dispose();

			if (_border)
				removeChild(_border);
			if (_horizontalRuler)
				removeChild(_horizontalRuler);
			if (_verticalRuler)
				removeChild(_verticalRuler);
			if (_border)
				removeChild(_border);
		}

	}
}
