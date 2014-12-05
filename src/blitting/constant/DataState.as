//
//  blitting.constant.DataState
//
//  Created by Jason Sturges.
//
package blitting.constant {

/**
 * Lifecycle of loading data.
 *
 * <ol>
 *    <li> Unitialized  - no data, no interaction, not ready.</li>
 *
 *    <li> Loading      - potentially partial data, no interaction, not ready.</li>
 *
 *    <li> Loaded       - has data, ready for interaction and visual display.</li>
 *
 *    <li> Error        - invalid data, no interaction, no valid visual display,
 *                        could retry to acquire data.</li>
 *
 *    <li> Unavailable  - no data, no interaction, no visual display,
 *                        will not attempt to retry data acquisition.</li>
 *
 *    <li> Insufficient - potentially partial data, limited interaction and
 *                        visual display, could retry to acquire data
 *                        at a later time when data becomes available.</li>
 * </ol>
 */
public class DataState {

    /**
     * Object not initialized with data, nor attempted to load data.
     */
    public static const UNINITIALIZED:String = "UNINITIALIZED";

    /**
     * Object is loading data.
     */
    public static const LOADING:String = "LOADING";

    /**
     * Object has finished loading data.
     */
    public static const LOADED:String = "LOADED";

    /**
     * Object loading attempt has completed, but resulted in error.
     */
    public static const ERROR:String = "ERROR";

    /**
     * Object is unavailable (regardless of whether load attempted).
     */
    public static const UNAVAILABLE:String = "UNAVAILABLE";

    /**
     * Object has insufficient data for its intent.
     */
    public static const INSUFFICIENT:String = "INSUFFICIENT";

}
}
