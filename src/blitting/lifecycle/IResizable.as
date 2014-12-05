//
//  blitting.lifecycle.IResizable
//
//  Created by Jason Sturges.
//
package blitting.lifecycle {

public interface IResizable {

    function resize(width:Number, height:Number):void;

    function layout():void;

}
}
