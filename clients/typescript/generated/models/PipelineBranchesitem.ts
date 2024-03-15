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

import { PipelineBranchesitemlatestRun } from '../models/PipelineBranchesitemlatestRun';
import { PipelineBranchesitempullRequest } from '../models/PipelineBranchesitempullRequest';
import { HttpFile } from '../http/http';

export class PipelineBranchesitem {
    'displayName'?: string;
    'estimatedDurationInMillis'?: number;
    'name'?: string;
    'weatherScore'?: number;
    'latestRun'?: PipelineBranchesitemlatestRun;
    'organization'?: string;
    'pullRequest'?: PipelineBranchesitempullRequest;
    'totalNumberOfPullRequests'?: number;
    '_class'?: string;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string",
            "format": ""
        },
        {
            "name": "estimatedDurationInMillis",
            "baseName": "estimatedDurationInMillis",
            "type": "number",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string",
            "format": ""
        },
        {
            "name": "weatherScore",
            "baseName": "weatherScore",
            "type": "number",
            "format": ""
        },
        {
            "name": "latestRun",
            "baseName": "latestRun",
            "type": "PipelineBranchesitemlatestRun",
            "format": ""
        },
        {
            "name": "organization",
            "baseName": "organization",
            "type": "string",
            "format": ""
        },
        {
            "name": "pullRequest",
            "baseName": "pullRequest",
            "type": "PipelineBranchesitempullRequest",
            "format": ""
        },
        {
            "name": "totalNumberOfPullRequests",
            "baseName": "totalNumberOfPullRequests",
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
        return PipelineBranchesitem.attributeTypeMap;
    }

    public constructor() {
    }
}

