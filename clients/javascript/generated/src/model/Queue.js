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
import QueueBlockedItem from './QueueBlockedItem';

/**
 * The Queue model module.
 * @module model/Queue
 * @version 1.1.2-pre.0
 */
class Queue {
    /**
     * Constructs a new <code>Queue</code>.
     * @alias module:model/Queue
     */
    constructor() { 
        
        Queue.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Queue</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Queue} obj Optional instance to populate.
     * @return {module:model/Queue} The populated <code>Queue</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Queue();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('items')) {
                obj['items'] = ApiClient.convertToType(data['items'], [QueueBlockedItem]);
            }
        }
        return obj;
    }


}

/**
 * @member {String} _class
 */
Queue.prototype['_class'] = undefined;

/**
 * @member {Array.<module:model/QueueBlockedItem>} items
 */
Queue.prototype['items'] = undefined;






export default Queue;

