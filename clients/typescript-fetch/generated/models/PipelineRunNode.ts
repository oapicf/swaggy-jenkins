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
    PipelineRunNodeedges,
    PipelineRunNodeedgesFromJSON,
    PipelineRunNodeedgesFromJSONTyped,
    PipelineRunNodeedgesToJSON,
} from './PipelineRunNodeedges';

/**
 * 
 * @export
 * @interface PipelineRunNode
 */
export interface PipelineRunNode {
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof PipelineRunNode
     */
    durationInMillis?: number;
    /**
     * 
     * @type {Array<PipelineRunNodeedges>}
     * @memberof PipelineRunNode
     */
    edges?: Array<PipelineRunNodeedges>;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    result?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    startTime?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineRunNode
     */
    state?: string;
}

export function PipelineRunNodeFromJSON(json: any): PipelineRunNode {
    return PipelineRunNodeFromJSONTyped(json, false);
}

export function PipelineRunNodeFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineRunNode {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'durationInMillis': !exists(json, 'durationInMillis') ? undefined : json['durationInMillis'],
        'edges': !exists(json, 'edges') ? undefined : ((json['edges'] as Array<any>).map(PipelineRunNodeedgesFromJSON)),
        'id': !exists(json, 'id') ? undefined : json['id'],
        'result': !exists(json, 'result') ? undefined : json['result'],
        'startTime': !exists(json, 'startTime') ? undefined : json['startTime'],
        'state': !exists(json, 'state') ? undefined : json['state'],
    };
}

export function PipelineRunNodeToJSON(value?: PipelineRunNode | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'displayName': value.displayName,
        'durationInMillis': value.durationInMillis,
        'edges': value.edges === undefined ? undefined : ((value.edges as Array<any>).map(PipelineRunNodeedgesToJSON)),
        'id': value.id,
        'result': value.result,
        'startTime': value.startTime,
        'state': value.state,
    };
}

