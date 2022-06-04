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
import {
    QueueBlockedItem,
    QueueBlockedItemFromJSON,
    QueueBlockedItemFromJSONTyped,
    QueueBlockedItemToJSON,
} from './QueueBlockedItem';

/**
 * 
 * @export
 * @interface Queue
 */
export interface Queue {
    /**
     * 
     * @type {string}
     * @memberof Queue
     */
    _class?: string;
    /**
     * 
     * @type {Array<QueueBlockedItem>}
     * @memberof Queue
     */
    items?: Array<QueueBlockedItem>;
}

export function QueueFromJSON(json: any): Queue {
    return QueueFromJSONTyped(json, false);
}

export function QueueFromJSONTyped(json: any, ignoreDiscriminator: boolean): Queue {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'items': !exists(json, 'items') ? undefined : ((json['items'] as Array<any>).map(QueueBlockedItemFromJSON)),
    };
}

export function QueueToJSON(value?: Queue | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'items': value.items === undefined ? undefined : ((value.items as Array<any>).map(QueueBlockedItemToJSON)),
    };
}

