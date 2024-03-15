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
import PipelineBranchesitempullRequestlinks from './PipelineBranchesitempullRequestlinks';

/**
 * The PipelineBranchesitempullRequest model module.
 * @module model/PipelineBranchesitempullRequest
 * @version 2.0.1
 */
class PipelineBranchesitempullRequest {
    /**
     * Constructs a new <code>PipelineBranchesitempullRequest</code>.
     * @alias module:model/PipelineBranchesitempullRequest
     */
    constructor() { 
        
        PipelineBranchesitempullRequest.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineBranchesitempullRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineBranchesitempullRequest} obj Optional instance to populate.
     * @return {module:model/PipelineBranchesitempullRequest} The populated <code>PipelineBranchesitempullRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineBranchesitempullRequest();

            if (data.hasOwnProperty('_links')) {
                obj['_links'] = PipelineBranchesitempullRequestlinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('author')) {
                obj['author'] = ApiClient.convertToType(data['author'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>PipelineBranchesitempullRequest</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>PipelineBranchesitempullRequest</code>.
     */
    static validateJSON(data) {
        // validate the optional field `_links`
        if (data['_links']) { // data not null
          PipelineBranchesitempullRequestlinks.validateJSON(data['_links']);
        }
        // ensure the json data is a string
        if (data['author'] && !(typeof data['author'] === 'string' || data['author'] instanceof String)) {
            throw new Error("Expected the field `author` to be a primitive type in the JSON string but got " + data['author']);
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['title'] && !(typeof data['title'] === 'string' || data['title'] instanceof String)) {
            throw new Error("Expected the field `title` to be a primitive type in the JSON string but got " + data['title']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {module:model/PipelineBranchesitempullRequestlinks} _links
 */
PipelineBranchesitempullRequest.prototype['_links'] = undefined;

/**
 * @member {String} author
 */
PipelineBranchesitempullRequest.prototype['author'] = undefined;

/**
 * @member {String} id
 */
PipelineBranchesitempullRequest.prototype['id'] = undefined;

/**
 * @member {String} title
 */
PipelineBranchesitempullRequest.prototype['title'] = undefined;

/**
 * @member {String} url
 */
PipelineBranchesitempullRequest.prototype['url'] = undefined;

/**
 * @member {String} _class
 */
PipelineBranchesitempullRequest.prototype['_class'] = undefined;






export default PipelineBranchesitempullRequest;

