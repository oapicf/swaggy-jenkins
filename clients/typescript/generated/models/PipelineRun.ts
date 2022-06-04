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

import { PipelineRunartifacts } from './PipelineRunartifacts';
import { HttpFile } from '../http/http';

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

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string",
            "format": ""
        },
        {
            "name": "artifacts",
            "baseName": "artifacts",
            "type": "Array<PipelineRunartifacts>",
            "format": ""
        },
        {
            "name": "durationInMillis",
            "baseName": "durationInMillis",
            "type": "number",
            "format": ""
        },
        {
            "name": "estimatedDurationInMillis",
            "baseName": "estimatedDurationInMillis",
            "type": "number",
            "format": ""
        },
        {
            "name": "enQueueTime",
            "baseName": "enQueueTime",
            "type": "string",
            "format": ""
        },
        {
            "name": "endTime",
            "baseName": "endTime",
            "type": "string",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string",
            "format": ""
        },
        {
            "name": "organization",
            "baseName": "organization",
            "type": "string",
            "format": ""
        },
        {
            "name": "pipeline",
            "baseName": "pipeline",
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
            "name": "runSummary",
            "baseName": "runSummary",
            "type": "string",
            "format": ""
        },
        {
            "name": "startTime",
            "baseName": "startTime",
            "type": "string",
            "format": ""
        },
        {
            "name": "state",
            "baseName": "state",
            "type": "string",
            "format": ""
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "string",
            "format": ""
        },
        {
            "name": "commitId",
            "baseName": "commitId",
            "type": "string",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return PipelineRun.attributeTypeMap;
    }

    public constructor() {
    }
}

