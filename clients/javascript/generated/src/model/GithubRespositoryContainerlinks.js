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
 * The GithubRespositoryContainerlinks model module.
 * @module model/GithubRespositoryContainerlinks
 * @version 1.1.1
 */
class GithubRespositoryContainerlinks {
    /**
     * Constructs a new <code>GithubRespositoryContainerlinks</code>.
     * @alias module:model/GithubRespositoryContainerlinks
     */
    constructor() { 
        
        GithubRespositoryContainerlinks.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GithubRespositoryContainerlinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRespositoryContainerlinks} obj Optional instance to populate.
     * @return {module:model/GithubRespositoryContainerlinks} The populated <code>GithubRespositoryContainerlinks</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GithubRespositoryContainerlinks();

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
 * @member {module:model/Link} self
 */
GithubRespositoryContainerlinks.prototype['self'] = undefined;

/**
 * @member {String} _class
 */
GithubRespositoryContainerlinks.prototype['_class'] = undefined;






export default GithubRespositoryContainerlinks;

