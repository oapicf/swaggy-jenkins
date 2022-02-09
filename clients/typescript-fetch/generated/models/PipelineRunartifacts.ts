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
/**
 * 
 * @export
 * @interface PipelineRunartifacts
 */
export interface PipelineRunartifacts {
    /**
     * 
     * @type {string}
     * @memberof PipelineRunartifacts
     */
    name?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineRunartifacts
     */
    size?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunartifacts
     */
    url?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunartifacts
     */
    _class?: string;
}

export function PipelineRunartifactsFromJSON(json: any): PipelineRunartifacts {
    return PipelineRunartifactsFromJSONTyped(json, false);
}

export function PipelineRunartifactsFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRunartifacts {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'name': !exists(json, 'name') ? undefined : json['name'],
        'size': !exists(json, 'size') ? undefined : json['size'],
        'url': !exists(json, 'url') ? undefined : json['url'],
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function PipelineRunartifactsToJSON(value?: PipelineRunartifacts | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'name': value.name,
        'size': value.size,
        'url': value.url,
        '_class': value._class,
    };
}

