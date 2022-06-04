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

import { HttpFile } from '../http/http';

export class MultibranchPipeline {
    'displayName'?: string;
    'estimatedDurationInMillis'?: number;
    'latestRun'?: string;
    'name'?: string;
    'organization'?: string;
    'weatherScore'?: number;
    'branchNames'?: Array<string>;
    'numberOfFailingBranches'?: number;
    'numberOfFailingPullRequests'?: number;
    'numberOfSuccessfulBranches'?: number;
    'numberOfSuccessfulPullRequests'?: number;
    'totalNumberOfBranches'?: number;
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
            "name": "latestRun",
            "baseName": "latestRun",
            "type": "string",
            "format": ""
        },
        {
            "name": "name",
            "baseName": "name",
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
            "name": "weatherScore",
            "baseName": "weatherScore",
            "type": "number",
            "format": ""
        },
        {
            "name": "branchNames",
            "baseName": "branchNames",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "numberOfFailingBranches",
            "baseName": "numberOfFailingBranches",
            "type": "number",
            "format": ""
        },
        {
            "name": "numberOfFailingPullRequests",
            "baseName": "numberOfFailingPullRequests",
            "type": "number",
            "format": ""
        },
        {
            "name": "numberOfSuccessfulBranches",
            "baseName": "numberOfSuccessfulBranches",
            "type": "number",
            "format": ""
        },
        {
            "name": "numberOfSuccessfulPullRequests",
            "baseName": "numberOfSuccessfulPullRequests",
            "type": "number",
            "format": ""
        },
        {
            "name": "totalNumberOfBranches",
            "baseName": "totalNumberOfBranches",
            "type": "number",
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
        return MultibranchPipeline.attributeTypeMap;
    }

    public constructor() {
    }
}

