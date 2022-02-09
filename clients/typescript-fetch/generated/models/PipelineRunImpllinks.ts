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
import {
    Link,
    LinkFromJSON,
    LinkFromJSONTyped,
    LinkToJSON,
} from './Link';

/**
 * 
 * @export
 * @interface PipelineRunImpllinks
 */
export interface PipelineRunImpllinks {
    /**
     * 
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    nodes?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    log?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    self?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    actions?: Link;
    /**
     * 
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    steps?: Link;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunImpllinks
     */
    _class?: string;
}

export function PipelineRunImpllinksFromJSON(json: any): PipelineRunImpllinks {
    return PipelineRunImpllinksFromJSONTyped(json, false);
}

export function PipelineRunImpllinksFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRunImpllinks {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'nodes': !exists(json, 'nodes') ? undefined : LinkFromJSON(json['nodes']),
        'log': !exists(json, 'log') ? undefined : LinkFromJSON(json['log']),
        'self': !exists(json, 'self') ? undefined : LinkFromJSON(json['self']),
        'actions': !exists(json, 'actions') ? undefined : LinkFromJSON(json['actions']),
        'steps': !exists(json, 'steps') ? undefined : LinkFromJSON(json['steps']),
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function PipelineRunImpllinksToJSON(value?: PipelineRunImpllinks | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'nodes': LinkToJSON(value.nodes),
        'log': LinkToJSON(value.log),
        'self': LinkToJSON(value.self),
        'actions': LinkToJSON(value.actions),
        'steps': LinkToJSON(value.steps),
        '_class': value._class,
    };
}

