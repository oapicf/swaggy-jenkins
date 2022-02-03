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
import GithubScmlinks from './GithubScmlinks';

/**
 * The GithubScm model module.
 * @module model/GithubScm
 * @version 1.1.1
 */
class GithubScm {
    /**
     * Constructs a new <code>GithubScm</code>.
     * @alias module:model/GithubScm
     */
    constructor() { 
        
        GithubScm.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GithubScm</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubScm} obj Optional instance to populate.
     * @return {module:model/GithubScm} The populated <code>GithubScm</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GithubScm();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = GithubScmlinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('credentialId')) {
                obj['credentialId'] = ApiClient.convertToType(data['credentialId'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('uri')) {
                obj['uri'] = ApiClient.convertToType(data['uri'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
GithubScm.prototype['_class'] = undefined;

/**
 * @member {module:model/GithubScmlinks} _links
 */
GithubScm.prototype['_links'] = undefined;

/**
 * @member {String} credentialId
 */
GithubScm.prototype['credentialId'] = undefined;

/**
 * @member {String} id
 */
GithubScm.prototype['id'] = undefined;

/**
 * @member {String} uri
 */
GithubScm.prototype['uri'] = undefined;






export default GithubScm;

