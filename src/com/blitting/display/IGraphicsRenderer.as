package com.blitting.display
{
	import flash.display.DisplayObject;
	import flash.display.Graphics;

	public interface IGraphicsRenderer
	{

		function render(displayObject:DisplayObject, graphics:Graphics):void;

	}
}
