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
 * The PipelineBranchesitemlatestRun model module.
 * @module model/PipelineBranchesitemlatestRun
 * @version 2.0.1
 */
class PipelineBranchesitemlatestRun {
    /**
     * Constructs a new <code>PipelineBranchesitemlatestRun</code>.
     * @alias module:model/PipelineBranchesitemlatestRun
     */
    constructor() { 
        
        PipelineBranchesitemlatestRun.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineBranchesitemlatestRun</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineBranchesitemlatestRun} obj Optional instance to populate.
     * @return {module:model/PipelineBranchesitemlatestRun} The populated <code>PipelineBranchesitemlatestRun</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineBranchesitemlatestRun();

            if (data.hasOwnProperty('durationInMillis')) {
                obj['durationInMillis'] = ApiClient.convertToType(data['durationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('estimatedDurationInMillis')) {
                obj['estimatedDurationInMillis'] = ApiClient.convertToType(data['estimatedDurationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('enQueueTime')) {
                obj['enQueueTime'] = ApiClient.convertToType(data['enQueueTime'], 'String');
            }
            if (data.hasOwnProperty('endTime')) {
                obj['endTime'] = ApiClient.convertToType(data['endTime'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('organization')) {
                obj['organization'] = ApiClient.convertToType(data['organization'], 'String');
            }
            if (data.hasOwnProperty('pipeline')) {
                obj['pipeline'] = ApiClient.convertToType(data['pipeline'], 'String');
            }
            if (data.hasOwnProperty('result')) {
                obj['result'] = ApiClient.convertToType(data['result'], 'String');
            }
            if (data.hasOwnProperty('runSummary')) {
                obj['runSummary'] = ApiClient.convertToType(data['runSummary'], 'String');
            }
            if (data.hasOwnProperty('startTime')) {
                obj['startTime'] = ApiClient.convertToType(data['startTime'], 'String');
            }
            if (data.hasOwnProperty('state')) {
                obj['state'] = ApiClient.convertToType(data['state'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('commitId')) {
                obj['commitId'] = ApiClient.convertToType(data['commitId'], 'String');
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>PipelineBranchesitemlatestRun</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>PipelineBranchesitemlatestRun</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['enQueueTime'] && !(typeof data['enQueueTime'] === 'string' || data['enQueueTime'] instanceof String)) {
            throw new Error("Expected the field `enQueueTime` to be a primitive type in the JSON string but got " + data['enQueueTime']);
        }
        // ensure the json data is a string
        if (data['endTime'] && !(typeof data['endTime'] === 'string' || data['endTime'] instanceof String)) {
            throw new Error("Expected the field `endTime` to be a primitive type in the JSON string but got " + data['endTime']);
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // ensure the json data is a string
        if (data['organization'] && !(typeof data['organization'] === 'string' || data['organization'] instanceof String)) {
            throw new Error("Expected the field `organization` to be a primitive type in the JSON string but got " + data['organization']);
        }
        // ensure the json data is a string
        if (data['pipeline'] && !(typeof data['pipeline'] === 'string' || data['pipeline'] instanceof String)) {
            throw new Error("Expected the field `pipeline` to be a primitive type in the JSON string but got " + data['pipeline']);
        }
        // ensure the json data is a string
        if (data['result'] && !(typeof data['result'] === 'string' || data['result'] instanceof String)) {
            throw new Error("Expected the field `result` to be a primitive type in the JSON string but got " + data['result']);
        }
        // ensure the json data is a string
        if (data['runSummary'] && !(typeof data['runSummary'] === 'string' || data['runSummary'] instanceof String)) {
            throw new Error("Expected the field `runSummary` to be a primitive type in the JSON string but got " + data['runSummary']);
        }
        // ensure the json data is a string
        if (data['startTime'] && !(typeof data['startTime'] === 'string' || data['startTime'] instanceof String)) {
            throw new Error("Expected the field `startTime` to be a primitive type in the JSON string but got " + data['startTime']);
        }
        // ensure the json data is a string
        if (data['state'] && !(typeof data['state'] === 'string' || data['state'] instanceof String)) {
            throw new Error("Expected the field `state` to be a primitive type in the JSON string but got " + data['state']);
        }
        // ensure the json data is a string
        if (data['type'] && !(typeof data['type'] === 'string' || data['type'] instanceof String)) {
            throw new Error("Expected the field `type` to be a primitive type in the JSON string but got " + data['type']);
        }
        // ensure the json data is a string
        if (data['commitId'] && !(typeof data['commitId'] === 'string' || data['commitId'] instanceof String)) {
            throw new Error("Expected the field `commitId` to be a primitive type in the JSON string but got " + data['commitId']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {Number} durationInMillis
 */
PipelineBranchesitemlatestRun.prototype['durationInMillis'] = undefined;

/**
 * @member {Number} estimatedDurationInMillis
 */
PipelineBranchesitemlatestRun.prototype['estimatedDurationInMillis'] = undefined;

/**
 * @member {String} enQueueTime
 */
PipelineBranchesitemlatestRun.prototype['enQueueTime'] = undefined;

/**
 * @member {String} endTime
 */
PipelineBranchesitemlatestRun.prototype['endTime'] = undefined;

/**
 * @member {String} id
 */
PipelineBranchesitemlatestRun.prototype['id'] = undefined;

/**
 * @member {String} organization
 */
PipelineBranchesitemlatestRun.prototype['organization'] = undefined;

/**
 * @member {String} pipeline
 */
PipelineBranchesitemlatestRun.prototype['pipeline'] = undefined;

/**
 * @member {String} result
 */
PipelineBranchesitemlatestRun.prototype['result'] = undefined;

/**
 * @member {String} runSummary
 */
PipelineBranchesitemlatestRun.prototype['runSummary'] = undefined;

/**
 * @member {String} startTime
 */
PipelineBranchesitemlatestRun.prototype['startTime'] = undefined;

/**
 * @member {String} state
 */
PipelineBranchesitemlatestRun.prototype['state'] = undefined;

/**
 * @member {String} type
 */
PipelineBranchesitemlatestRun.prototype['type'] = undefined;

/**
 * @member {String} commitId
 */
PipelineBranchesitemlatestRun.prototype['commitId'] = undefined;

/**
 * @member {String} _class
 */
PipelineBranchesitemlatestRun.prototype['_class'] = undefined;






export default PipelineBranchesitemlatestRun;

