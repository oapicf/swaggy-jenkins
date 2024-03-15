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

import { FreeStyleBuild } from '../models/FreeStyleBuild';
import { HttpFile } from '../http/http';

export class HudsonMasterComputerexecutors {
    'currentExecutable'?: FreeStyleBuild;
    'idle'?: boolean;
    'likelyStuck'?: boolean;
    'number'?: number;
    'progress'?: number;
    '_class'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "currentExecutable",
            "baseName": "currentExecutable",
            "type": "FreeStyleBuild",
            "format": ""
        },
        {
            "name": "idle",
            "baseName": "idle",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "likelyStuck",
            "baseName": "likelyStuck",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "number",
            "baseName": "number",
            "type": "number",
            "format": ""
        },
        {
            "name": "progress",
            "baseName": "progress",
            "type": "number",
            "format": ""
        },
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return HudsonMasterComputerexecutors.attributeTypeMap;
    }

    public constructor() {
    }
}

