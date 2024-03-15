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
import { PipelineImpllinks } from './pipelineImpllinks';

export class PipelineImpl {
    '_class'?: string;
    'displayName'?: string;
    'estimatedDurationInMillis'?: number;
    'fullName'?: string;
    'latestRun'?: string;
    'name'?: string;
    'organization'?: string;
    'weatherScore'?: number;
    'links'?: PipelineImpllinks;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string"
        },
        {
            "name": "estimatedDurationInMillis",
            "baseName": "estimatedDurationInMillis",
            "type": "number"
        },
        {
            "name": "fullName",
            "baseName": "fullName",
            "type": "string"
        },
        {
            "name": "latestRun",
            "baseName": "latestRun",
            "type": "string"
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string"
        },
        {
            "name": "organization",
            "baseName": "organization",
            "type": "string"
        },
        {
            "name": "weatherScore",
            "baseName": "weatherScore",
            "type": "number"
        },
        {
            "name": "links",
            "baseName": "_links",
            "type": "PipelineImpllinks"
        }    ];

    static getAttributeTypeMap() {
        return PipelineImpl.attributeTypeMap;
    }
}

