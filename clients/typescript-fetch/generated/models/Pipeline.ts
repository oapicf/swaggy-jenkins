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
    PipelinelatestRun,
    PipelinelatestRunFromJSON,
    PipelinelatestRunFromJSONTyped,
    PipelinelatestRunToJSON,
} from './PipelinelatestRun';

/**
 * 
 * @export
 * @interface Pipeline
 */
export interface Pipeline {
    /**
     * 
     * @type {string}
     * @memberof Pipeline
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof Pipeline
     */
    organization?: string;
    /**
     * 
     * @type {string}
     * @memberof Pipeline
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof Pipeline
     */
    displayName?: string;
    /**
     * 
     * @type {string}
     * @memberof Pipeline
     */
    fullName?: string;
    /**
     * 
     * @type {number}
     * @memberof Pipeline
     */
    weatherScore?: number;
    /**
     * 
     * @type {number}
     * @memberof Pipeline
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {PipelinelatestRun}
     * @memberof Pipeline
     */
    latestRun?: PipelinelatestRun;
}

export function PipelineFromJSON(json: any): Pipeline {
    return PipelineFromJSONTyped(json, false);
}

export function PipelineFromJSONTyped(json: any, ignoreDiscriminator: boolean): Pipeline {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'organization': !exists(json, 'organization') ? undefined : json['organization'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'fullName': !exists(json, 'fullName') ? undefined : json['fullName'],
        'weatherScore': !exists(json, 'weatherScore') ? undefined : json['weatherScore'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
        'latestRun': !exists(json, 'latestRun') ? undefined : PipelinelatestRunFromJSON(json['latestRun']),
    };
}

export function PipelineToJSON(value?: Pipeline | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'organization': value.organization,
        'name': value.name,
        'displayName': value.displayName,
        'fullName': value.fullName,
        'weatherScore': value.weatherScore,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
        'latestRun': PipelinelatestRunToJSON(value.latestRun),
    };
}

