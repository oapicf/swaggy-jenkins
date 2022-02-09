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
import { PipelineRunartifacts } from './pipelineRunartifacts';

export class PipelineRun {
    '_class'?: string;
    'artifacts'?: Array<PipelineRunartifacts>;
    'durationInMillis'?: number;
    'estimatedDurationInMillis'?: number;
    'enQueueTime'?: string;
    'endTime'?: string;
    'id'?: string;
    'organization'?: string;
    'pipeline'?: string;
    'result'?: string;
    'runSummary'?: string;
    'startTime'?: string;
    'state'?: string;
    'type'?: string;
    'commitId'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "artifacts",
            "baseName": "artifacts",
            "type": "Array<PipelineRunartifacts>"
        },
        {
            "name": "durationInMillis",
            "baseName": "durationInMillis",
            "type": "number"
        },
        {
            "name": "estimatedDurationInMillis",
            "baseName": "estimatedDurationInMillis",
            "type": "number"
        },
        {
            "name": "enQueueTime",
            "baseName": "enQueueTime",
            "type": "string"
        },
        {
            "name": "endTime",
            "baseName": "endTime",
            "type": "string"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "organization",
            "baseName": "organization",
            "type": "string"
        },
        {
            "name": "pipeline",
            "baseName": "pipeline",
            "type": "string"
        },
        {
            "name": "result",
            "baseName": "result",
            "type": "string"
        },
        {
            "name": "runSummary",
            "baseName": "runSummary",
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
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "string"
        },
        {
            "name": "commitId",
            "baseName": "commitId",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return PipelineRun.attributeTypeMap;
    }
}

