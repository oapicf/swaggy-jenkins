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

import { Link } from '../models/Link';
import { HttpFile } from '../http/http';

export class InputStepImpllinks {
    'self'?: Link;
    '_class'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "self",
            "baseName": "self",
            "type": "Link",
            "format": ""
        },
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return InputStepImpllinks.attributeTypeMap;
    }

    public constructor() {
    }
}

