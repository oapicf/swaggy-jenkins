/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The StringParameterValue model module.
 * @module model/StringParameterValue
 * @version 1.1.2-pre.0
 */
class StringParameterValue {
    /**
     * Constructs a new <code>StringParameterValue</code>.
     * @alias module:model/StringParameterValue
     */
    constructor() { 
        
        StringParameterValue.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>StringParameterValue</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/StringParameterValue} obj Optional instance to populate.
     * @return {module:model/StringParameterValue} The populated <code>StringParameterValue</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new StringParameterValue();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('value')) {
                obj['value'] = ApiClient.convertToType(data['value'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
StringParameterValue.prototype['_class'] = undefined;

/**
 * @member {String} name
 */
StringParameterValue.prototype['name'] = undefined;

/**
 * @member {String} value
 */
StringParameterValue.prototype['value'] = undefined;






export default StringParameterValue;

