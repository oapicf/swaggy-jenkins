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
import GithubRepositorieslinks from './GithubRepositorieslinks';
import GithubRepository from './GithubRepository';

/**
 * The GithubRepositories model module.
 * @module model/GithubRepositories
 * @version 2.0.1
 */
class GithubRepositories {
    /**
     * Constructs a new <code>GithubRepositories</code>.
     * @alias module:model/GithubRepositories
     */
    constructor() { 
        
        GithubRepositories.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>GithubRepositories</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/GithubRepositories} obj Optional instance to populate.
     * @return {module:model/GithubRepositories} The populated <code>GithubRepositories</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new GithubRepositories();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = GithubRepositorieslinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('items')) {
                obj['items'] = ApiClient.convertToType(data['items'], [GithubRepository]);
            }
            if (data.hasOwnProperty('lastPage')) {
                obj['lastPage'] = ApiClient.convertToType(data['lastPage'], 'Number');
            }
            if (data.hasOwnProperty('nextPage')) {
                obj['nextPage'] = ApiClient.convertToType(data['nextPage'], 'Number');
            }
            if (data.hasOwnProperty('pageSize')) {
                obj['pageSize'] = ApiClient.convertToType(data['pageSize'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>GithubRepositories</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>GithubRepositories</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }
        // validate the optional field `_links`
        if (data['_links']) { // data not null
          GithubRepositorieslinks.validateJSON(data['_links']);
        }
        if (data['items']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['items'])) {
                throw new Error("Expected the field `items` to be an array in the JSON data but got " + data['items']);
            }
            // validate the optional field `items` (array)
            for (const item of data['items']) {
                GithubRepository.validateJSON(item);
            };
        }

        return true;
    }


}



/**
 * @member {String} _class
 */
GithubRepositories.prototype['_class'] = undefined;

/**
 * @member {module:model/GithubRepositorieslinks} _links
 */
GithubRepositories.prototype['_links'] = undefined;

/**
 * @member {Array.<module:model/GithubRepository>} items
 */
GithubRepositories.prototype['items'] = undefined;

/**
 * @member {Number} lastPage
 */
GithubRepositories.prototype['lastPage'] = undefined;

/**
 * @member {Number} nextPage
 */
GithubRepositories.prototype['nextPage'] = undefined;

/**
 * @member {Number} pageSize
 */
GithubRepositories.prototype['pageSize'] = undefined;






export default GithubRepositories;

