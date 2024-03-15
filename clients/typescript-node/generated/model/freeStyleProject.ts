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
import { FreeStyleBuild } from './freeStyleBuild';
import { FreeStyleProjectactions } from './freeStyleProjectactions';
import { FreeStyleProjecthealthReport } from './freeStyleProjecthealthReport';
import { NullSCM } from './nullSCM';

export class FreeStyleProject {
    '_class'?: string;
    'name'?: string;
    'url'?: string;
    'color'?: string;
    'actions'?: Array<FreeStyleProjectactions>;
    'description'?: string;
    'displayName'?: string;
    'displayNameOrNull'?: string;
    'fullDisplayName'?: string;
    'fullName'?: string;
    'buildable'?: boolean;
    'builds'?: Array<FreeStyleBuild>;
    'firstBuild'?: FreeStyleBuild;
    'healthReport'?: Array<FreeStyleProjecthealthReport>;
    'inQueue'?: boolean;
    'keepDependencies'?: boolean;
    'lastBuild'?: FreeStyleBuild;
    'lastCompletedBuild'?: FreeStyleBuild;
    'lastFailedBuild'?: string;
    'lastStableBuild'?: FreeStyleBuild;
    'lastSuccessfulBuild'?: FreeStyleBuild;
    'lastUnstableBuild'?: string;
    'lastUnsuccessfulBuild'?: string;
    'nextBuildNumber'?: number;
    'queueItem'?: string;
    'concurrentBuild'?: boolean;
    'scm'?: NullSCM;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "name",
            "baseName": "name",
            "type": "string"
        },
        {
            "name": "url",
            "baseName": "url",
            "type": "string"
        },
        {
            "name": "color",
            "baseName": "color",
            "type": "string"
        },
        {
            "name": "actions",
            "baseName": "actions",
            "type": "Array<FreeStyleProjectactions>"
        },
        {
            "name": "description",
            "baseName": "description",
            "type": "string"
        },
        {
            "name": "displayName",
            "baseName": "displayName",
            "type": "string"
        },
        {
            "name": "displayNameOrNull",
            "baseName": "displayNameOrNull",
            "type": "string"
        },
        {
            "name": "fullDisplayName",
            "baseName": "fullDisplayName",
            "type": "string"
        },
        {
            "name": "fullName",
            "baseName": "fullName",
            "type": "string"
        },
        {
            "name": "buildable",
            "baseName": "buildable",
            "type": "boolean"
        },
        {
            "name": "builds",
            "baseName": "builds",
            "type": "Array<FreeStyleBuild>"
        },
        {
            "name": "firstBuild",
            "baseName": "firstBuild",
            "type": "FreeStyleBuild"
        },
        {
            "name": "healthReport",
            "baseName": "healthReport",
            "type": "Array<FreeStyleProjecthealthReport>"
        },
        {
            "name": "inQueue",
            "baseName": "inQueue",
            "type": "boolean"
        },
        {
            "name": "keepDependencies",
            "baseName": "keepDependencies",
            "type": "boolean"
        },
        {
            "name": "lastBuild",
            "baseName": "lastBuild",
            "type": "FreeStyleBuild"
        },
        {
            "name": "lastCompletedBuild",
            "baseName": "lastCompletedBuild",
            "type": "FreeStyleBuild"
        },
        {
            "name": "lastFailedBuild",
            "baseName": "lastFailedBuild",
            "type": "string"
        },
        {
            "name": "lastStableBuild",
            "baseName": "lastStableBuild",
            "type": "FreeStyleBuild"
        },
        {
            "name": "lastSuccessfulBuild",
            "baseName": "lastSuccessfulBuild",
            "type": "FreeStyleBuild"
        },
        {
            "name": "lastUnstableBuild",
            "baseName": "lastUnstableBuild",
            "type": "string"
        },
        {
            "name": "lastUnsuccessfulBuild",
            "baseName": "lastUnsuccessfulBuild",
            "type": "string"
        },
        {
            "name": "nextBuildNumber",
            "baseName": "nextBuildNumber",
            "type": "number"
        },
        {
            "name": "queueItem",
            "baseName": "queueItem",
            "type": "string"
        },
        {
            "name": "concurrentBuild",
            "baseName": "concurrentBuild",
            "type": "boolean"
        },
        {
            "name": "scm",
            "baseName": "scm",
            "type": "NullSCM"
        }    ];

    static getAttributeTypeMap() {
        return FreeStyleProject.attributeTypeMap;
    }
}

