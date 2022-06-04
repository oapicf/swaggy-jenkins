/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HudsonMasterComputer } from './HudsonMasterComputer';
import { HttpFile } from '../http/http';

export class ComputerSet {
    '_class'?: string;
    'busyExecutors'?: number;
    'computer'?: Array<HudsonMasterComputer>;
    'displayName'?: string;
    'totalExecutors'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        },
        {
            "name": "busyExecutors",
            "baseName": "busyExecutors",
            "type": "number",
            "format": ""
        },
        {
            "name": "computer",
            "baseName": "computer",
            "type": "Array<HudsonMasterComputer>",
            "format": ""
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string",
            "format": ""
        },
        {
            "name": "totalExecutors",
            "baseName": "totalExecutors",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ComputerSet.attributeTypeMap;
    }

    public constructor() {
    }
}

