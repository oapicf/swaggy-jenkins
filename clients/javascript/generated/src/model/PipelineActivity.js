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
import PipelineActivityartifacts from './PipelineActivityartifacts';

/**
 * The PipelineActivity model module.
 * @module model/PipelineActivity
 * @version 1.1.2-pre.0
 */
class PipelineActivity {
    /**
     * Constructs a new <code>PipelineActivity</code>.
     * @alias module:model/PipelineActivity
     */
    constructor() { 
        
        PipelineActivity.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineActivity</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineActivity} obj Optional instance to populate.
     * @return {module:model/PipelineActivity} The populated <code>PipelineActivity</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineActivity();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('artifacts')) {
                obj['artifacts'] = ApiClient.convertToType(data['artifacts'], [PipelineActivityartifacts]);
            }
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
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
PipelineActivity.prototype['_class'] = undefined;

/**
 * @member {Array.<module:model/PipelineActivityartifacts>} artifacts
 */
PipelineActivity.prototype['artifacts'] = undefined;

/**
 * @member {Number} durationInMillis
 */
PipelineActivity.prototype['durationInMillis'] = undefined;

/**
 * @member {Number} estimatedDurationInMillis
 */
PipelineActivity.prototype['estimatedDurationInMillis'] = undefined;

/**
 * @member {String} enQueueTime
 */
PipelineActivity.prototype['enQueueTime'] = undefined;

/**
 * @member {String} endTime
 */
PipelineActivity.prototype['endTime'] = undefined;

/**
 * @member {String} id
 */
PipelineActivity.prototype['id'] = undefined;

/**
 * @member {String} organization
 */
PipelineActivity.prototype['organization'] = undefined;

/**
 * @member {String} pipeline
 */
PipelineActivity.prototype['pipeline'] = undefined;

/**
 * @member {String} result
 */
PipelineActivity.prototype['result'] = undefined;

/**
 * @member {String} runSummary
 */
PipelineActivity.prototype['runSummary'] = undefined;

/**
 * @member {String} startTime
 */
PipelineActivity.prototype['startTime'] = undefined;

/**
 * @member {String} state
 */
PipelineActivity.prototype['state'] = undefined;

/**
 * @member {String} type
 */
PipelineActivity.prototype['type'] = undefined;

/**
 * @member {String} commitId
 */
PipelineActivity.prototype['commitId'] = undefined;






export default PipelineActivity;

