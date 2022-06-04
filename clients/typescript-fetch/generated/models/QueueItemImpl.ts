/* tslint:disable */
/* eslint-disable */
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
 */

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface QueueItemImpl
 */
export interface QueueItemImpl {
    /**
     * 
     * @type {string}
     * @memberof QueueItemImpl
     */
    _class?: string;
    /**
     * 
     * @type {number}
     * @memberof QueueItemImpl
     */
    expectedBuildNumber?: number;
    /**
     * 
     * @type {string}
     * @memberof QueueItemImpl
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof QueueItemImpl
     */
    pipeline?: string;
    /**
     * 
     * @type {number}
     * @memberof QueueItemImpl
     */
    queuedTime?: number;
}

export function QueueItemImplFromJSON(json: any): QueueItemImpl {
    return QueueItemImplFromJSONTyped(json, false);
}

export function QueueItemImplFromJSONTyped(json: any, ignoreDiscriminator: boolean): QueueItemImpl {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'expectedBuildNumber': !exists(json, 'expectedBuildNumber') ? undefined : json['expectedBuildNumber'],
        'id': !exists(json, 'id') ? undefined : json['id'],
        'pipeline': !exists(json, 'pipeline') ? undefined : json['pipeline'],
        'queuedTime': !exists(json, 'queuedTime') ? undefined : json['queuedTime'],
    };
}

export function QueueItemImplToJSON(value?: QueueItemImpl | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'expectedBuildNumber': value.expectedBuildNumber,
        'id': value.id,
        'pipeline': value.pipeline,
        'queuedTime': value.queuedTime,
    };
}

