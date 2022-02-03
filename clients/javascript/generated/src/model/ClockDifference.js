/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ClockDifference model module.
 * @module model/ClockDifference
 * @version 1.1.1
 */
class ClockDifference {
    /**
     * Constructs a new <code>ClockDifference</code>.
     * @alias module:model/ClockDifference
     */
    constructor() { 
        
        ClockDifference.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ClockDifference</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ClockDifference} obj Optional instance to populate.
     * @return {module:model/ClockDifference} The populated <code>ClockDifference</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ClockDifference();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('diff')) {
                obj['diff'] = ApiClient.convertToType(data['diff'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
ClockDifference.prototype['_class'] = undefined;

/**
 * @member {Number} diff
 */
ClockDifference.prototype['diff'] = undefined;






export default ClockDifference;

