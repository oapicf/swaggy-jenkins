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
import InputStepImpl from './InputStepImpl';
import PipelineStepImpllinks from './PipelineStepImpllinks';

/**
 * The PipelineStepImpl model module.
 * @module model/PipelineStepImpl
 * @version 2.0.1
 */
class PipelineStepImpl {
    /**
     * Constructs a new <code>PipelineStepImpl</code>.
     * @alias module:model/PipelineStepImpl
     */
    constructor() { 
        
        PipelineStepImpl.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineStepImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineStepImpl} obj Optional instance to populate.
     * @return {module:model/PipelineStepImpl} The populated <code>PipelineStepImpl</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineStepImpl();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = PipelineStepImpllinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('displayName')) {
                obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
            }
            if (data.hasOwnProperty('durationInMillis')) {
                obj['durationInMillis'] = ApiClient.convertToType(data['durationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('input')) {
                obj['input'] = InputStepImpl.constructFromObject(data['input']);
            }
            if (data.hasOwnProperty('result')) {
                obj['result'] = ApiClient.convertToType(data['result'], 'String');
            }
            if (data.hasOwnProperty('startTime')) {
                obj['startTime'] = ApiClient.convertToType(data['startTime'], 'String');
            }
            if (data.hasOwnProperty('state')) {
                obj['state'] = ApiClient.convertToType(data['state'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>PipelineStepImpl</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>PipelineStepImpl</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }
        // validate the optional field `_links`
        if (data['_links']) { // data not null
          PipelineStepImpllinks.validateJSON(data['_links']);
        }
        // ensure the json data is a string
        if (data['displayName'] && !(typeof data['displayName'] === 'string' || data['displayName'] instanceof String)) {
            throw new Error("Expected the field `displayName` to be a primitive type in the JSON string but got " + data['displayName']);
        }
        // ensure the json data is a string
        if (data['id'] && !(typeof data['id'] === 'string' || data['id'] instanceof String)) {
            throw new Error("Expected the field `id` to be a primitive type in the JSON string but got " + data['id']);
        }
        // validate the optional field `input`
        if (data['input']) { // data not null
          InputStepImpl.validateJSON(data['input']);
        }
        // ensure the json data is a string
        if (data['result'] && !(typeof data['result'] === 'string' || data['result'] instanceof String)) {
            throw new Error("Expected the field `result` to be a primitive type in the JSON string but got " + data['result']);
        }
        // ensure the json data is a string
        if (data['startTime'] && !(typeof data['startTime'] === 'string' || data['startTime'] instanceof String)) {
            throw new Error("Expected the field `startTime` to be a primitive type in the JSON string but got " + data['startTime']);
        }
        // ensure the json data is a string
        if (data['state'] && !(typeof data['state'] === 'string' || data['state'] instanceof String)) {
            throw new Error("Expected the field `state` to be a primitive type in the JSON string but got " + data['state']);
        }

        return true;
    }


}



/**
 * @member {String} _class
 */
PipelineStepImpl.prototype['_class'] = undefined;

/**
 * @member {module:model/PipelineStepImpllinks} _links
 */
PipelineStepImpl.prototype['_links'] = undefined;

/**
 * @member {String} displayName
 */
PipelineStepImpl.prototype['displayName'] = undefined;

/**
 * @member {Number} durationInMillis
 */
PipelineStepImpl.prototype['durationInMillis'] = undefined;

/**
 * @member {String} id
 */
PipelineStepImpl.prototype['id'] = undefined;

/**
 * @member {module:model/InputStepImpl} input
 */
PipelineStepImpl.prototype['input'] = undefined;

/**
 * @member {String} result
 */
PipelineStepImpl.prototype['result'] = undefined;

/**
 * @member {String} startTime
 */
PipelineStepImpl.prototype['startTime'] = undefined;

/**
 * @member {String} state
 */
PipelineStepImpl.prototype['state'] = undefined;






export default PipelineStepImpl;

