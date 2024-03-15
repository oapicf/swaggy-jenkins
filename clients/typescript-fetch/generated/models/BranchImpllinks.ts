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
 * @interface BranchImpllinks
 */
export interface BranchImpllinks {
    /**
     * 
     * @type {Link}
     * @memberof BranchImpllinks
     */
    self?: Link;
    /**
     * 
     * @type {Link}
     * @memberof BranchImpllinks
     */
    actions?: Link;
    /**
     * 
     * @type {Link}
     * @memberof BranchImpllinks
     */
    runs?: Link;
    /**
     * 
     * @type {Link}
     * @memberof BranchImpllinks
     */
    queue?: Link;
    /**
     * 
     * @type {string}
     * @memberof BranchImpllinks
     */
    _class?: string;
}

/**
 * Check if a given object implements the BranchImpllinks interface.
 */
export function instanceOfBranchImpllinks(value: object): boolean {
    return true;
}

export function BranchImpllinksFromJSON(json: any): BranchImpllinks {
    return BranchImpllinksFromJSONTyped(json, false);
}

export function BranchImpllinksFromJSONTyped(json: any, ignoreDiscriminator: boolean): BranchImpllinks {
    if (json == null) {
        return json;
    }
    return {
        
        'self': json['self'] == null ? undefined : LinkFromJSON(json['self']),
        'actions': json['actions'] == null ? undefined : LinkFromJSON(json['actions']),
        'runs': json['runs'] == null ? undefined : LinkFromJSON(json['runs']),
        'queue': json['queue'] == null ? undefined : LinkFromJSON(json['queue']),
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function BranchImpllinksToJSON(value?: BranchImpllinks | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'self': LinkToJSON(value['self']),
        'actions': LinkToJSON(value['actions']),
        'runs': LinkToJSON(value['runs']),
        'queue': LinkToJSON(value['queue']),
        '_class': value['_class'],
    };
}

