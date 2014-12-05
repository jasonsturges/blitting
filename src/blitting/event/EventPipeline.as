//
//  blitting.event.EventPipeline
//
//  Created by Jason Sturges
//
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
