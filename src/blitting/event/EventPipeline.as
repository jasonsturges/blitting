/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.event {
import blitting.model.ISingleton;

import flash.events.EventDispatcher;

public class EventPipeline extends EventDispatcher implements ISingleton {

    //------------------------------
    //  singleton instance
    //------------------------------

    /**
     * Singleton instance.
     */
    private static var _instance:EventPipeline = new EventPipeline();

    /**
     * Return singleton instance.
     */
    public static function getInstance():EventPipeline {
        return _instance;
    }


    //------------------------------
    //  model
    //------------------------------


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * Constructor as singleton enforcer.
     */
    public function EventPipeline() {
        if (_instance)
            throw new Error("EventPipeline is a singleton and can only be accessed through EventPipeline.getInstance()");
    }

}
}
