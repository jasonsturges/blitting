//
//  com.blitting.display.DraftViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display
{
	import com.blitting.controls.rule.GraphPaper;
	import com.blitting.controls.rule.GraphPaperStyle;

	import flash.events.Event;

	public class DraftViewport extends RuledViewport
	{

		//------------------------------
		//  display
		//------------------------------

		private var _graphPaper:GraphPaper;


		//------------------------------
		//  presentation
		//------------------------------

		/**
		 * graphPaperStyle
		 *
		 * <p>
		 * Setter for GraphPaperStyle compose structure
		 * of display settings for the graph paper.
		 * </p>
		 */
		public function set graphPaperStyle(value:GraphPaperStyle):void
		{
			if (!_graphPaper)
				return;

			_graphPaper.setGraphPaperStyle(value);
		}


		//------------------------------
		//  lifecycle
		//------------------------------

		/**
		 * constructor
		 */
		public function DraftViewport()
		{
			// internal
			_graphPaper = new GraphPaper();
		}

		override protected function addedToStageHandler(event:Event):void
		{
			super.addedToStageHandler(event);

			addChild(_graphPaper);
		}

		/**
		 * render
		 *
		 * Draw viewport.
		 */
		override public function render():void
		{
			super.render();

			this.x = 14;
			this.y = 14;

			_graphPaper.x = 0;
			_graphPaper.y = 0;
			_graphPaper.render(bounds.width - 14, bounds.height - 14);
		}

		/** dispose (IDisposable) */
		override public function dispose():void
		{
			if (_graphPaper)
				removeChild(_graphPaper);

			super.dispose();
		}

	}
}
