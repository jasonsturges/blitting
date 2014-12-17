/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.display {
import blitting.core.blitting_internal;

import flash.display3D.Context3D;
import flash.display3D.IndexBuffer3D;
import flash.display3D.Program3D;
import flash.display3D.VertexBuffer3D;

use namespace blitting_internal;

/**
 *
 * @author Jason Sturges
 *
 */
public class Context3dRenderer extends AbstractRenderer {

    //------------------------------
    //  model
    //------------------------------

    protected var program3d:Program3D;

    protected var vertexBuffer3d:VertexBuffer3D;

    protected var indexBuffer3d:IndexBuffer3D;


    //------------------------------
    //  lifecycle
    //------------------------------

    public function Context3dRenderer() {
        super();
    }

    public function render(context3d:Context3D):void {
    }

    override public function dispose():void {
        super.dispose();

        program3d = null;
        vertexBuffer3d = null;
        indexBuffer3d = null;
    }

}
}
