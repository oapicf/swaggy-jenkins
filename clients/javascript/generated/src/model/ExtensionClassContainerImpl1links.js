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
import Link from './Link';

/**
 * The ExtensionClassContainerImpl1links model module.
 * @module model/ExtensionClassContainerImpl1links
 * @version 2.0.1
 */
class ExtensionClassContainerImpl1links {
    /**
     * Constructs a new <code>ExtensionClassContainerImpl1links</code>.
     * @alias module:model/ExtensionClassContainerImpl1links
     */
    constructor() { 
        
        ExtensionClassContainerImpl1links.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtensionClassContainerImpl1links</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtensionClassContainerImpl1links} obj Optional instance to populate.
     * @return {module:model/ExtensionClassContainerImpl1links} The populated <code>ExtensionClassContainerImpl1links</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtensionClassContainerImpl1links();

            if (data.hasOwnProperty('self')) {
                obj['self'] = Link.constructFromObject(data['self']);
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtensionClassContainerImpl1links</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtensionClassContainerImpl1links</code>.
     */
    static validateJSON(data) {
        // validate the optional field `self`
        if (data['self']) { // data not null
          Link.validateJSON(data['self']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {module:model/Link} self
 */
ExtensionClassContainerImpl1links.prototype['self'] = undefined;

/**
 * @member {String} _class
 */
ExtensionClassContainerImpl1links.prototype['_class'] = undefined;






export default ExtensionClassContainerImpl1links;

