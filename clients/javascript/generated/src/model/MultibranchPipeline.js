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

/**
 * The MultibranchPipeline model module.
 * @module model/MultibranchPipeline
 * @version 2.0.1
 */
class MultibranchPipeline {
    /**
     * Constructs a new <code>MultibranchPipeline</code>.
     * @alias module:model/MultibranchPipeline
     */
    constructor() { 
        
        MultibranchPipeline.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>MultibranchPipeline</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/MultibranchPipeline} obj Optional instance to populate.
     * @return {module:model/MultibranchPipeline} The populated <code>MultibranchPipeline</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new MultibranchPipeline();

            if (data.hasOwnProperty('displayName')) {
                obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
            }
            if (data.hasOwnProperty('estimatedDurationInMillis')) {
                obj['estimatedDurationInMillis'] = ApiClient.convertToType(data['estimatedDurationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('latestRun')) {
                obj['latestRun'] = ApiClient.convertToType(data['latestRun'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('organization')) {
                obj['organization'] = ApiClient.convertToType(data['organization'], 'String');
            }
            if (data.hasOwnProperty('weatherScore')) {
                obj['weatherScore'] = ApiClient.convertToType(data['weatherScore'], 'Number');
            }
            if (data.hasOwnProperty('branchNames')) {
                obj['branchNames'] = ApiClient.convertToType(data['branchNames'], ['String']);
            }
            if (data.hasOwnProperty('numberOfFailingBranches')) {
                obj['numberOfFailingBranches'] = ApiClient.convertToType(data['numberOfFailingBranches'], 'Number');
            }
            if (data.hasOwnProperty('numberOfFailingPullRequests')) {
                obj['numberOfFailingPullRequests'] = ApiClient.convertToType(data['numberOfFailingPullRequests'], 'Number');
            }
            if (data.hasOwnProperty('numberOfSuccessfulBranches')) {
                obj['numberOfSuccessfulBranches'] = ApiClient.convertToType(data['numberOfSuccessfulBranches'], 'Number');
            }
            if (data.hasOwnProperty('numberOfSuccessfulPullRequests')) {
                obj['numberOfSuccessfulPullRequests'] = ApiClient.convertToType(data['numberOfSuccessfulPullRequests'], 'Number');
            }
            if (data.hasOwnProperty('totalNumberOfBranches')) {
                obj['totalNumberOfBranches'] = ApiClient.convertToType(data['totalNumberOfBranches'], 'Number');
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
     * Validates the JSON data with respect to <code>MultibranchPipeline</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>MultibranchPipeline</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['displayName'] && !(typeof data['displayName'] === 'string' || data['displayName'] instanceof String)) {
            throw new Error("Expected the field `displayName` to be a primitive type in the JSON string but got " + data['displayName']);
        }
        // ensure the json data is a string
        if (data['latestRun'] && !(typeof data['latestRun'] === 'string' || data['latestRun'] instanceof String)) {
            throw new Error("Expected the field `latestRun` to be a primitive type in the JSON string but got " + data['latestRun']);
        }
        // ensure the json data is a string
        if (data['name'] && !(typeof data['name'] === 'string' || data['name'] instanceof String)) {
            throw new Error("Expected the field `name` to be a primitive type in the JSON string but got " + data['name']);
        }
        // ensure the json data is a string
        if (data['organization'] && !(typeof data['organization'] === 'string' || data['organization'] instanceof String)) {
            throw new Error("Expected the field `organization` to be a primitive type in the JSON string but got " + data['organization']);
        }
        // ensure the json data is an array
        if (!Array.isArray(data['branchNames'])) {
            throw new Error("Expected the field `branchNames` to be an array in the JSON data but got " + data['branchNames']);
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
MultibranchPipeline.prototype['displayName'] = undefined;

/**
 * @member {Number} estimatedDurationInMillis
 */
MultibranchPipeline.prototype['estimatedDurationInMillis'] = undefined;

/**
 * @member {String} latestRun
 */
MultibranchPipeline.prototype['latestRun'] = undefined;

/**
 * @member {String} name
 */
MultibranchPipeline.prototype['name'] = undefined;

/**
 * @member {String} organization
 */
MultibranchPipeline.prototype['organization'] = undefined;

/**
 * @member {Number} weatherScore
 */
MultibranchPipeline.prototype['weatherScore'] = undefined;

/**
 * @member {Array.<String>} branchNames
 */
MultibranchPipeline.prototype['branchNames'] = undefined;

/**
 * @member {Number} numberOfFailingBranches
 */
MultibranchPipeline.prototype['numberOfFailingBranches'] = undefined;

/**
 * @member {Number} numberOfFailingPullRequests
 */
MultibranchPipeline.prototype['numberOfFailingPullRequests'] = undefined;

/**
 * @member {Number} numberOfSuccessfulBranches
 */
MultibranchPipeline.prototype['numberOfSuccessfulBranches'] = undefined;

/**
 * @member {Number} numberOfSuccessfulPullRequests
 */
MultibranchPipeline.prototype['numberOfSuccessfulPullRequests'] = undefined;

/**
 * @member {Number} totalNumberOfBranches
 */
MultibranchPipeline.prototype['totalNumberOfBranches'] = undefined;

/**
 * @member {Number} totalNumberOfPullRequests
 */
MultibranchPipeline.prototype['totalNumberOfPullRequests'] = undefined;

/**
 * @member {String} _class
 */
MultibranchPipeline.prototype['_class'] = undefined;






export default MultibranchPipeline;

