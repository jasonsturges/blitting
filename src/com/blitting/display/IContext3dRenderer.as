package com.blitting.display {
import flash.display3D.Context3D;

public interface IContext3dRenderer extends IRenderer {

    function renderer(context3d:Context3D):void;

}
}
