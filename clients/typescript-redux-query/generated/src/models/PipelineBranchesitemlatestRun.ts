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

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface PipelineBranchesitemlatestRun
 */
export interface PipelineBranchesitemlatestRun  {
    /**
     * 
     * @type {number}
     * @memberof PipelineBranchesitemlatestRun
     */
    durationInMillis?: number;
    /**
     * 
     * @type {number}
     * @memberof PipelineBranchesitemlatestRun
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    enQueueTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    endTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    organization?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    pipeline?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    runSummary?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    state?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    commitId?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitemlatestRun
     */
    _class?: string;
}

export function PipelineBranchesitemlatestRunFromJSON(json: any): PipelineBranchesitemlatestRun {
    return {
        'durationInMillis': !exists(json, 'durationInMillis') ? undefined : json['durationInMillis'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
        'enQueueTime': !exists(json, 'enQueueTime') ? undefined : json['enQueueTime'],
        'endTime': !exists(json, 'endTime') ? undefined : json['endTime'],
        'id': !exists(json, 'id') ? undefined : json['id'],
        'organization': !exists(json, 'organization') ? undefined : json['organization'],
        'pipeline': !exists(json, 'pipeline') ? undefined : json['pipeline'],
        'result': !exists(json, 'result') ? undefined : json['result'],
        'runSummary': !exists(json, 'runSummary') ? undefined : json['runSummary'],
        'startTime': !exists(json, 'startTime') ? undefined : json['startTime'],
        'state': !exists(json, 'state') ? undefined : json['state'],
        'type': !exists(json, 'type') ? undefined : json['type'],
        'commitId': !exists(json, 'commitId') ? undefined : json['commitId'],
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function PipelineBranchesitemlatestRunToJSON(value?: PipelineBranchesitemlatestRun): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'durationInMillis': value.durationInMillis,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
        'enQueueTime': value.enQueueTime,
        'endTime': value.endTime,
        'id': value.id,
        'organization': value.organization,
        'pipeline': value.pipeline,
        'result': value.result,
        'runSummary': value.runSummary,
        'startTime': value.startTime,
        'state': value.state,
        'type': value.type,
        'commitId': value.commitId,
        '_class': value._class,
    };
}


