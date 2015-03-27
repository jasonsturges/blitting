/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.controller {
import blitting.model.ISingleton;

import flash.display.DisplayObject;
import flash.display.MovieClip;
import flash.events.EventDispatcher;
import flash.utils.Dictionary;

/**
 * Traverse the display list capturing current state of
 * movie clips to pause and resume all currently
 * playing clips.
 */
public class MovieClipController extends EventDispatcher implements IController, ISingleton {

    //------------------------------
    //  singleton instance
    //------------------------------

    /**
     * Singleton instance.
     */
    private static var instance:MovieClipController = new MovieClipController();

    /**
     * Return singleton instance.
     */
    public static function getInstance():MovieClipController {
        return instance;
    }


    //------------------------------
    //  model
    //------------------------------

    protected var state:Dictionary = new Dictionary(true);


    //------------------------------
    //  lifecycle
    //------------------------------

    public function MovieClipController() {
        if (instance)
            throw new Error("MovieClipController is a singleton and can only be accessed through MovieClipController.getInstance()");
    }

    /**
     * Remove a movie clip from the index.
     */
    public function remove(movieClip:MovieClip):void {
        state[movieClip] = null;
        delete state[movieClip];
    }

    /**
     * Resume this and all children movie clips looking
     * up their playback state upon pause.  If the movie clip
     * was playing when paused, it will resume playing
     * by calling play on the movie clip.
     */
    public function play(movieClip:MovieClip):void {
        if ((movieClip in state) && (state[movieClip] == true))
            movieClip.play();

        for (var i:uint = 0; i < movieClip.numChildren; i++) {
            var child:DisplayObject = movieClip.getChildAt(i);

            if (child is MovieClip)
                play(child as MovieClip);
        }
    }

    /**
     * Pause this and all children movie clips by calling
     * stop while capturing current play state in an index.
     */
    public function stop(movieClip:MovieClip):void {
        state[movieClip] = movieClip.isPlaying;

        movieClip.stop();

        for (var i:uint = 0; i < movieClip.numChildren; i++) {
            var child:DisplayObject = movieClip.getChildAt(i);

            if (child is MovieClip)
                stop(child as MovieClip);
        }
    }

}
}
