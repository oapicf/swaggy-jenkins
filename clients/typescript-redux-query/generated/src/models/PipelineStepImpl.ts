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
import {
    InputStepImpl,
    InputStepImplFromJSON,
    InputStepImplToJSON,
    PipelineStepImpllinks,
    PipelineStepImpllinksFromJSON,
    PipelineStepImpllinksToJSON,
} from './';

/**
 * 
 * @export
 * @interface PipelineStepImpl
 */
export interface PipelineStepImpl  {
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    _class?: string;
    /**
     * 
     * @type {PipelineStepImpllinks}
     * @memberof PipelineStepImpl
     */
    links?: PipelineStepImpllinks;
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineStepImpl
     */
    durationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    id?: string;
    /**
     * 
     * @type {InputStepImpl}
     * @memberof PipelineStepImpl
     */
    input?: InputStepImpl;
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineStepImpl
     */
    state?: string;
}

export function PipelineStepImplFromJSON(json: any): PipelineStepImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : PipelineStepImpllinksFromJSON(json['_links']),
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'durationInMillis': !exists(json, 'durationInMillis') ? undefined : json['durationInMillis'],
        'id': !exists(json, 'id') ? undefined : json['id'],
        'input': !exists(json, 'input') ? undefined : InputStepImplFromJSON(json['input']),
        'result': !exists(json, 'result') ? undefined : json['result'],
        'startTime': !exists(json, 'startTime') ? undefined : json['startTime'],
        'state': !exists(json, 'state') ? undefined : json['state'],
    };
}

export function PipelineStepImplToJSON(value?: PipelineStepImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        '_links': PipelineStepImpllinksToJSON(value.links),
        'displayName': value.displayName,
        'durationInMillis': value.durationInMillis,
        'id': value.id,
        'input': InputStepImplToJSON(value.input),
        'result': value.result,
        'startTime': value.startTime,
        'state': value.state,
    };
}


