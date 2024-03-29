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
import CauseAction from './CauseAction';
import FreeStyleProject from './FreeStyleProject';

/**
 * The QueueBlockedItem model module.
 * @module model/QueueBlockedItem
 * @version 2.0.1
 */
class QueueBlockedItem {
    /**
     * Constructs a new <code>QueueBlockedItem</code>.
     * @alias module:model/QueueBlockedItem
     */
    constructor() { 
        
        QueueBlockedItem.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>QueueBlockedItem</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueueBlockedItem} obj Optional instance to populate.
     * @return {module:model/QueueBlockedItem} The populated <code>QueueBlockedItem</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new QueueBlockedItem();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('actions')) {
                obj['actions'] = ApiClient.convertToType(data['actions'], [CauseAction]);
            }
            if (data.hasOwnProperty('blocked')) {
                obj['blocked'] = ApiClient.convertToType(data['blocked'], 'Boolean');
            }
            if (data.hasOwnProperty('buildable')) {
                obj['buildable'] = ApiClient.convertToType(data['buildable'], 'Boolean');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'Number');
            }
            if (data.hasOwnProperty('inQueueSince')) {
                obj['inQueueSince'] = ApiClient.convertToType(data['inQueueSince'], 'Number');
            }
            if (data.hasOwnProperty('params')) {
                obj['params'] = ApiClient.convertToType(data['params'], 'String');
            }
            if (data.hasOwnProperty('stuck')) {
                obj['stuck'] = ApiClient.convertToType(data['stuck'], 'Boolean');
            }
            if (data.hasOwnProperty('task')) {
                obj['task'] = FreeStyleProject.constructFromObject(data['task']);
            }
            if (data.hasOwnProperty('url')) {
                obj['url'] = ApiClient.convertToType(data['url'], 'String');
            }
            if (data.hasOwnProperty('why')) {
                obj['why'] = ApiClient.convertToType(data['why'], 'String');
            }
            if (data.hasOwnProperty('buildableStartMilliseconds')) {
                obj['buildableStartMilliseconds'] = ApiClient.convertToType(data['buildableStartMilliseconds'], 'Number');
            }
        }
        return obj;
    }

    /**
     * Validates the JSON data with respect to <code>QueueBlockedItem</code>.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @return {boolean} to indicate whether the JSON data is valid with respect to <code>QueueBlockedItem</code>.
     */
    static validateJSON(data) {
        // ensure the json data is a string
        if (data['_class'] && !(typeof data['_class'] === 'string' || data['_class'] instanceof String)) {
            throw new Error("Expected the field `_class` to be a primitive type in the JSON string but got " + data['_class']);
        }
        if (data['actions']) { // data not null
            // ensure the json data is an array
            if (!Array.isArray(data['actions'])) {
                throw new Error("Expected the field `actions` to be an array in the JSON data but got " + data['actions']);
            }
            // validate the optional field `actions` (array)
            for (const item of data['actions']) {
                CauseAction.validateJSON(item);
            };
        }
        // ensure the json data is a string
        if (data['params'] && !(typeof data['params'] === 'string' || data['params'] instanceof String)) {
            throw new Error("Expected the field `params` to be a primitive type in the JSON string but got " + data['params']);
        }
        // validate the optional field `task`
        if (data['task']) { // data not null
          FreeStyleProject.validateJSON(data['task']);
        }
        // ensure the json data is a string
        if (data['url'] && !(typeof data['url'] === 'string' || data['url'] instanceof String)) {
            throw new Error("Expected the field `url` to be a primitive type in the JSON string but got " + data['url']);
        }
        // ensure the json data is a string
        if (data['why'] && !(typeof data['why'] === 'string' || data['why'] instanceof String)) {
            throw new Error("Expected the field `why` to be a primitive type in the JSON string but got " + data['why']);
        }

        return true;
    }


}



/**
 * @member {String} _class
 */
QueueBlockedItem.prototype['_class'] = undefined;

/**
 * @member {Array.<module:model/CauseAction>} actions
 */
QueueBlockedItem.prototype['actions'] = undefined;

/**
 * @member {Boolean} blocked
 */
QueueBlockedItem.prototype['blocked'] = undefined;

/**
 * @member {Boolean} buildable
 */
QueueBlockedItem.prototype['buildable'] = undefined;

/**
 * @member {Number} id
 */
QueueBlockedItem.prototype['id'] = undefined;

/**
 * @member {Number} inQueueSince
 */
QueueBlockedItem.prototype['inQueueSince'] = undefined;

/**
 * @member {String} params
 */
QueueBlockedItem.prototype['params'] = undefined;

/**
 * @member {Boolean} stuck
 */
QueueBlockedItem.prototype['stuck'] = undefined;

/**
 * @member {module:model/FreeStyleProject} task
 */
QueueBlockedItem.prototype['task'] = undefined;

/**
 * @member {String} url
 */
QueueBlockedItem.prototype['url'] = undefined;

/**
 * @member {String} why
 */
QueueBlockedItem.prototype['why'] = undefined;

/**
 * @member {Number} buildableStartMilliseconds
 */
QueueBlockedItem.prototype['buildableStartMilliseconds'] = undefined;






export default QueueBlockedItem;

