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
    PipelineRunImpllinks,
    PipelineRunImpllinksFromJSON,
    PipelineRunImpllinksToJSON,
} from './';

/**
 * 
 * @export
 * @interface PipelineRunImpl
 */
export interface PipelineRunImpl  {
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    _class?: string;
    /**
     * 
     * @type {PipelineRunImpllinks}
     * @memberof PipelineRunImpl
     */
    links?: PipelineRunImpllinks;
    /**
     * 
     * @type {number}
     * @memberof PipelineRunImpl
     */
    durationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    enQueueTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    endTime?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineRunImpl
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    organization?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    pipeline?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    runSummary?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    state?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpl
     */
    commitId?: string;
}

export function PipelineRunImplFromJSON(json: any): PipelineRunImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : PipelineRunImpllinksFromJSON(json['_links']),
        'durationInMillis': !exists(json, 'durationInMillis') ? undefined : json['durationInMillis'],
        'enQueueTime': !exists(json, 'enQueueTime') ? undefined : json['enQueueTime'],
        'endTime': !exists(json, 'endTime') ? undefined : json['endTime'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
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

export function PipelineRunImplToJSON(value?: PipelineRunImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        '_links': PipelineRunImpllinksToJSON(value.links),
        'durationInMillis': value.durationInMillis,
        'enQueueTime': value.enQueueTime,
        'endTime': value.endTime,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
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


