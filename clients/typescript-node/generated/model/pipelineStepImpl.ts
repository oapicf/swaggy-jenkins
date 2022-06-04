/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';
import { InputStepImpl } from './inputStepImpl';
import { PipelineStepImpllinks } from './pipelineStepImpllinks';

export class PipelineStepImpl {
    '_class'?: string;
    'links'?: PipelineStepImpllinks;
    'displayName'?: string;
    'durationInMillis'?: number;
    'id'?: string;
    'input'?: InputStepImpl;
    'result'?: string;
    'startTime'?: string;
    'state'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "links",
            "baseName": "_links",
            "type": "PipelineStepImpllinks"
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string"
        },
        {
            "name": "durationInMillis",
            "baseName": "durationInMillis",
            "type": "number"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "input",
            "baseName": "input",
            "type": "InputStepImpl"
        },
        {
            "name": "result",
            "baseName": "result",
            "type": "string"
        },
        {
            "name": "startTime",
            "baseName": "startTime",
            "type": "string"
        },
        {
            "name": "state",
            "baseName": "state",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return PipelineStepImpl.attributeTypeMap;
    }
}

