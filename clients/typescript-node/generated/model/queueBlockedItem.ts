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
 */

import { RequestFile } from './models';
import { CauseAction } from './causeAction';
import { FreeStyleProject } from './freeStyleProject';

export class QueueBlockedItem {
    '_class'?: string;
    'actions'?: Array<CauseAction>;
    'blocked'?: boolean;
    'buildable'?: boolean;
    'id'?: number;
    'inQueueSince'?: number;
    'params'?: string;
    'stuck'?: boolean;
    'task'?: FreeStyleProject;
    'url'?: string;
    'why'?: string;
    'buildableStartMilliseconds'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "actions",
            "baseName": "actions",
            "type": "Array<CauseAction>"
        },
        {
            "name": "blocked",
            "baseName": "blocked",
            "type": "boolean"
        },
        {
            "name": "buildable",
            "baseName": "buildable",
            "type": "boolean"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number"
        },
        {
            "name": "inQueueSince",
            "baseName": "inQueueSince",
            "type": "number"
        },
        {
            "name": "params",
            "baseName": "params",
            "type": "string"
        },
        {
            "name": "stuck",
            "baseName": "stuck",
            "type": "boolean"
        },
        {
            "name": "task",
            "baseName": "task",
            "type": "FreeStyleProject"
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string"
        },
        {
            "name": "why",
            "baseName": "why",
            "type": "string"
        },
        {
            "name": "buildableStartMilliseconds",
            "baseName": "buildableStartMilliseconds",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return QueueBlockedItem.attributeTypeMap;
    }
}

