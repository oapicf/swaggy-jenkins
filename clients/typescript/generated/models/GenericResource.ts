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

import { HttpFile } from '../http/http';

export class GenericResource {
    '_class'?: string;
    'displayName'?: string;
    'durationInMillis'?: number;
    'id'?: string;
    'result'?: string;
    'startTime'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string",
            "format": ""
        },
        {
            "name": "durationInMillis",
            "baseName": "durationInMillis",
            "type": "number",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string",
            "format": ""
        },
        {
            "name": "result",
            "baseName": "result",
            "type": "string",
            "format": ""
        },
        {
            "name": "startTime",
            "baseName": "startTime",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return GenericResource.attributeTypeMap;
    }

    public constructor() {
    }
}

