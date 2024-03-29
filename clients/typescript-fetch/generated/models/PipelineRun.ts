/* tslint:disable */
/* eslint-disable */
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

import { mapValues } from '../runtime';
import type { PipelineRunartifacts } from './PipelineRunartifacts';
import {
    PipelineRunartifactsFromJSON,
    PipelineRunartifactsFromJSONTyped,
    PipelineRunartifactsToJSON,
} from './PipelineRunartifacts';

/**
 * 
 * @export
 * @interface PipelineRun
 */
export interface PipelineRun {
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    _class?: string;
    /**
     * 
     * @type {Array<PipelineRunartifacts>}
     * @memberof PipelineRun
     */
    artifacts?: Array<PipelineRunartifacts>;
    /**
     * 
     * @type {number}
     * @memberof PipelineRun
     */
    durationInMillis?: number;
    /**
     * 
     * @type {number}
     * @memberof PipelineRun
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    enQueueTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    endTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    organization?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    pipeline?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    runSummary?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    state?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRun
     */
    commitId?: string;
}

/**
 * Check if a given object implements the PipelineRun interface.
 */
export function instanceOfPipelineRun(value: object): boolean {
    return true;
}

export function PipelineRunFromJSON(json: any): PipelineRun {
    return PipelineRunFromJSONTyped(json, false);
}

export function PipelineRunFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRun {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'artifacts': json['artifacts'] == null ? undefined : ((json['artifacts'] as Array<any>).map(PipelineRunartifactsFromJSON)),
        'durationInMillis': json['durationInMillis'] == null ? undefined : json['durationInMillis'],
        'estimatedDurationInMillis': json['estimatedDurationInMillis'] == null ? undefined : json['estimatedDurationInMillis'],
        'enQueueTime': json['enQueueTime'] == null ? undefined : json['enQueueTime'],
        'endTime': json['endTime'] == null ? undefined : json['endTime'],
        'id': json['id'] == null ? undefined : json['id'],
        'organization': json['organization'] == null ? undefined : json['organization'],
        'pipeline': json['pipeline'] == null ? undefined : json['pipeline'],
        'result': json['result'] == null ? undefined : json['result'],
        'runSummary': json['runSummary'] == null ? undefined : json['runSummary'],
        'startTime': json['startTime'] == null ? undefined : json['startTime'],
        'state': json['state'] == null ? undefined : json['state'],
        'type': json['type'] == null ? undefined : json['type'],
        'commitId': json['commitId'] == null ? undefined : json['commitId'],
    };
}

export function PipelineRunToJSON(value?: PipelineRun | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        'artifacts': value['artifacts'] == null ? undefined : ((value['artifacts'] as Array<any>).map(PipelineRunartifactsToJSON)),
        'durationInMillis': value['durationInMillis'],
        'estimatedDurationInMillis': value['estimatedDurationInMillis'],
        'enQueueTime': value['enQueueTime'],
        'endTime': value['endTime'],
        'id': value['id'],
        'organization': value['organization'],
        'pipeline': value['pipeline'],
        'result': value['result'],
        'runSummary': value['runSummary'],
        'startTime': value['startTime'],
        'state': value['state'],
        'type': value['type'],
        'commitId': value['commitId'],
    };
}

