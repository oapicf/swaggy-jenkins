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
import type { GithubRepositories } from './GithubRepositories';
import {
    GithubRepositoriesFromJSON,
    GithubRepositoriesFromJSONTyped,
    GithubRepositoriesToJSON,
} from './GithubRepositories';
import type { GithubRespositoryContainerlinks } from './GithubRespositoryContainerlinks';
import {
    GithubRespositoryContainerlinksFromJSON,
    GithubRespositoryContainerlinksFromJSONTyped,
    GithubRespositoryContainerlinksToJSON,
} from './GithubRespositoryContainerlinks';

/**
 * 
 * @export
 * @interface GithubRespositoryContainer
 */
export interface GithubRespositoryContainer {
    /**
     * 
     * @type {string}
     * @memberof GithubRespositoryContainer
     */
    _class?: string;
    /**
     * 
     * @type {GithubRespositoryContainerlinks}
     * @memberof GithubRespositoryContainer
     */
    links?: GithubRespositoryContainerlinks;
    /**
     * 
     * @type {GithubRepositories}
     * @memberof GithubRespositoryContainer
     */
    repositories?: GithubRepositories;
}

/**
 * Check if a given object implements the GithubRespositoryContainer interface.
 */
export function instanceOfGithubRespositoryContainer(value: object): boolean {
    return true;
}

export function GithubRespositoryContainerFromJSON(json: any): GithubRespositoryContainer {
    return GithubRespositoryContainerFromJSONTyped(json, false);
}

export function GithubRespositoryContainerFromJSONTyped(json: any, ignoreDiscriminator: boolean): GithubRespositoryContainer {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'links': json['_links'] == null ? undefined : GithubRespositoryContainerlinksFromJSON(json['_links']),
        'repositories': json['repositories'] == null ? undefined : GithubRepositoriesFromJSON(json['repositories']),
    };
}

export function GithubRespositoryContainerToJSON(value?: GithubRespositoryContainer | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        '_links': GithubRespositoryContainerlinksToJSON(value['links']),
        'repositories': GithubRepositoriesToJSON(value['repositories']),
    };
}

