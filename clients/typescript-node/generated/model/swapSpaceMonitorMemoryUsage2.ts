/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

export class SwapSpaceMonitorMemoryUsage2 {
    '_class'?: string;
    'availablePhysicalMemory'?: number;
    'availableSwapSpace'?: number;
    'totalPhysicalMemory'?: number;
    'totalSwapSpace'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "availablePhysicalMemory",
            "baseName": "availablePhysicalMemory",
            "type": "number"
        },
        {
            "name": "availableSwapSpace",
            "baseName": "availableSwapSpace",
            "type": "number"
        },
        {
            "name": "totalPhysicalMemory",
            "baseName": "totalPhysicalMemory",
            "type": "number"
        },
        {
            "name": "totalSwapSpace",
            "baseName": "totalSwapSpace",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return SwapSpaceMonitorMemoryUsage2.attributeTypeMap;
    }
}

