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
    FreeStyleProject,
    FreeStyleProjectFromJSON,
    FreeStyleProjectFromJSONTyped,
    FreeStyleProjectToJSON,
} from './FreeStyleProject';

/**
 * 
 * @export
 * @interface ListView
 */
export interface ListView {
    /**
     * 
     * @type {string}
     * @memberof ListView
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof ListView
     */
    description?: string;
    /**
     * 
     * @type {Array<FreeStyleProject>}
     * @memberof ListView
     */
    jobs?: Array<FreeStyleProject>;
    /**
     * 
     * @type {string}
     * @memberof ListView
     */
    name?: string;
    /**
     * 
     * @type {string}
     * @memberof ListView
     */
    url?: string;
}

export function ListViewFromJSON(json: any): ListView {
    return ListViewFromJSONTyped(json, false);
}

export function ListViewFromJSONTyped(json: any, ignoreDiscriminator: boolean): ListView {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'jobs': !exists(json, 'jobs') ? undefined : ((json['jobs'] as Array<any>).map(FreeStyleProjectFromJSON)),
        'name': !exists(json, 'name') ? undefined : json['name'],
        'url': !exists(json, 'url') ? undefined : json['url'],
    };
}

export function ListViewToJSON(value?: ListView | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'description': value.description,
        'jobs': value.jobs === undefined ? undefined : ((value.jobs as Array<any>).map(FreeStyleProjectToJSON)),
        'name': value.name,
        'url': value.url,
    };
}

