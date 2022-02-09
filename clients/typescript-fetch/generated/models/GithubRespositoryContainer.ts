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
    GithubRepositories,
    GithubRepositoriesFromJSON,
    GithubRepositoriesFromJSONTyped,
    GithubRepositoriesToJSON,
} from './GithubRepositories';
import {
    GithubRespositoryContainerlinks,
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

export function GithubRespositoryContainerFromJSON(json: any): GithubRespositoryContainer {
    return GithubRespositoryContainerFromJSONTyped(json, false);
}

export function GithubRespositoryContainerFromJSONTyped(json: any, ignoreDiscriminator: boolean): GithubRespositoryContainer {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : GithubRespositoryContainerlinksFromJSON(json['_links']),
        'repositories': !exists(json, 'repositories') ? undefined : GithubRepositoriesFromJSON(json['repositories']),
    };
}

export function GithubRespositoryContainerToJSON(value?: GithubRespositoryContainer | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        '_links': GithubRespositoryContainerlinksToJSON(value.links),
        'repositories': GithubRepositoriesToJSON(value.repositories),
    };
}

