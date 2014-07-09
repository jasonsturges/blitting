//
//  com.blitting.math.Statistics
//
//  Created by Jason Sturges.
//
package com.blitting.math {

public class Statistics {
    include "../core/Version.as";


    public static function probability(occurred:Number, outcomes:Number):Boolean {
        return Math.random() * outcomes < occurred;
    }

}
}
