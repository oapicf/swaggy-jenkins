/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    PipelineBranchesitemlatestRun,
    PipelineBranchesitemlatestRunFromJSON,
    PipelineBranchesitemlatestRunFromJSONTyped,
    PipelineBranchesitemlatestRunToJSON,
} from './PipelineBranchesitemlatestRun';
import {
    PipelineBranchesitempullRequest,
    PipelineBranchesitempullRequestFromJSON,
    PipelineBranchesitempullRequestFromJSONTyped,
    PipelineBranchesitempullRequestToJSON,
} from './PipelineBranchesitempullRequest';

/**
 * 
 * @export
 * @interface PipelineBranchesitem
 */
export interface PipelineBranchesitem {
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitem
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineBranchesitem
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitem
     */
    name?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineBranchesitem
     */
    weatherScore?: number;
    /**
     * 
     * @type {PipelineBranchesitemlatestRun}
     * @memberof PipelineBranchesitem
     */
    latestRun?: PipelineBranchesitemlatestRun;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitem
     */
    organization?: string;
    /**
     * 
     * @type {PipelineBranchesitempullRequest}
     * @memberof PipelineBranchesitem
     */
    pullRequest?: PipelineBranchesitempullRequest;
    /**
     * 
     * @type {number}
     * @memberof PipelineBranchesitem
     */
    totalNumberOfPullRequests?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitem
     */
    _class?: string;
}

export function PipelineBranchesitemFromJSON(json: any): PipelineBranchesitem {
    return PipelineBranchesitemFromJSONTyped(json, false);
}

export function PipelineBranchesitemFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineBranchesitem {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'weatherScore': !exists(json, 'weatherScore') ? undefined : json['weatherScore'],
        'latestRun': !exists(json, 'latestRun') ? undefined : PipelineBranchesitemlatestRunFromJSON(json['latestRun']),
        'organization': !exists(json, 'organization') ? undefined : json['organization'],
        'pullRequest': !exists(json, 'pullRequest') ? undefined : PipelineBranchesitempullRequestFromJSON(json['pullRequest']),
        'totalNumberOfPullRequests': !exists(json, 'totalNumberOfPullRequests') ? undefined : json['totalNumberOfPullRequests'],
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function PipelineBranchesitemToJSON(value?: PipelineBranchesitem | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'displayName': value.displayName,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
        'name': value.name,
        'weatherScore': value.weatherScore,
        'latestRun': PipelineBranchesitemlatestRunToJSON(value.latestRun),
        'organization': value.organization,
        'pullRequest': PipelineBranchesitempullRequestToJSON(value.pullRequest),
        'totalNumberOfPullRequests': value.totalNumberOfPullRequests,
        '_class': value._class,
    };
}

