// tslint:disable
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

import { exists, mapValues } from '../runtime';
import {
    FreeStyleBuild,
    FreeStyleBuildFromJSON,
    FreeStyleBuildToJSON,
    FreeStyleProjectactions,
    FreeStyleProjectactionsFromJSON,
    FreeStyleProjectactionsToJSON,
    FreeStyleProjecthealthReport,
    FreeStyleProjecthealthReportFromJSON,
    FreeStyleProjecthealthReportToJSON,
    NullSCM,
    NullSCMFromJSON,
    NullSCMToJSON,
} from './';

/**
 * 
 * @export
 * @interface FreeStyleProject
 */
export interface FreeStyleProject  {
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    url?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    color?: string;
    /**
     * 
     * @type {Array<FreeStyleProjectactions>}
     * @memberof FreeStyleProject
     */
    actions?: Array<FreeStyleProjectactions>;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    description?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    displayName?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    displayNameOrNull?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    fullDisplayName?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    fullName?: string;
    /**
     * 
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    buildable?: boolean;
    /**
     * 
     * @type {Array<FreeStyleBuild>}
     * @memberof FreeStyleProject
     */
    builds?: Array<FreeStyleBuild>;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    firstBuild?: FreeStyleBuild;
    /**
     * 
     * @type {Array<FreeStyleProjecthealthReport>}
     * @memberof FreeStyleProject
     */
    healthReport?: Array<FreeStyleProjecthealthReport>;
    /**
     * 
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    inQueue?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    keepDependencies?: boolean;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastBuild?: FreeStyleBuild;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastCompletedBuild?: FreeStyleBuild;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastFailedBuild?: string;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastStableBuild?: FreeStyleBuild;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof FreeStyleProject
     */
    lastSuccessfulBuild?: FreeStyleBuild;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastUnstableBuild?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    lastUnsuccessfulBuild?: string;
    /**
     * 
     * @type {number}
     * @memberof FreeStyleProject
     */
    nextBuildNumber?: number;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProject
     */
    queueItem?: string;
    /**
     * 
     * @type {boolean}
     * @memberof FreeStyleProject
     */
    concurrentBuild?: boolean;
    /**
     * 
     * @type {NullSCM}
     * @memberof FreeStyleProject
     */
    scm?: NullSCM;
}

export function FreeStyleProjectFromJSON(json: any): FreeStyleProject {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'url': !exists(json, 'url') ? undefined : json['url'],
        'color': !exists(json, 'color') ? undefined : json['color'],
        'actions': !exists(json, 'actions') ? undefined : (json['actions'] as Array<any>).map(FreeStyleProjectactionsFromJSON),
        'description': !exists(json, 'description') ? undefined : json['description'],
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'displayNameOrNull': !exists(json, 'displayNameOrNull') ? undefined : json['displayNameOrNull'],
        'fullDisplayName': !exists(json, 'fullDisplayName') ? undefined : json['fullDisplayName'],
        'fullName': !exists(json, 'fullName') ? undefined : json['fullName'],
        'buildable': !exists(json, 'buildable') ? undefined : json['buildable'],
        'builds': !exists(json, 'builds') ? undefined : (json['builds'] as Array<any>).map(FreeStyleBuildFromJSON),
        'firstBuild': !exists(json, 'firstBuild') ? undefined : FreeStyleBuildFromJSON(json['firstBuild']),
        'healthReport': !exists(json, 'healthReport') ? undefined : (json['healthReport'] as Array<any>).map(FreeStyleProjecthealthReportFromJSON),
        'inQueue': !exists(json, 'inQueue') ? undefined : json['inQueue'],
        'keepDependencies': !exists(json, 'keepDependencies') ? undefined : json['keepDependencies'],
        'lastBuild': !exists(json, 'lastBuild') ? undefined : FreeStyleBuildFromJSON(json['lastBuild']),
        'lastCompletedBuild': !exists(json, 'lastCompletedBuild') ? undefined : FreeStyleBuildFromJSON(json['lastCompletedBuild']),
        'lastFailedBuild': !exists(json, 'lastFailedBuild') ? undefined : json['lastFailedBuild'],
        'lastStableBuild': !exists(json, 'lastStableBuild') ? undefined : FreeStyleBuildFromJSON(json['lastStableBuild']),
        'lastSuccessfulBuild': !exists(json, 'lastSuccessfulBuild') ? undefined : FreeStyleBuildFromJSON(json['lastSuccessfulBuild']),
        'lastUnstableBuild': !exists(json, 'lastUnstableBuild') ? undefined : json['lastUnstableBuild'],
        'lastUnsuccessfulBuild': !exists(json, 'lastUnsuccessfulBuild') ? undefined : json['lastUnsuccessfulBuild'],
        'nextBuildNumber': !exists(json, 'nextBuildNumber') ? undefined : json['nextBuildNumber'],
        'queueItem': !exists(json, 'queueItem') ? undefined : json['queueItem'],
        'concurrentBuild': !exists(json, 'concurrentBuild') ? undefined : json['concurrentBuild'],
        'scm': !exists(json, 'scm') ? undefined : NullSCMFromJSON(json['scm']),
    };
}

export function FreeStyleProjectToJSON(value?: FreeStyleProject): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        'name': value.name,
        'url': value.url,
        'color': value.color,
        'actions': value.actions === undefined ? undefined : (value.actions as Array<any>).map(FreeStyleProjectactionsToJSON),
        'description': value.description,
        'displayName': value.displayName,
        'displayNameOrNull': value.displayNameOrNull,
        'fullDisplayName': value.fullDisplayName,
        'fullName': value.fullName,
        'buildable': value.buildable,
        'builds': value.builds === undefined ? undefined : (value.builds as Array<any>).map(FreeStyleBuildToJSON),
        'firstBuild': FreeStyleBuildToJSON(value.firstBuild),
        'healthReport': value.healthReport === undefined ? undefined : (value.healthReport as Array<any>).map(FreeStyleProjecthealthReportToJSON),
        'inQueue': value.inQueue,
        'keepDependencies': value.keepDependencies,
        'lastBuild': FreeStyleBuildToJSON(value.lastBuild),
        'lastCompletedBuild': FreeStyleBuildToJSON(value.lastCompletedBuild),
        'lastFailedBuild': value.lastFailedBuild,
        'lastStableBuild': FreeStyleBuildToJSON(value.lastStableBuild),
        'lastSuccessfulBuild': FreeStyleBuildToJSON(value.lastSuccessfulBuild),
        'lastUnstableBuild': value.lastUnstableBuild,
        'lastUnsuccessfulBuild': value.lastUnsuccessfulBuild,
        'nextBuildNumber': value.nextBuildNumber,
        'queueItem': value.queueItem,
        'concurrentBuild': value.concurrentBuild,
        'scm': NullSCMToJSON(value.scm),
    };
}


