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
import PipelineBranchesitemlatestRun from './PipelineBranchesitemlatestRun';
import PipelineBranchesitempullRequest from './PipelineBranchesitempullRequest';

/**
 * The PipelineBranchesitem model module.
 * @module model/PipelineBranchesitem
 * @version 2.0.1
 */
class PipelineBranchesitem {
    /**
     * Constructs a new <code>PipelineBranchesitem</code>.
     * @alias module:model/PipelineBranchesitem
     */
    constructor() { 
        
        PipelineBranchesitem.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineBranchesitem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineBranchesitem} obj Optional instance to populate.
     * @return {module:model/PipelineBranchesitem} The populated <code>PipelineBranchesitem</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineBranchesitem();

            if (data.hasOwnProperty('displayName')) {
                obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
            }
            if (data.hasOwnProperty('estimatedDurationInMillis')) {
                obj['estimatedDurationInMillis'] = ApiClient.convertToType(data['estimatedDurationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('weatherScore')) {
                obj['weatherScore'] = ApiClient.convertToType(data['weatherScore'], 'Number');
            }
            if (data.hasOwnProperty('latestRun')) {
                obj['latestRun'] = PipelineBranchesitemlatestRun.constructFromObject(data['latestRun']);
            }
            if (data.hasOwnProperty('organization')) {
                obj['organization'] = ApiClient.convertToType(data['organization'], 'String');
            }
            if (data.hasOwnProperty('pullRequest')) {
                obj['pullRequest'] = PipelineBranchesitempullRequest.constructFromObject(data['pullRequest']);
            }
            if (data.hasOwnProperty('totalNumberOfPullRequests')) {
                obj['totalNumberOfPullRequests'] = ApiClient.convertToType(data['totalNumberOfPullRequests'], 'Number');
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>PipelineBranchesitem</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>PipelineBranchesitem</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['displayName'] && !(typeof data['displayName'] === 'string' || data['displayName'] instanceof String)) {
            throw new Error("Expected the field `displayName` to be a primitive type in the JSON string but got " + data['displayName']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // validate the optional field `latestRun`
        if (data['latestRun']) { // data not null
          PipelineBranchesitemlatestRun.validateJSON(data['latestRun']);
        }
        // ensure the json data is a string
        if (data['organization'] && !(typeof data['organization'] === 'string' || data['organization'] instanceof String)) {
            throw new Error("Expected the field `organization` to be a primitive type in the JSON string but got " + data['organization']);
        }
        // validate the optional field `pullRequest`
        if (data['pullRequest']) { // data not null
          PipelineBranchesitempullRequest.validateJSON(data['pullRequest']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {String} displayName
 */
PipelineBranchesitem.prototype['displayName'] = undefined;

/**
 * @member {Number} estimatedDurationInMillis
 */
PipelineBranchesitem.prototype['estimatedDurationInMillis'] = undefined;

/**
 * @member {String} name
 */
PipelineBranchesitem.prototype['name'] = undefined;

/**
 * @member {Number} weatherScore
 */
PipelineBranchesitem.prototype['weatherScore'] = undefined;

/**
 * @member {module:model/PipelineBranchesitemlatestRun} latestRun
 */
PipelineBranchesitem.prototype['latestRun'] = undefined;

/**
 * @member {String} organization
 */
PipelineBranchesitem.prototype['organization'] = undefined;

/**
 * @member {module:model/PipelineBranchesitempullRequest} pullRequest
 */
PipelineBranchesitem.prototype['pullRequest'] = undefined;

/**
 * @member {Number} totalNumberOfPullRequests
 */
PipelineBranchesitem.prototype['totalNumberOfPullRequests'] = undefined;

/**
 * @member {String} _class
 */
PipelineBranchesitem.prototype['_class'] = undefined;






export default PipelineBranchesitem;

