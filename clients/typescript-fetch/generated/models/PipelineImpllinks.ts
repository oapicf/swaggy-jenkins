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
import type { Link } from './Link';
import {
    LinkFromJSON,
    LinkFromJSONTyped,
    LinkToJSON,
} from './Link';

/**
 * 
 * @export
 * @interface PipelineImpllinks
 */
export interface PipelineImpllinks {
    /**
     * 
     * @type {Link}
     * @memberof PipelineImpllinks
     */
    runs?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineImpllinks
     */
    self?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineImpllinks
     */
    queue?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineImpllinks
     */
    actions?: Link;
    /**
     * 
     * @type {string}
     * @memberof PipelineImpllinks
     */
    _class?: string;
}

/**
 * Check if a given object implements the PipelineImpllinks interface.
 */
export function instanceOfPipelineImpllinks(value: object): boolean {
    return true;
}

export function PipelineImpllinksFromJSON(json: any): PipelineImpllinks {
    return PipelineImpllinksFromJSONTyped(json, false);
}

export function PipelineImpllinksFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineImpllinks {
    if (json == null) {
        return json;
    }
    return {
        
        'runs': json['runs'] == null ? undefined : LinkFromJSON(json['runs']),
        'self': json['self'] == null ? undefined : LinkFromJSON(json['self']),
        'queue': json['queue'] == null ? undefined : LinkFromJSON(json['queue']),
        'actions': json['actions'] == null ? undefined : LinkFromJSON(json['actions']),
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function PipelineImpllinksToJSON(value?: PipelineImpllinks | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'runs': LinkToJSON(value['runs']),
        'self': LinkToJSON(value['self']),
        'queue': LinkToJSON(value['queue']),
        'actions': LinkToJSON(value['actions']),
        '_class': value['_class'],
    };
}

