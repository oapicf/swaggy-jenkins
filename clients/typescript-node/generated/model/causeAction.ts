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
import { CauseUserIdCause } from './causeUserIdCause';

export class CauseAction {
    '_class'?: string;
    'causes'?: Array<CauseUserIdCause>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "causes",
            "baseName": "causes",
            "type": "Array<CauseUserIdCause>"
        }    ];

    static getAttributeTypeMap() {
        return CauseAction.attributeTypeMap;
    }
}

