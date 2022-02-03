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
import { FreeStyleBuild } from './freeStyleBuild';
import { FreeStyleProjectactions } from './freeStyleProjectactions';
import { FreeStyleProjecthealthReport } from './freeStyleProjecthealthReport';
import { NullSCM } from './nullSCM';


export interface FreeStyleProject { 
    _class?: string;
    name?: string;
    url?: string;
    color?: string;
    actions?: Array<FreeStyleProjectactions>;
    description?: string;
    displayName?: string;
    displayNameOrNull?: string;
    fullDisplayName?: string;
    fullName?: string;
    buildable?: boolean;
    builds?: Array<FreeStyleBuild>;
    firstBuild?: FreeStyleBuild;
    healthReport?: Array<FreeStyleProjecthealthReport>;
    inQueue?: boolean;
    keepDependencies?: boolean;
    lastBuild?: FreeStyleBuild;
    lastCompletedBuild?: FreeStyleBuild;
    lastFailedBuild?: string;
    lastStableBuild?: FreeStyleBuild;
    lastSuccessfulBuild?: FreeStyleBuild;
    lastUnstableBuild?: string;
    lastUnsuccessfulBuild?: string;
    nextBuildNumber?: number;
    queueItem?: string;
    concurrentBuild?: boolean;
    scm?: NullSCM;
}
