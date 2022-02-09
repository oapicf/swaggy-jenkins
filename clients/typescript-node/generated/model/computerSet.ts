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
import { HudsonMasterComputer } from './hudsonMasterComputer';

export class ComputerSet {
    '_class'?: string;
    'busyExecutors'?: number;
    'computer'?: Array<HudsonMasterComputer>;
    'displayName'?: string;
    'totalExecutors'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "busyExecutors",
            "baseName": "busyExecutors",
            "type": "number"
        },
        {
            "name": "computer",
            "baseName": "computer",
            "type": "Array<HudsonMasterComputer>"
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string"
        },
        {
            "name": "totalExecutors",
            "baseName": "totalExecutors",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return ComputerSet.attributeTypeMap;
    }
}

