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
 * The Label1 model module.
 * @module model/Label1
 * @version 1.1.2-pre.0
 */
class Label1 {
    /**
     * Constructs a new <code>Label1</code>.
     * @alias module:model/Label1
     */
    constructor() { 
        
        Label1.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Label1</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Label1} obj Optional instance to populate.
     * @return {module:model/Label1} The populated <code>Label1</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Label1();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
Label1.prototype['_class'] = undefined;






export default Label1;

