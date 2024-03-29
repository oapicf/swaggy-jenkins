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
 * @interface PipelinelatestRunartifacts
 */
export interface PipelinelatestRunartifacts {
    /**
     * 
     * @type {string}
     * @memberof PipelinelatestRunartifacts
     */
    name?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelinelatestRunartifacts
     */
    size?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelinelatestRunartifacts
     */
    url?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelinelatestRunartifacts
     */
    _class?: string;
}

/**
 * Check if a given object implements the PipelinelatestRunartifacts interface.
 */
export function instanceOfPipelinelatestRunartifacts(value: object): boolean {
    return true;
}

export function PipelinelatestRunartifactsFromJSON(json: any): PipelinelatestRunartifacts {
    return PipelinelatestRunartifactsFromJSONTyped(json, false);
}

export function PipelinelatestRunartifactsFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelinelatestRunartifacts {
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

export function PipelinelatestRunartifactsToJSON(value?: PipelinelatestRunartifacts | null): any {
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

