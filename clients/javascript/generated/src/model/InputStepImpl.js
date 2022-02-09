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
import InputStepImpllinks from './InputStepImpllinks';
import StringParameterDefinition from './StringParameterDefinition';

/**
 * The InputStepImpl model module.
 * @module model/InputStepImpl
 * @version 1.1.2-pre.0
 */
class InputStepImpl {
    /**
     * Constructs a new <code>InputStepImpl</code>.
     * @alias module:model/InputStepImpl
     */
    constructor() { 
        
        InputStepImpl.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>InputStepImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/InputStepImpl} obj Optional instance to populate.
     * @return {module:model/InputStepImpl} The populated <code>InputStepImpl</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new InputStepImpl();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = InputStepImpllinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('message')) {
                obj['message'] = ApiClient.convertToType(data['message'], 'String');
            }
            if (data.hasOwnProperty('ok')) {
                obj['ok'] = ApiClient.convertToType(data['ok'], 'String');
            }
            if (data.hasOwnProperty('parameters')) {
                obj['parameters'] = ApiClient.convertToType(data['parameters'], [StringParameterDefinition]);
            }
            if (data.hasOwnProperty('submitter')) {
                obj['submitter'] = ApiClient.convertToType(data['submitter'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
InputStepImpl.prototype['_class'] = undefined;

/**
 * @member {module:model/InputStepImpllinks} _links
 */
InputStepImpl.prototype['_links'] = undefined;

/**
 * @member {String} id
 */
InputStepImpl.prototype['id'] = undefined;

/**
 * @member {String} message
 */
InputStepImpl.prototype['message'] = undefined;

/**
 * @member {String} ok
 */
InputStepImpl.prototype['ok'] = undefined;

/**
 * @member {Array.<module:model/StringParameterDefinition>} parameters
 */
InputStepImpl.prototype['parameters'] = undefined;

/**
 * @member {String} submitter
 */
InputStepImpl.prototype['submitter'] = undefined;






export default InputStepImpl;

