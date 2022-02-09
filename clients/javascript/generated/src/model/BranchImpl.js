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
import BranchImpllinks from './BranchImpllinks';
import BranchImplpermissions from './BranchImplpermissions';
import PipelineRunImpl from './PipelineRunImpl';
import StringParameterDefinition from './StringParameterDefinition';

/**
 * The BranchImpl model module.
 * @module model/BranchImpl
 * @version 1.1.2-pre.0
 */
class BranchImpl {
    /**
     * Constructs a new <code>BranchImpl</code>.
     * @alias module:model/BranchImpl
     */
    constructor() { 
        
        BranchImpl.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BranchImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BranchImpl} obj Optional instance to populate.
     * @return {module:model/BranchImpl} The populated <code>BranchImpl</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BranchImpl();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('displayName')) {
                obj['displayName'] = ApiClient.convertToType(data['displayName'], 'String');
            }
            if (data.hasOwnProperty('estimatedDurationInMillis')) {
                obj['estimatedDurationInMillis'] = ApiClient.convertToType(data['estimatedDurationInMillis'], 'Number');
            }
            if (data.hasOwnProperty('fullDisplayName')) {
                obj['fullDisplayName'] = ApiClient.convertToType(data['fullDisplayName'], 'String');
            }
            if (data.hasOwnProperty('fullName')) {
                obj['fullName'] = ApiClient.convertToType(data['fullName'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('organization')) {
                obj['organization'] = ApiClient.convertToType(data['organization'], 'String');
            }
            if (data.hasOwnProperty('parameters')) {
                obj['parameters'] = ApiClient.convertToType(data['parameters'], [StringParameterDefinition]);
            }
            if (data.hasOwnProperty('permissions')) {
                obj['permissions'] = BranchImplpermissions.constructFromObject(data['permissions']);
            }
            if (data.hasOwnProperty('weatherScore')) {
                obj['weatherScore'] = ApiClient.convertToType(data['weatherScore'], 'Number');
            }
            if (data.hasOwnProperty('pullRequest')) {
                obj['pullRequest'] = ApiClient.convertToType(data['pullRequest'], 'String');
            }
            if (data.hasOwnProperty('_links')) {
                obj['_links'] = BranchImpllinks.constructFromObject(data['_links']);
            }
            if (data.hasOwnProperty('latestRun')) {
                obj['latestRun'] = PipelineRunImpl.constructFromObject(data['latestRun']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
BranchImpl.prototype['_class'] = undefined;

/**
 * @member {String} displayName
 */
BranchImpl.prototype['displayName'] = undefined;

/**
 * @member {Number} estimatedDurationInMillis
 */
BranchImpl.prototype['estimatedDurationInMillis'] = undefined;

/**
 * @member {String} fullDisplayName
 */
BranchImpl.prototype['fullDisplayName'] = undefined;

/**
 * @member {String} fullName
 */
BranchImpl.prototype['fullName'] = undefined;

/**
 * @member {String} name
 */
BranchImpl.prototype['name'] = undefined;

/**
 * @member {String} organization
 */
BranchImpl.prototype['organization'] = undefined;

/**
 * @member {Array.<module:model/StringParameterDefinition>} parameters
 */
BranchImpl.prototype['parameters'] = undefined;

/**
 * @member {module:model/BranchImplpermissions} permissions
 */
BranchImpl.prototype['permissions'] = undefined;

/**
 * @member {Number} weatherScore
 */
BranchImpl.prototype['weatherScore'] = undefined;

/**
 * @member {String} pullRequest
 */
BranchImpl.prototype['pullRequest'] = undefined;

/**
 * @member {module:model/BranchImpllinks} _links
 */
BranchImpl.prototype['_links'] = undefined;

/**
 * @member {module:model/PipelineRunImpl} latestRun
 */
BranchImpl.prototype['latestRun'] = undefined;






export default BranchImpl;

