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
import ExtensionClassImpllinks from './ExtensionClassImpllinks';

/**
 * The ExtensionClassImpl model module.
 * @module model/ExtensionClassImpl
 * @version 1.1.1
 */
class ExtensionClassImpl {
    /**
     * Constructs a new <code>ExtensionClassImpl</code>.
     * @alias module:model/ExtensionClassImpl
     */
    constructor() { 
        
        ExtensionClassImpl.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtensionClassImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtensionClassImpl} obj Optional instance to populate.
     * @return {module:model/ExtensionClassImpl} The populated <code>ExtensionClassImpl</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtensionClassImpl();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = ExtensionClassImpllinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('classes')) {
                obj['classes'] = ApiClient.convertToType(data['classes'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
ExtensionClassImpl.prototype['_class'] = undefined;

/**
 * @member {module:model/ExtensionClassImpllinks} _links
 */
ExtensionClassImpl.prototype['_links'] = undefined;

/**
 * @member {Array.<String>} classes
 */
ExtensionClassImpl.prototype['classes'] = undefined;






export default ExtensionClassImpl;

