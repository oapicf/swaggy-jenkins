/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The QueueItemImpl model module.
 * @module model/QueueItemImpl
 * @version 1.5.1-pre.0
 */
class QueueItemImpl {
    /**
     * @member {String} _class
     * @type {String}
     */
    _class;
    /**
     * @member {Number} expectedBuildNumber
     * @type {Number}
     */
    expectedBuildNumber;
    /**
     * @member {String} id
     * @type {String}
     */
    id;
    /**
     * @member {String} pipeline
     * @type {String}
     */
    pipeline;
    /**
     * @member {Number} queuedTime
     * @type {Number}
     */
    queuedTime;

    

    /**
     * Constructs a new <code>QueueItemImpl</code>.
     * @alias module:model/QueueItemImpl
     */
    constructor() { 
        
        QueueItemImpl.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>QueueItemImpl</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/QueueItemImpl} obj Optional instance to populate.
     * @return {module:model/QueueItemImpl} The populated <code>QueueItemImpl</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new QueueItemImpl();

            if (data.hasOwnProperty('_class')) {
                obj['_class'] = ApiClient.convertToType(data['_class'], 'String');
            }
            if (data.hasOwnProperty('expectedBuildNumber')) {
                obj['expectedBuildNumber'] = ApiClient.convertToType(data['expectedBuildNumber'], 'Number');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('pipeline')) {
                obj['pipeline'] = ApiClient.convertToType(data['pipeline'], 'String');
            }
            if (data.hasOwnProperty('queuedTime')) {
                obj['queuedTime'] = ApiClient.convertToType(data['queuedTime'], 'Number');
            }
        }
        return obj;
    }
}



export default QueueItemImpl;

