// tslint:disable
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

import { exists, mapValues } from '../runtime';
import {
    CauseAction,
    CauseActionFromJSON,
    CauseActionToJSON,
    FreeStyleBuild,
    FreeStyleBuildFromJSON,
    FreeStyleBuildToJSON,
    FreeStyleProject,
    FreeStyleProjectFromJSON,
    FreeStyleProjectToJSON,
} from './';

/**
 * 
 * @export
 * @interface QueueLeftItem
 */
export interface QueueLeftItem  {
    /**
     * 
     * @type {string}
     * @memberof QueueLeftItem
     */
    _class?: string;
    /**
     * 
     * @type {Array<CauseAction>}
     * @memberof QueueLeftItem
     */
    actions?: Array<CauseAction>;
    /**
     * 
     * @type {boolean}
     * @memberof QueueLeftItem
     */
    blocked?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof QueueLeftItem
     */
    buildable?: boolean;
    /**
     * 
     * @type {number}
     * @memberof QueueLeftItem
     */
    id?: number;
    /**
     * 
     * @type {number}
     * @memberof QueueLeftItem
     */
    inQueueSince?: number;
    /**
     * 
     * @type {string}
     * @memberof QueueLeftItem
     */
    params?: string;
    /**
     * 
     * @type {boolean}
     * @memberof QueueLeftItem
     */
    stuck?: boolean;
    /**
     * 
     * @type {FreeStyleProject}
     * @memberof QueueLeftItem
     */
    task?: FreeStyleProject;
    /**
     * 
     * @type {string}
     * @memberof QueueLeftItem
     */
    url?: string;
    /**
     * 
     * @type {string}
     * @memberof QueueLeftItem
     */
    why?: string;
    /**
     * 
     * @type {boolean}
     * @memberof QueueLeftItem
     */
    cancelled?: boolean;
    /**
     * 
     * @type {FreeStyleBuild}
     * @memberof QueueLeftItem
     */
    executable?: FreeStyleBuild;
}

export function QueueLeftItemFromJSON(json: any): QueueLeftItem {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'actions': !exists(json, 'actions') ? undefined : (json['actions'] as Array<any>).map(CauseActionFromJSON),
        'blocked': !exists(json, 'blocked') ? undefined : json['blocked'],
        'buildable': !exists(json, 'buildable') ? undefined : json['buildable'],
        'id': !exists(json, 'id') ? undefined : json['id'],
        'inQueueSince': !exists(json, 'inQueueSince') ? undefined : json['inQueueSince'],
        'params': !exists(json, 'params') ? undefined : json['params'],
        'stuck': !exists(json, 'stuck') ? undefined : json['stuck'],
        'task': !exists(json, 'task') ? undefined : FreeStyleProjectFromJSON(json['task']),
        'url': !exists(json, 'url') ? undefined : json['url'],
        'why': !exists(json, 'why') ? undefined : json['why'],
        'cancelled': !exists(json, 'cancelled') ? undefined : json['cancelled'],
        'executable': !exists(json, 'executable') ? undefined : FreeStyleBuildFromJSON(json['executable']),
    };
}

export function QueueLeftItemToJSON(value?: QueueLeftItem): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        'actions': value.actions === undefined ? undefined : (value.actions as Array<any>).map(CauseActionToJSON),
        'blocked': value.blocked,
        'buildable': value.buildable,
        'id': value.id,
        'inQueueSince': value.inQueueSince,
        'params': value.params,
        'stuck': value.stuck,
        'task': FreeStyleProjectToJSON(value.task),
        'url': value.url,
        'why': value.why,
        'cancelled': value.cancelled,
        'executable': FreeStyleBuildToJSON(value.executable),
    };
}


