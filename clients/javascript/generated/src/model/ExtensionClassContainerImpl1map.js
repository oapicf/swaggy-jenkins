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
import ExtensionClassImpl from './ExtensionClassImpl';

/**
 * The ExtensionClassContainerImpl1map model module.
 * @module model/ExtensionClassContainerImpl1map
 * @version 2.0.1
 */
class ExtensionClassContainerImpl1map {
    /**
     * Constructs a new <code>ExtensionClassContainerImpl1map</code>.
     * @alias module:model/ExtensionClassContainerImpl1map
     */
    constructor() { 
        
        ExtensionClassContainerImpl1map.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ExtensionClassContainerImpl1map</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ExtensionClassContainerImpl1map} obj Optional instance to populate.
     * @return {module:model/ExtensionClassContainerImpl1map} The populated <code>ExtensionClassContainerImpl1map</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ExtensionClassContainerImpl1map();

            if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.PipelineImpl')) {
                obj['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = ExtensionClassImpl.constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']);
            }
            if (data.hasOwnProperty('io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl')) {
                obj['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = ExtensionClassImpl.constructFromObject(data['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']);
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>ExtensionClassContainerImpl1map</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>ExtensionClassContainerImpl1map</code>.
     */
    static validateJSON(data) {
        // validate the optional field `io.jenkins.blueocean.service.embedded.rest.PipelineImpl`
        if (data['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']) { // data not null
          ExtensionClassImpl.validateJSON(data['io.jenkins.blueocean.service.embedded.rest.PipelineImpl']);
        }
        // validate the optional field `io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`
        if (data['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']) { // data not null
          ExtensionClassImpl.validateJSON(data['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl']);
        }
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }

        return true;
    }


}



/**
 * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.PipelineImpl
 */
ExtensionClassContainerImpl1map.prototype['io.jenkins.blueocean.service.embedded.rest.PipelineImpl'] = undefined;

/**
 * @member {module:model/ExtensionClassImpl} io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
 */
ExtensionClassContainerImpl1map.prototype['io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl'] = undefined;

/**
 * @member {String} _class
 */
ExtensionClassContainerImpl1map.prototype['_class'] = undefined;






export default ExtensionClassContainerImpl1map;

