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

import * as models from './models';

export interface FreeStyleProject {
    _class?: string;

    name?: string;

    url?: string;

    color?: string;

    actions?: Array<models.FreeStyleProjectactions>;

    description?: string;

    displayName?: string;

    displayNameOrNull?: string;

    fullDisplayName?: string;

    fullName?: string;

    buildable?: boolean;

    builds?: Array<models.FreeStyleBuild>;

    firstBuild?: models.FreeStyleBuild;

    healthReport?: Array<models.FreeStyleProjecthealthReport>;

    inQueue?: boolean;

    keepDependencies?: boolean;

    lastBuild?: models.FreeStyleBuild;

    lastCompletedBuild?: models.FreeStyleBuild;

    lastFailedBuild?: string;

    lastStableBuild?: models.FreeStyleBuild;

    lastSuccessfulBuild?: models.FreeStyleBuild;

    lastUnstableBuild?: string;

    lastUnsuccessfulBuild?: string;

    nextBuildNumber?: number;

    queueItem?: string;

    concurrentBuild?: boolean;

    scm?: models.NullSCM;

}
