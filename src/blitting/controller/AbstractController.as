/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.controller {
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

public class AbstractController extends EventDispatcher implements IController {

    public function AbstractController(target:IEventDispatcher = null) {
        super(target);
    }
    
}
}
