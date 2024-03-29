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
 * The CauseUserIdCause model module.
 * @module model/CauseUserIdCause
 * @version 2.0.1
 */
class CauseUserIdCause {
    /**
     * Constructs a new <code>CauseUserIdCause</code>.
     * @alias module:model/CauseUserIdCause
     */
    constructor() { 
        
        CauseUserIdCause.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>CauseUserIdCause</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/CauseUserIdCause} obj Optional instance to populate.
     * @return {module:model/CauseUserIdCause} The populated <code>CauseUserIdCause</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new CauseUserIdCause();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('shortDescription')) {
                obj['shortDescription'] = ApiClient.convertToType(data['shortDescription'], 'String');
            }
            if (data.hasOwnProperty('userId')) {
                obj['userId'] = ApiClient.convertToType(data['userId'], 'String');
            }
            if (data.hasOwnProperty('userName')) {
                obj['userName'] = ApiClient.convertToType(data['userName'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>CauseUserIdCause</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>CauseUserIdCause</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }
        // ensure the json data is a string
        if (data['shortDescription'] && !(typeof data['shortDescription'] === 'string' || data['shortDescription'] instanceof String)) {
            throw new Error("Expected the field `shortDescription` to be a primitive type in the JSON string but got " + data['shortDescription']);
        }
        // ensure the json data is a string
        if (data['userId'] && !(typeof data['userId'] === 'string' || data['userId'] instanceof String)) {
            throw new Error("Expected the field `userId` to be a primitive type in the JSON string but got " + data['userId']);
        }
        // ensure the json data is a string
        if (data['userName'] && !(typeof data['userName'] === 'string' || data['userName'] instanceof String)) {
            throw new Error("Expected the field `userName` to be a primitive type in the JSON string but got " + data['userName']);
        }

        return true;
    }


}



/**
 * @member {String} _class
 */
CauseUserIdCause.prototype['_class'] = undefined;

/**
 * @member {String} shortDescription
 */
CauseUserIdCause.prototype['shortDescription'] = undefined;

/**
 * @member {String} userId
 */
CauseUserIdCause.prototype['userId'] = undefined;

/**
 * @member {String} userName
 */
CauseUserIdCause.prototype['userName'] = undefined;






export default CauseUserIdCause;

