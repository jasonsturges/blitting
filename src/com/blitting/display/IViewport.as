package com.blitting.display
{
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public interface IViewport
	{

		function get bounds():Rectangle;
		function set bounds(value:Rectangle):void;

		function get registration():Point;
		function set registration(value:Point):void;

	}
}
