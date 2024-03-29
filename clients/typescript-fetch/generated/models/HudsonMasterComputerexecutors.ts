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
import type { FreeStyleBuild } from './FreeStyleBuild';
import {
    FreeStyleBuildFromJSON,
    FreeStyleBuildFromJSONTyped,
    FreeStyleBuildToJSON,
} from './FreeStyleBuild';

/**
 * 
 * @export
 * @interface HudsonMasterComputerexecutors
 */
export interface HudsonMasterComputerexecutors {
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof HudsonMasterComputerexecutors
     */
    currentExecutable?: FreeStyleBuild;
    /**
     * 
     * @type {boolean}
     * @memberof HudsonMasterComputerexecutors
     */
    idle?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof HudsonMasterComputerexecutors
     */
    likelyStuck?: boolean;
    /**
     * 
     * @type {number}
     * @memberof HudsonMasterComputerexecutors
     */
    number?: number;
    /**
     * 
     * @type {number}
     * @memberof HudsonMasterComputerexecutors
     */
    progress?: number;
    /**
     * 
     * @type {string}
     * @memberof HudsonMasterComputerexecutors
     */
    _class?: string;
}

/**
 * Check if a given object implements the HudsonMasterComputerexecutors interface.
 */
export function instanceOfHudsonMasterComputerexecutors(value: object): boolean {
    return true;
}

export function HudsonMasterComputerexecutorsFromJSON(json: any): HudsonMasterComputerexecutors {
    return HudsonMasterComputerexecutorsFromJSONTyped(json, false);
}

export function HudsonMasterComputerexecutorsFromJSONTyped(json: any, ignoreDiscriminator: boolean): HudsonMasterComputerexecutors {
    if (json == null) {
        return json;
    }
    return {
        
        'currentExecutable': json['currentExecutable'] == null ? undefined : FreeStyleBuildFromJSON(json['currentExecutable']),
        'idle': json['idle'] == null ? undefined : json['idle'],
        'likelyStuck': json['likelyStuck'] == null ? undefined : json['likelyStuck'],
        'number': json['number'] == null ? undefined : json['number'],
        'progress': json['progress'] == null ? undefined : json['progress'],
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function HudsonMasterComputerexecutorsToJSON(value?: HudsonMasterComputerexecutors | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'currentExecutable': FreeStyleBuildToJSON(value['currentExecutable']),
        'idle': value['idle'],
        'likelyStuck': value['likelyStuck'],
        'number': value['number'],
        'progress': value['progress'],
        '_class': value['_class'],
    };
}

