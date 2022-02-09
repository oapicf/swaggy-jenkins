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
 * The Link model module.
 * @module model/Link
 * @version 1.1.2-pre.0
 */
class Link {
    /**
     * Constructs a new <code>Link</code>.
     * @alias module:model/Link
     */
    constructor() { 
        
        Link.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Link</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Link} obj Optional instance to populate.
     * @return {module:model/Link} The populated <code>Link</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Link();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('href')) {
                obj['href'] = ApiClient.convertToType(data['href'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
Link.prototype['_class'] = undefined;

/**
 * @member {String} href
 */
Link.prototype['href'] = undefined;






export default Link;

