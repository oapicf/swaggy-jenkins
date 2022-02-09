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
    GithubRepositorylinks,
    GithubRepositorylinksFromJSON,
    GithubRepositorylinksFromJSONTyped,
    GithubRepositorylinksToJSON,
} from './GithubRepositorylinks';
import {
    GithubRepositorypermissions,
    GithubRepositorypermissionsFromJSON,
    GithubRepositorypermissionsFromJSONTyped,
    GithubRepositorypermissionsToJSON,
} from './GithubRepositorypermissions';

/**
 * 
 * @export
 * @interface GithubRepository
 */
export interface GithubRepository {
    /**
     * 
     * @type {string}
     * @memberof GithubRepository
     */
    _class?: string;
    /**
     * 
     * @type {GithubRepositorylinks}
     * @memberof GithubRepository
     */
    links?: GithubRepositorylinks;
    /**
     * 
     * @type {string}
     * @memberof GithubRepository
     */
    defaultBranch?: string;
    /**
     * 
     * @type {string}
     * @memberof GithubRepository
     */
    description?: string;
    /**
     * 
     * @type {string}
     * @memberof GithubRepository
     */
    name?: string;
    /**
     * 
     * @type {GithubRepositorypermissions}
     * @memberof GithubRepository
     */
    permissions?: GithubRepositorypermissions;
    /**
     * 
     * @type {boolean}
     * @memberof GithubRepository
     */
    _private?: boolean;
    /**
     * 
     * @type {string}
     * @memberof GithubRepository
     */
    fullName?: string;
}

export function GithubRepositoryFromJSON(json: any): GithubRepository {
    return GithubRepositoryFromJSONTyped(json, false);
}

export function GithubRepositoryFromJSONTyped(json: any, ignoreDiscriminator: boolean): GithubRepository {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : GithubRepositorylinksFromJSON(json['_links']),
        'defaultBranch': !exists(json, 'defaultBranch') ? undefined : json['defaultBranch'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'name': !exists(json, 'name') ? undefined : json['name'],
        'permissions': !exists(json, 'permissions') ? undefined : GithubRepositorypermissionsFromJSON(json['permissions']),
        '_private': !exists(json, 'private') ? undefined : json['private'],
        'fullName': !exists(json, 'fullName') ? undefined : json['fullName'],
    };
}

export function GithubRepositoryToJSON(value?: GithubRepository | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        '_links': GithubRepositorylinksToJSON(value.links),
        'defaultBranch': value.defaultBranch,
        'description': value.description,
        'name': value.name,
        'permissions': GithubRepositorypermissionsToJSON(value.permissions),
        'private': value._private,
        'fullName': value.fullName,
    };
}

