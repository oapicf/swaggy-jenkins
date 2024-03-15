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

/**
 * Check if a given object implements the PipelineRunartifacts interface.
 */
export function instanceOfPipelineRunartifacts(value: object): boolean {
    return true;
}

export function PipelineRunartifactsFromJSON(json: any): PipelineRunartifacts {
    return PipelineRunartifactsFromJSONTyped(json, false);
}

export function PipelineRunartifactsFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRunartifacts {
    if (json == null) {
        return json;
    }
    return {
        
        'name': json['name'] == null ? undefined : json['name'],
        'size': json['size'] == null ? undefined : json['size'],
        'url': json['url'] == null ? undefined : json['url'],
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function PipelineRunartifactsToJSON(value?: PipelineRunartifacts | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'name': value['name'],
        'size': value['size'],
        'url': value['url'],
        '_class': value['_class'],
    };
}

