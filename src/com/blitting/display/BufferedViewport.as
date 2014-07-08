//
//  com.blitting.display.BufferedViewport
//
//  Created by Jason Sturges.
//
package com.blitting.display {
import com.blitting.core.blitting_internal;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.IBitmapDrawable;
import flash.display.PixelSnapping;
import flash.display.Shape;
import flash.events.Event;
import flash.filters.BitmapFilter;
import flash.geom.ColorTransform;
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

use namespace blitting_internal;

/**
 *
 * @author jsturges
 *
 */
public class BufferedViewport extends ResizableViewport {
    include "../core/Version.as";


    //------------------------------
    //  model
    //------------------------------

    /**
     *
     */
    protected var bitmapData:BitmapData;

    /**
     *
     */
    protected var bitmap:Bitmap;

    /**
     * 32-bit ARGB uint color.
     */
    protected var fillColor:uint;

    /**
     *
     */
    protected var pixelSnapping:String;

    /**
     *
     */
    protected var renderers:Vector.<IRenderer>;

    /**
     *
     */
    protected var scaleOnResize:Boolean;

    /**
     *
     */
    protected var smoothing:Boolean;

    /**
     *
     */
    protected var transparent:Boolean;


    //------------------------------
    //  lifecycle
    //------------------------------

    /**
     * constructor
     */
    public function BufferedViewport(transparent:Boolean = true, fillColor:uint = 0xff00ff, pixelSnapping:String = PixelSnapping.AUTO, smoothing:Boolean = true) {
        super();

        bitmap = new Bitmap();

        this.fillColor = fillColor;
        this.pixelSnapping = pixelSnapping;
        this.smoothing = smoothing;
        this.transparent = transparent;
    }

    override public function initialize():void {
        super.initialize();

        fillColor = 0xff00ff;
        pixelSnapping = PixelSnapping.AUTO;
        smoothing = true;
        transparent = true;

        renderers = null;
        scaleOnResize = false;
    }

    /**
     *
     */
    override protected function addedToStageHandler(event:Event):void {
        super.addedToStageHandler(event);

        addChild(bitmap);
    }

    /**
     *
     */
    public function addRenderer(renderer:IRenderer):void {
        if (!renderers)
            renderers = new Vector.<IRenderer>();

        renderers.push(renderer);
    }

    /**
     *
     */
    override public function validate():void {
        super.validate();

        bitmap.pixelSnapping = pixelSnapping;
        bitmap.smoothing = smoothing;
    }

    /**
     *
     */
    override public function resize(width:Number, height:Number):void {
        super.resize(Math.ceil(width), Math.ceil(height));
    }

    /**
     *
     */
    override public function layout():void {
        // if same size, do not resize bitmap
        if ((bitmapData) &&
                (bitmapData.rect.width == bounds.width) &&
                (bitmapData.rect.height == bounds.height))
            return;

        // if no valid size, return
        if (bounds.width < 1 || bounds.height < 1)
            return;

        // cache BitmapData
        var cachedBitmapData:BitmapData = bitmapData;

        bitmapData = null;
        bitmap.bitmapData = null;

        // instantiate at new bounds
        bitmapData = new BitmapData(bounds.width, bounds.height, transparent, fillColor);
        bitmap.bitmapData = bitmapData;
        bitmap.pixelSnapping = pixelSnapping;
        bitmap.smoothing = smoothing;

        // return if no cached BitmapData
        if (!cachedBitmapData)
            return;

        if (scaleOnResize) {
            // scale old BitmapData to new size
            var matrix:Matrix = new Matrix();
            matrix.scale(bounds.width / cachedBitmapData.width, bounds.height / cachedBitmapData.height);
            bitmapData.draw(cachedBitmapData, matrix);
        }

        cachedBitmapData.dispose();
        cachedBitmapData = null;
    }

    /**
     *
     */
    public function clear():void {
        bitmapData.fillRect(bitmapData.rect, fillColor);
    }

    /**
     *
     */
    override public function prerender():void {
        super.prerender();

        if (!bitmapData)
            return;

        bitmapData.lock();
    }

    /**
     *
     */
    override public function render():void {
        super.render();

        for each (var renderer:IRenderer in renderers) {
            if (renderer is IBitmapRenderer) {
                IBitmapRenderer(renderer).render(bitmapData);
            }
            else if (renderer is IGraphicsRenderer) {
                var s:Shape = blitting.shapeRenderer;
                var g:Graphics = s.graphics;
                IGraphicsRenderer(renderer).render(g, s);
                draw(s);
            }
        }
    }

    /**
     *
     */
    override public function postrender(changeRect:Rectangle = null):void {
        super.postrender(changeRect);

        if (!bitmapData)
            return;

        bitmapData.unlock(changeRect);
    }

    /**
     *
     */
    public function applyFilter(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, filter:BitmapFilter):void {
        bitmapData.applyFilter(sourceBitmapData, sourceRect, destPoint, filter);
    }

    /**
     *
     */
    public function clone():BitmapData {
        return bitmapData.clone();
    }

    /**
     *
     */
    public function colorTransform(rect:Rectangle, colorTransform:ColorTransform):void {
        bitmapData.colorTransform(rect, colorTransform);
    }

    /**
     *
     */
    public function compare(otherBitmapData:BitmapData):Object {
        return bitmapData.compare(otherBitmapData);
    }

    /**
     *
     */
    public function copyChannel(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, sourceChannel:uint, destChannel:uint):void {
        bitmapData.copyChannel(sourceBitmapData, sourceRect, destPoint, sourceChannel, destChannel);
    }

    /**
     *
     */
    public function copyPixels(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, alphaBitmapData:BitmapData = null, alphaPoint:Point = null, mergeAlpha:Boolean = false):void {
        bitmapData.copyPixels(sourceBitmapData, sourceRect, destPoint, alphaBitmapData, alphaPoint, mergeAlpha);
    }

    /**
     *
     */
    public function draw(source:IBitmapDrawable, matrix:Matrix = null, colorTransform:ColorTransform = null, blendMode:String = null, clipRect:Rectangle = null, smoothing:Boolean = false):void {
        bitmapData.draw(source, matrix, colorTransform, blendMode, clipRect, smoothing);
    }

    /**
     *
     */
    public function fillRect(rect:Rectangle, color:uint):void {
        bitmapData.fillRect(rect, color);
    }

    /**
     *
     */
    public function floodFill(x:int, y:int, color:uint):void {
        bitmapData.floodFill(x, y, color);
    }

    /**
     *
     */
    public function generateFilterRect(sourceRect:Rectangle, filter:BitmapFilter):Rectangle {
        return bitmapData.generateFilterRect(sourceRect, filter);
    }

    /**
     *
     */
    public function getColorBoundsRect(mask:uint, color:uint, findColor:Boolean = true):Rectangle {
        return bitmapData.getColorBoundsRect(mask, color, findColor);
    }

    /**
     *
     */
    public function getPixel(x:int, y:int):uint {
        return bitmapData.getPixel(x, y);
    }

    /**
     *
     */
    public function getPixel32(x:int, y:int):uint {
        return bitmapData.getPixel32(x, y);
    }

    /**
     *
     */
    public function getPixels(rect:Rectangle):ByteArray {
        return bitmapData.getPixels(rect);
    }

    /**
     *
     */
    public function getVector(rect:Rectangle):Vector.<uint> {
        return bitmapData.getVector(rect);
    }

    /**
     *
     */
    public function histogram(hRect:Rectangle = null):Vector.<Vector.<Number>> {
        return bitmapData.histogram(hRect);
    }

    /**
     *
     */
    public function hitTest(firstPoint:Point, firstAlphaThreshold:uint, secondObject:Object, secondBitmapDataPoint:Point = null, secondAlphaThreshold:uint = 1):Boolean {
        return bitmapData.hitTest(firstPoint, firstAlphaThreshold, secondObject, secondBitmapDataPoint, secondAlphaThreshold);
    }

    /**
     *
     */
    public function merge(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, redMultiplier:uint, greenMultiplier:uint, blueMultiplier:uint, alphaMultiplier:uint):void {
        bitmapData.merge(sourceBitmapData, sourceRect, destPoint, redMultiplier, greenMultiplier, blueMultiplier, alphaMultiplier);
    }

    /**
     *
     */
    public function noise(randomSeed:int, low:uint, high:uint, channelOptions:uint = 7, grayScale:Boolean = false):void {
        bitmapData.noise(randomSeed, low, high, channelOptions, grayScale);
    }

    /**
     *
     */
    public function paletteMap(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, redArray:Array = null, greenArray:Array = null, blueArray:Array = null, alphaArray:Array = null):void {
        bitmapData.paletteMap(sourceBitmapData, sourceRect, destPoint, redArray, greenArray, blueArray, alphaArray);
    }

    /**
     *
     */
    public function perlinNoise(baseX:Number, baseY:Number, numOctaves:uint, randomSeed:int, stitch:Boolean, fractalNoise:Boolean, channelOptions:uint = 7, grayScale:Boolean = false, offsets:Array = null):void {
        bitmapData.perlinNoise(baseX, baseY, numOctaves, randomSeed, stitch, fractalNoise, channelOptions, grayScale, offsets);
    }

    /**
     *
     */
    public function pixelDissolve(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, randomSeed:int = 0, numPixels:int = 0, fillColor:uint = 0):int {
        return bitmapData.pixelDissolve(sourceBitmapData, sourceRect, destPoint, randomSeed, numPixels, fillColor);
    }

    /**
     *
     */
    public function scroll(x:int, y:int):void {
        bitmapData.scroll(x, y);
    }

    /**
     *
     */
    public function setPixel(x:int, y:int, color:uint):void {
        bitmapData.setPixel(x, y, color);
    }

    /**
     *
     */
    public function setPixel32(x:int, y:int, color:uint):void {
        bitmapData.setPixel32(x, y, color);
    }

    /**
     *
     */
    public function setPixels(rect:Rectangle, inputByteArray:ByteArray):void {
        bitmapData.setPixels(rect, inputByteArray);
    }

    /**
     *
     */
    public function setVector(rect:Rectangle, inputVector:Vector.<uint>):void {
        bitmapData.setVector(rect, inputVector);
    }

    /**
     *
     */
    public function threshold(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, operation:String, threshold:uint, color:uint = 0, mask:uint = uint.MAX_VALUE, copySource:Boolean = false):uint {
        return bitmapData.threshold(sourceBitmapData, sourceRect, destPoint, operation, threshold, color, mask, copySource);
    }

    /**
     * dispose (IDisposable)
     */
    override public function dispose():void {
        super.dispose();

        bitmap = null;

        bitmapData.dispose();
        bitmapData = null;

        renderers = null;
    }

}
}
