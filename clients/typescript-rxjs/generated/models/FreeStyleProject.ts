// tslint:disable
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

import type {
    FreeStyleBuild,
    FreeStyleProjectactions,
    FreeStyleProjecthealthReport,
    NullSCM,
} from './';

/**
 * @export
 * @interface FreeStyleProject
 */
export interface FreeStyleProject {
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    _class?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    name?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    url?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    color?: string;
    /**
     * @type {Array<FreeStyleProjectactions>}
     * @memberof FreeStyleProject
     */
    actions?: Array<FreeStyleProjectactions>;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    description?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    displayName?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    displayNameOrNull?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    fullDisplayName?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    fullName?: string;
    /**
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    buildable?: boolean;
    /**
     * @type {Array<FreeStyleBuild>}
     * @memberof FreeStyleProject
     */
    builds?: Array<FreeStyleBuild>;
    /**
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    firstBuild?: FreeStyleBuild;
    /**
     * @type {Array<FreeStyleProjecthealthReport>}
     * @memberof FreeStyleProject
     */
    healthReport?: Array<FreeStyleProjecthealthReport>;
    /**
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    inQueue?: boolean;
    /**
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    keepDependencies?: boolean;
    /**
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastBuild?: FreeStyleBuild;
    /**
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastCompletedBuild?: FreeStyleBuild;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastFailedBuild?: string;
    /**
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastStableBuild?: FreeStyleBuild;
    /**
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastSuccessfulBuild?: FreeStyleBuild;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastUnstableBuild?: string;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastUnsuccessfulBuild?: string;
    /**
     * @type {number}
     * @memberof FreeStyleProject
     */
    nextBuildNumber?: number;
    /**
     * @type {string}
     * @memberof FreeStyleProject
     */
    queueItem?: string;
    /**
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    concurrentBuild?: boolean;
    /**
     * @type {NullSCM}
     * @memberof FreeStyleProject
     */
    scm?: NullSCM;
}
