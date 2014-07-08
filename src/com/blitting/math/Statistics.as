//
//  com.blitting.math.Statistics
//
//  Created by Jason Sturges.
//
package com.blitting.math {

public class Statistics {
    include "../core/Version.as";


    public static function probability(occured:Number, outcomes:Number):Boolean {
        if (Math.random() * outcomes < occured)
            return true;

        return false;
    }

}
}
