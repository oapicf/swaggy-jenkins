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
import type { HudsonMasterComputer } from './HudsonMasterComputer';
import {
    HudsonMasterComputerFromJSON,
    HudsonMasterComputerFromJSONTyped,
    HudsonMasterComputerToJSON,
} from './HudsonMasterComputer';

/**
 * 
 * @export
 * @interface ComputerSet
 */
export interface ComputerSet {
    /**
     * 
     * @type {string}
     * @memberof ComputerSet
     */
    _class?: string;
    /**
     * 
     * @type {number}
     * @memberof ComputerSet
     */
    busyExecutors?: number;
    /**
     * 
     * @type {Array<HudsonMasterComputer>}
     * @memberof ComputerSet
     */
    computer?: Array<HudsonMasterComputer>;
    /**
     * 
     * @type {string}
     * @memberof ComputerSet
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof ComputerSet
     */
    totalExecutors?: number;
}

/**
 * Check if a given object implements the ComputerSet interface.
 */
export function instanceOfComputerSet(value: object): boolean {
    return true;
}

export function ComputerSetFromJSON(json: any): ComputerSet {
    return ComputerSetFromJSONTyped(json, false);
}

export function ComputerSetFromJSONTyped(json: any, ignoreDiscriminator: boolean): ComputerSet {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'busyExecutors': json['busyExecutors'] == null ? undefined : json['busyExecutors'],
        'computer': json['computer'] == null ? undefined : ((json['computer'] as Array<any>).map(HudsonMasterComputerFromJSON)),
        'displayName': json['displayName'] == null ? undefined : json['displayName'],
        'totalExecutors': json['totalExecutors'] == null ? undefined : json['totalExecutors'],
    };
}

export function ComputerSetToJSON(value?: ComputerSet | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        'busyExecutors': value['busyExecutors'],
        'computer': value['computer'] == null ? undefined : ((value['computer'] as Array<any>).map(HudsonMasterComputerToJSON)),
        'displayName': value['displayName'],
        'totalExecutors': value['totalExecutors'],
    };
}

