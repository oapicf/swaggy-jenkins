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
    PipelineImpllinks,
    PipelineImpllinksFromJSON,
    PipelineImpllinksToJSON,
} from './';

/**
 * 
 * @export
 * @interface PipelineImpl
 */
export interface PipelineImpl  {
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineImpl
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    fullName?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    latestRun?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpl
     */
    organization?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineImpl
     */
    weatherScore?: number;
    /**
     * 
     * @type {PipelineImpllinks}
     * @memberof PipelineImpl
     */
    links?: PipelineImpllinks;
}

export function PipelineImplFromJSON(json: any): PipelineImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
        'fullName': !exists(json, 'fullName') ? undefined : json['fullName'],
        'latestRun': !exists(json, 'latestRun') ? undefined : json['latestRun'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'organization': !exists(json, 'organization') ? undefined : json['organization'],
        'weatherScore': !exists(json, 'weatherScore') ? undefined : json['weatherScore'],
        'links': !exists(json, '_links') ? undefined : PipelineImpllinksFromJSON(json['_links']),
    };
}

export function PipelineImplToJSON(value?: PipelineImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        'displayName': value.displayName,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
        'fullName': value.fullName,
        'latestRun': value.latestRun,
        'name': value.name,
        'organization': value.organization,
        'weatherScore': value.weatherScore,
        '_links': PipelineImpllinksToJSON(value.links),
    };
}


