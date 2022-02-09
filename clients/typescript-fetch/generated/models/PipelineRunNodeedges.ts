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
 * @interface PipelineRunNodeedges
 */
export interface PipelineRunNodeedges {
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNodeedges
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNodeedges
     */
    _class?: string;
}

export function PipelineRunNodeedgesFromJSON(json: any): PipelineRunNodeedges {
    return PipelineRunNodeedgesFromJSONTyped(json, false);
}

export function PipelineRunNodeedgesFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRunNodeedges {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': !exists(json, 'id') ? undefined : json['id'],
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function PipelineRunNodeedgesToJSON(value?: PipelineRunNodeedges | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'id': value.id,
        '_class': value._class,
    };
}

