//
//  blitting.lifecycle.IRenderable
//
//  Created by Jason Sturges.
//
package blitting.lifecycle {
import flash.geom.Rectangle;

public interface IRenderable {

    function prerender():void;

    function render():void;

    function postrender(changeRect:Rectangle = null):void;

}
}
