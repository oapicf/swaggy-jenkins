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
import type { GithubRepositorieslinks } from './GithubRepositorieslinks';
import {
    GithubRepositorieslinksFromJSON,
    GithubRepositorieslinksFromJSONTyped,
    GithubRepositorieslinksToJSON,
} from './GithubRepositorieslinks';
import type { GithubRepository } from './GithubRepository';
import {
    GithubRepositoryFromJSON,
    GithubRepositoryFromJSONTyped,
    GithubRepositoryToJSON,
} from './GithubRepository';

/**
 * 
 * @export
 * @interface GithubRepositories
 */
export interface GithubRepositories {
    /**
     * 
     * @type {string}
     * @memberof GithubRepositories
     */
    _class?: string;
    /**
     * 
     * @type {GithubRepositorieslinks}
     * @memberof GithubRepositories
     */
    links?: GithubRepositorieslinks;
    /**
     * 
     * @type {Array<GithubRepository>}
     * @memberof GithubRepositories
     */
    items?: Array<GithubRepository>;
    /**
     * 
     * @type {number}
     * @memberof GithubRepositories
     */
    lastPage?: number;
    /**
     * 
     * @type {number}
     * @memberof GithubRepositories
     */
    nextPage?: number;
    /**
     * 
     * @type {number}
     * @memberof GithubRepositories
     */
    pageSize?: number;
}

/**
 * Check if a given object implements the GithubRepositories interface.
 */
export function instanceOfGithubRepositories(value: object): boolean {
    return true;
}

export function GithubRepositoriesFromJSON(json: any): GithubRepositories {
    return GithubRepositoriesFromJSONTyped(json, false);
}

export function GithubRepositoriesFromJSONTyped(json: any, ignoreDiscriminator: boolean): GithubRepositories {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'links': json['_links'] == null ? undefined : GithubRepositorieslinksFromJSON(json['_links']),
        'items': json['items'] == null ? undefined : ((json['items'] as Array<any>).map(GithubRepositoryFromJSON)),
        'lastPage': json['lastPage'] == null ? undefined : json['lastPage'],
        'nextPage': json['nextPage'] == null ? undefined : json['nextPage'],
        'pageSize': json['pageSize'] == null ? undefined : json['pageSize'],
    };
}

export function GithubRepositoriesToJSON(value?: GithubRepositories | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        '_links': GithubRepositorieslinksToJSON(value['links']),
        'items': value['items'] == null ? undefined : ((value['items'] as Array<any>).map(GithubRepositoryToJSON)),
        'lastPage': value['lastPage'],
        'nextPage': value['nextPage'],
        'pageSize': value['pageSize'],
    };
}

