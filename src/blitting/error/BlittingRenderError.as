/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.error {

public class BlittingRenderError extends Error {

    //------------------------------
    //  lifecycle
    //------------------------------

    public function BlittingRenderError(message:* = "", id:* = undefined) {
        super(message, id);
    }

}
}
