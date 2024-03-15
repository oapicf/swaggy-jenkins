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
 */

import { RequestFile } from './models';
import { QueueBlockedItem } from './queueBlockedItem';

export class Queue {
    '_class'?: string;
    'items'?: Array<QueueBlockedItem>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "items",
            "baseName": "items",
            "type": "Array<QueueBlockedItem>"
        }    ];

    static getAttributeTypeMap() {
        return Queue.attributeTypeMap;
    }
}

