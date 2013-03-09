package com.blitting.display
{
	import flash.display.DisplayObject;
	import flash.display.Graphics;

	public interface IGraphicsRenderer extends IRenderer
	{

		function render(graphics:Graphics, displayObject:DisplayObject=null):void;

	}
}
