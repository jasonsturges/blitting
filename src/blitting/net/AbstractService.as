/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2015 Jason Sturges, http://jasonsturges.com
*/
package blitting.net {
import blitting.lifecycle.IDisposable;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IOErrorEvent;
import flash.events.SecurityErrorEvent;
import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;

public class AbstractService extends EventDispatcher implements IDisposable {

    //------------------------------
    //  model
    //------------------------------

    public var data:Object;

    public var requestMethod:String = URLRequestMethod.GET;

    public var url:String;

    protected var urlLoader:URLLoader;

    protected var urlRequest:URLRequest;


    //------------------------------
    //  lifecycle
    //------------------------------

    public function AbstractService() {
        super();

        urlLoader = new URLLoader();
        urlLoader.addEventListener(Event.COMPLETE, completeHandler);
        urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
        urlLoader.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
    }

    /**
     *
     * @param url
     * @param data String or URLVariables
     * @param requestMethod URL request method
     */
    public function load(url:String = null, data:Object = null, requestMethod:String = URLRequestMethod.GET):void {
        if (url)
            this.url = url;

        if (data)
            this.data = data;

        if (requestMethod)
            this.requestMethod = requestMethod;

        urlRequest = new URLRequest(this.url);
        urlRequest.data = this.data;
        urlRequest.method = this.requestMethod;

        urlLoader.load(urlRequest);
    }

    protected function completeHandler(event:Event):void {
    }

    protected function ioErrorHandler(event:IOErrorEvent):void {
    }

    protected function securityErrorHandler(event:SecurityErrorEvent):void {
    }

    public function dispose():void {
        urlLoader.removeEventListener(Event.COMPLETE, completeHandler);
        urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
        urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
    }

}
}
