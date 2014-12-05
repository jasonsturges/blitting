package blitting.controller {
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

public class AbstractController extends EventDispatcher implements IController {

    public function AbstractController(target:IEventDispatcher = null) {
        super(target);
    }
    
}
}
