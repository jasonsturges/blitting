/*
     |      | _)  |    |   _)
     __ \   |  |  __|  __|  |  __ \    _` |
     |   |  |  |  |    |    |  |   |  (   |
    _.__/  _| _| \__| \__| _| _|  _| \__, |
                                     |___/
    Blitting, http://blitting.com
    Copyright (c) 2014 Jason Sturges, http://jasonsturges.com
*/
package blitting.model {
import blitting.lifecycle.IDisposable;
import blitting.lifecycle.IInitializable;

import flash.utils.Dictionary;
import flash.utils.getDefinitionByName;
import flash.utils.getQualifiedClassName;

public class ObjectPool implements IFactory, ISingleton {

    //------------------------------
    //  singleton instance
    //------------------------------

    /**
     * Singleton instance.
     */
    private static var instance:ObjectPool = new ObjectPool();

    /**
     * Return singleton instance.
     */
    public static function getInstance():ObjectPool {
        return instance;
    }


    //------------------------------
    //  model
    //------------------------------

    protected var pool:Dictionary = new Dictionary();

    public var MAX_POOL_SIZE:int = 64;


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * Constructor as singleton enforcer.
     */
    public function ObjectPool() {
        if (instance)
            throw new Error("ObjectPool is a singleton and can only be accessed through ObjectPool.getInstance()");
    }

    /**
     * Construct an instance of an object by specifying class type.
     */
    public function construct(type:Class):Object {
        if (type == null)
            return null;

        if (!(type in pool))
            pool[type] = new <Object>[];

        var set:Vector.<Object> = Vector.<Object>(pool[type]);

        if (set.length > 0) {
            var object:Object = set.pop();

            if (object is IInitializable)
                IInitializable(object).initialize();

            return object;
        }

        return new type();
    }

    /**
     *
     */
    public function dispose(object:Object, type:Class = null):void {
        if (object == null)
            return;

        if (!type) {
            var qualifiedName:String = getQualifiedClassName(object);
            type = getDefinitionByName(qualifiedName) as Class;
        }

        if (object is IDisposable)
            IDisposable(object).dispose();

        if (!(type in pool))
            pool[type] = new <Object>[];

        var set:Vector.<Object> = Vector.<Object>(pool[type]);

        if (set.length > MAX_POOL_SIZE)
            return;

        set.push(object);
    }

}
}
