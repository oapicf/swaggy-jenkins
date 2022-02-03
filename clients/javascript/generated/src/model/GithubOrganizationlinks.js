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
import Link from './Link';

/**
 * The GithubOrganizationlinks model module.
 * @module model/GithubOrganizationlinks
 * @version 1.1.1
 */
class GithubOrganizationlinks {
    /**
     * Constructs a new <code>GithubOrganizationlinks</code>.
     * @alias module:model/GithubOrganizationlinks
     */
    constructor() { 
        
        GithubOrganizationlinks.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GithubOrganizationlinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubOrganizationlinks} obj Optional instance to populate.
     * @return {module:model/GithubOrganizationlinks} The populated <code>GithubOrganizationlinks</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GithubOrganizationlinks();

            if (data.hasOwnProperty('repositories')) {
                obj['repositories'] = Link.constructFromObject(data['repositories']);
            }
            if (data.hasOwnProperty('self')) {
                obj['self'] = Link.constructFromObject(data['self']);
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/Link} repositories
 */
GithubOrganizationlinks.prototype['repositories'] = undefined;

/**
 * @member {module:model/Link} self
 */
GithubOrganizationlinks.prototype['self'] = undefined;

/**
 * @member {String} _class
 */
GithubOrganizationlinks.prototype['_class'] = undefined;






export default GithubOrganizationlinks;

