//
//  blitting.math.Statistics
//
//  Created by Jason Sturges.
//
package blitting.math {

public class Statistics {

    public static function probability(occurred:Number, outcomes:Number):Boolean {
        return Math.random() * outcomes < occurred;
    }

}
}