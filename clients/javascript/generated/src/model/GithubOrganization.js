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
import GithubOrganizationlinks from './GithubOrganizationlinks';

/**
 * The GithubOrganization model module.
 * @module model/GithubOrganization
 * @version 1.1.2-pre.0
 */
class GithubOrganization {
    /**
     * Constructs a new <code>GithubOrganization</code>.
     * @alias module:model/GithubOrganization
     */
    constructor() { 
        
        GithubOrganization.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GithubOrganization</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubOrganization} obj Optional instance to populate.
     * @return {module:model/GithubOrganization} The populated <code>GithubOrganization</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GithubOrganization();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = GithubOrganizationlinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('jenkinsOrganizationPipeline')) {
                obj['jenkinsOrganizationPipeline'] = ApiClient.convertToType(data['jenkinsOrganizationPipeline'], 'Boolean');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
GithubOrganization.prototype['_class'] = undefined;

/**
 * @member {module:model/GithubOrganizationlinks} _links
 */
GithubOrganization.prototype['_links'] = undefined;

/**
 * @member {Boolean} jenkinsOrganizationPipeline
 */
GithubOrganization.prototype['jenkinsOrganizationPipeline'] = undefined;

/**
 * @member {String} name
 */
GithubOrganization.prototype['name'] = undefined;






export default GithubOrganization;

