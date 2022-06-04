// tslint:disable
/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
import {
    BranchImpllinks,
    BranchImpllinksFromJSON,
    BranchImpllinksToJSON,
    BranchImplpermissions,
    BranchImplpermissionsFromJSON,
    BranchImplpermissionsToJSON,
    PipelineRunImpl,
    PipelineRunImplFromJSON,
    PipelineRunImplToJSON,
    StringParameterDefinition,
    StringParameterDefinitionFromJSON,
    StringParameterDefinitionToJSON,
} from './';

/**
 * 
 * @export
 * @interface BranchImpl
 */
export interface BranchImpl  {
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

export function BranchImplFromJSON(json: any): BranchImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'displayName': !exists(json, 'displayName') ? undefined : json['displayName'],
        'estimatedDurationInMillis': !exists(json, 'estimatedDurationInMillis') ? undefined : json['estimatedDurationInMillis'],
        'fullDisplayName': !exists(json, 'fullDisplayName') ? undefined : json['fullDisplayName'],
        'fullName': !exists(json, 'fullName') ? undefined : json['fullName'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'organization': !exists(json, 'organization') ? undefined : json['organization'],
        'parameters': !exists(json, 'parameters') ? undefined : (json['parameters'] as Array<any>).map(StringParameterDefinitionFromJSON),
        'permissions': !exists(json, 'permissions') ? undefined : BranchImplpermissionsFromJSON(json['permissions']),
        'weatherScore': !exists(json, 'weatherScore') ? undefined : json['weatherScore'],
        'pullRequest': !exists(json, 'pullRequest') ? undefined : json['pullRequest'],
        'links': !exists(json, '_links') ? undefined : BranchImpllinksFromJSON(json['_links']),
        'latestRun': !exists(json, 'latestRun') ? undefined : PipelineRunImplFromJSON(json['latestRun']),
    };
}

export function BranchImplToJSON(value?: BranchImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        'displayName': value.displayName,
        'estimatedDurationInMillis': value.estimatedDurationInMillis,
        'fullDisplayName': value.fullDisplayName,
        'fullName': value.fullName,
        'name': value.name,
        'organization': value.organization,
        'parameters': value.parameters === undefined ? undefined : (value.parameters as Array<any>).map(StringParameterDefinitionToJSON),
        'permissions': BranchImplpermissionsToJSON(value.permissions),
        'weatherScore': value.weatherScore,
        'pullRequest': value.pullRequest,
        '_links': BranchImpllinksToJSON(value.links),
        'latestRun': PipelineRunImplToJSON(value.latestRun),
    };
}


