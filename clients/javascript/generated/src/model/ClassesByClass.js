/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The ClassesByClass model module.
 * @module model/ClassesByClass
 * @version 2.0.1
 */
class ClassesByClass {
    /**
     * Constructs a new <code>ClassesByClass</code>.
     * @alias module:model/ClassesByClass
     */
    constructor() { 
        
        ClassesByClass.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ClassesByClass</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ClassesByClass} obj Optional instance to populate.
     * @return {module:model/ClassesByClass} The populated <code>ClassesByClass</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ClassesByClass();

            if (data.hasOwnProperty('classes')) {
                obj['classes'] = ApiClient.convertToType(data['classes'], ['String']);
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ClassesByClass</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ClassesByClass</code>.
     */
    static validateJSON(data) {
        // ensure the json data is an array
        if (!Array.isArray(data['classes'])) {
            throw new Error("Expected the field `classes` to be an array in the JSON data but got " + data['classes']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {Array.<String>} classes
 */
ClassesByClass.prototype['classes'] = undefined;

/**
 * @member {String} _class
 */
ClassesByClass.prototype['_class'] = undefined;






export default ClassesByClass;

