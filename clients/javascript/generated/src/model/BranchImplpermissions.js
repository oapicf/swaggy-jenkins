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

/**
 * The BranchImplpermissions model module.
 * @module model/BranchImplpermissions
 * @version 1.1.1
 */
class BranchImplpermissions {
    /**
     * Constructs a new <code>BranchImplpermissions</code>.
     * @alias module:model/BranchImplpermissions
     */
    constructor() { 
        
        BranchImplpermissions.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BranchImplpermissions</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BranchImplpermissions} obj Optional instance to populate.
     * @return {module:model/BranchImplpermissions} The populated <code>BranchImplpermissions</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BranchImplpermissions();

            if (data.hasOwnProperty('create')) {
                obj['create'] = ApiClient.convertToType(data['create'], 'Boolean');
            }
            if (data.hasOwnProperty('read')) {
                obj['read'] = ApiClient.convertToType(data['read'], 'Boolean');
            }
            if (data.hasOwnProperty('start')) {
                obj['start'] = ApiClient.convertToType(data['start'], 'Boolean');
            }
            if (data.hasOwnProperty('stop')) {
                obj['stop'] = ApiClient.convertToType(data['stop'], 'Boolean');
            }
            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {Boolean} create
 */
BranchImplpermissions.prototype['create'] = undefined;

/**
 * @member {Boolean} read
 */
BranchImplpermissions.prototype['read'] = undefined;

/**
 * @member {Boolean} start
 */
BranchImplpermissions.prototype['start'] = undefined;

/**
 * @member {Boolean} stop
 */
BranchImplpermissions.prototype['stop'] = undefined;

/**
 * @member {String} _class
 */
BranchImplpermissions.prototype['_class'] = undefined;






export default BranchImplpermissions;

