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
 * @interface PipelineActivityartifacts
 */
export interface PipelineActivityartifacts {
    /**
     * 
     * @type {string}
     * @memberof PipelineActivityartifacts
     */
    name?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineActivityartifacts
     */
    size?: number;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivityartifacts
     */
    url?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineActivityartifacts
     */
    _class?: string;
}

/**
 * Check if a given object implements the PipelineActivityartifacts interface.
 */
export function instanceOfPipelineActivityartifacts(value: object): boolean {
    return true;
}

export function PipelineActivityartifactsFromJSON(json: any): PipelineActivityartifacts {
    return PipelineActivityartifactsFromJSONTyped(json, false);
}

export function PipelineActivityartifactsFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineActivityartifacts {
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

export function PipelineActivityartifactsToJSON(value?: PipelineActivityartifacts | null): any {
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

