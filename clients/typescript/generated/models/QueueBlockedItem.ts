/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { CauseAction } from '../models/CauseAction';
import { FreeStyleProject } from '../models/FreeStyleProject';
import { HttpFile } from '../http/http';

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

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        },
        {
            "name": "actions",
            "baseName": "actions",
            "type": "Array<CauseAction>",
            "format": ""
        },
        {
            "name": "blocked",
            "baseName": "blocked",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "buildable",
            "baseName": "buildable",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        },
        {
            "name": "inQueueSince",
            "baseName": "inQueueSince",
            "type": "number",
            "format": ""
        },
        {
            "name": "params",
            "baseName": "params",
            "type": "string",
            "format": ""
        },
        {
            "name": "stuck",
            "baseName": "stuck",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "task",
            "baseName": "task",
            "type": "FreeStyleProject",
            "format": ""
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string",
            "format": ""
        },
        {
            "name": "why",
            "baseName": "why",
            "type": "string",
            "format": ""
        },
        {
            "name": "buildableStartMilliseconds",
            "baseName": "buildableStartMilliseconds",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return QueueBlockedItem.attributeTypeMap;
    }

    public constructor() {
    }
}

