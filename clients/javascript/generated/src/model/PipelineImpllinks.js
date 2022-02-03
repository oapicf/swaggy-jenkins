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
 * The PipelineImpllinks model module.
 * @module model/PipelineImpllinks
 * @version 1.1.1
 */
class PipelineImpllinks {
    /**
     * Constructs a new <code>PipelineImpllinks</code>.
     * @alias module:model/PipelineImpllinks
     */
    constructor() { 
        
        PipelineImpllinks.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PipelineImpllinks</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PipelineImpllinks} obj Optional instance to populate.
     * @return {module:model/PipelineImpllinks} The populated <code>PipelineImpllinks</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PipelineImpllinks();

            if (data.hasOwnProperty('runs')) {
                obj['runs'] = Link.constructFromObject(data['runs']);
            }
            if (data.hasOwnProperty('self')) {
                obj['self'] = Link.constructFromObject(data['self']);
            }
            if (data.hasOwnProperty('queue')) {
                obj['queue'] = Link.constructFromObject(data['queue']);
            }
            if (data.hasOwnProperty('actions')) {
                obj['actions'] = Link.constructFromObject(data['actions']);
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/Link} runs
 */
PipelineImpllinks.prototype['runs'] = undefined;

/**
 * @member {module:model/Link} self
 */
PipelineImpllinks.prototype['self'] = undefined;

/**
 * @member {module:model/Link} queue
 */
PipelineImpllinks.prototype['queue'] = undefined;

/**
 * @member {module:model/Link} actions
 */
PipelineImpllinks.prototype['actions'] = undefined;

/**
 * @member {String} _class
 */
PipelineImpllinks.prototype['_class'] = undefined;






export default PipelineImpllinks;

