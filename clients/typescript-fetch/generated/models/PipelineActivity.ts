/* tslint:disable */
/* eslint-disable */
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
    PipelineActivityartifacts,
    PipelineActivityartifactsFromJSON,
    PipelineActivityartifactsFromJSONTyped,
    PipelineActivityartifactsToJSON,
} from './PipelineActivityartifacts';

/**
 * 
 * @export
 * @interface PipelineActivity
 */
export interface PipelineActivity {
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    _class?: string;
    /**
     * 
     * @type {Array<PipelineActivityartifacts>}
     * @memberof PipelineActivity
     */
    artifacts?: Array<PipelineActivityartifacts>;
    /**
     * 
     * @type {number}
     * @memberof PipelineActivity
     */
    durationInMillis?: number;
    /**
     * 
     * @type {number}
     * @memberof PipelineActivity
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    enQueueTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    endTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    organization?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    pipeline?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    runSummary?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    state?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivity
     */
    commitId?: string;
}

export function PipelineActivityFromJSON(json: any): PipelineActivity {
    return PipelineActivityFromJSONTyped(json, false);
}

export function PipelineActivityFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineActivity {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'artifacts': !exists(json, 'artifacts') ? undefined : ((json['artifacts'] as Array<any>).map(PipelineActivityartifactsFromJSON)),
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
    };
}

export function PipelineActivityToJSON(value?: PipelineActivity | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'artifacts': value.artifacts === undefined ? undefined : ((value.artifacts as Array<any>).map(PipelineActivityartifactsToJSON)),
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
    };
}

