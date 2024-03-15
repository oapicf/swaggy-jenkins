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
    Link,
    LinkFromJSON,
    LinkToJSON,
} from './';

/**
 * 
 * @export
 * @interface BranchImpllinks
 */
export interface BranchImpllinks  {
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

export function BranchImpllinksFromJSON(json: any): BranchImpllinks {
    return {
        'self': !exists(json, 'self') ? undefined : LinkFromJSON(json['self']),
        'actions': !exists(json, 'actions') ? undefined : LinkFromJSON(json['actions']),
        'runs': !exists(json, 'runs') ? undefined : LinkFromJSON(json['runs']),
        'queue': !exists(json, 'queue') ? undefined : LinkFromJSON(json['queue']),
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function BranchImpllinksToJSON(value?: BranchImpllinks): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'self': LinkToJSON(value.self),
        'actions': LinkToJSON(value.actions),
        'runs': LinkToJSON(value.runs),
        'queue': LinkToJSON(value.queue),
        '_class': value._class,
    };
}


