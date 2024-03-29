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
import type { BranchImpllinks } from './BranchImpllinks';
import {
    BranchImpllinksFromJSON,
    BranchImpllinksFromJSONTyped,
    BranchImpllinksToJSON,
} from './BranchImpllinks';
import type { BranchImplpermissions } from './BranchImplpermissions';
import {
    BranchImplpermissionsFromJSON,
    BranchImplpermissionsFromJSONTyped,
    BranchImplpermissionsToJSON,
} from './BranchImplpermissions';
import type { PipelineRunImpl } from './PipelineRunImpl';
import {
    PipelineRunImplFromJSON,
    PipelineRunImplFromJSONTyped,
    PipelineRunImplToJSON,
} from './PipelineRunImpl';
import type { StringParameterDefinition } from './StringParameterDefinition';
import {
    StringParameterDefinitionFromJSON,
    StringParameterDefinitionFromJSONTyped,
    StringParameterDefinitionToJSON,
} from './StringParameterDefinition';

/**
 * 
 * @export
 * @interface BranchImpl
 */
export interface BranchImpl {
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    displayName?: string;
    /**
     * 
     * @type {number}
     * @memberof BranchImpl
     */
    estimatedDurationInMillis?: number;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    fullDisplayName?: string;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    fullName?: string;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    organization?: string;
    /**
     * 
     * @type {Array<StringParameterDefinition>}
     * @memberof BranchImpl
     */
    parameters?: Array<StringParameterDefinition>;
    /**
     * 
     * @type {BranchImplpermissions}
     * @memberof BranchImpl
     */
    permissions?: BranchImplpermissions;
    /**
     * 
     * @type {number}
     * @memberof BranchImpl
     */
    weatherScore?: number;
    /**
     * 
     * @type {string}
     * @memberof BranchImpl
     */
    pullRequest?: string;
    /**
     * 
     * @type {BranchImpllinks}
     * @memberof BranchImpl
     */
    links?: BranchImpllinks;
    /**
     * 
     * @type {PipelineRunImpl}
     * @memberof BranchImpl
     */
    latestRun?: PipelineRunImpl;
}

/**
 * Check if a given object implements the BranchImpl interface.
 */
export function instanceOfBranchImpl(value: object): boolean {
    return true;
}

export function BranchImplFromJSON(json: any): BranchImpl {
    return BranchImplFromJSONTyped(json, false);
}

export function BranchImplFromJSONTyped(json: any, ignoreDiscriminator: boolean): BranchImpl {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'displayName': json['displayName'] == null ? undefined : json['displayName'],
        'estimatedDurationInMillis': json['estimatedDurationInMillis'] == null ? undefined : json['estimatedDurationInMillis'],
        'fullDisplayName': json['fullDisplayName'] == null ? undefined : json['fullDisplayName'],
        'fullName': json['fullName'] == null ? undefined : json['fullName'],
        'name': json['name'] == null ? undefined : json['name'],
        'organization': json['organization'] == null ? undefined : json['organization'],
        'parameters': json['parameters'] == null ? undefined : ((json['parameters'] as Array<any>).map(StringParameterDefinitionFromJSON)),
        'permissions': json['permissions'] == null ? undefined : BranchImplpermissionsFromJSON(json['permissions']),
        'weatherScore': json['weatherScore'] == null ? undefined : json['weatherScore'],
        'pullRequest': json['pullRequest'] == null ? undefined : json['pullRequest'],
        'links': json['_links'] == null ? undefined : BranchImpllinksFromJSON(json['_links']),
        'latestRun': json['latestRun'] == null ? undefined : PipelineRunImplFromJSON(json['latestRun']),
    };
}

export function BranchImplToJSON(value?: BranchImpl | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        'displayName': value['displayName'],
        'estimatedDurationInMillis': value['estimatedDurationInMillis'],
        'fullDisplayName': value['fullDisplayName'],
        'fullName': value['fullName'],
        'name': value['name'],
        'organization': value['organization'],
        'parameters': value['parameters'] == null ? undefined : ((value['parameters'] as Array<any>).map(StringParameterDefinitionToJSON)),
        'permissions': BranchImplpermissionsToJSON(value['permissions']),
        'weatherScore': value['weatherScore'],
        'pullRequest': value['pullRequest'],
        '_links': BranchImpllinksToJSON(value['links']),
        'latestRun': PipelineRunImplToJSON(value['latestRun']),
    };
}

