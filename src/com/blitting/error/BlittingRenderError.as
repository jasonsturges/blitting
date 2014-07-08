package com.blitting.error {

public class BlittingRenderError extends Error {
    include "../core/Version.as";


    //------------------------------
    //  lifecycle
    //------------------------------

    public function BlittingRenderError(message:* = "", id:* = 0) {
        super(message, id);
    }

}
}
