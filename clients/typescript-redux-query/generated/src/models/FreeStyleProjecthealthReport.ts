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
/**
 * 
 * @export
 * @interface FreeStyleProjecthealthReport
 */
export interface FreeStyleProjecthealthReport  {
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProjecthealthReport
     */
    description?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProjecthealthReport
     */
    iconClassName?: string;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProjecthealthReport
     */
    iconUrl?: string;
    /**
     * 
     * @type {number}
     * @memberof FreeStyleProjecthealthReport
     */
    score?: number;
    /**
     * 
     * @type {string}
     * @memberof FreeStyleProjecthealthReport
     */
    _class?: string;
}

export function FreeStyleProjecthealthReportFromJSON(json: any): FreeStyleProjecthealthReport {
    return {
        'description': !exists(json, 'description') ? undefined : json['description'],
        'iconClassName': !exists(json, 'iconClassName') ? undefined : json['iconClassName'],
        'iconUrl': !exists(json, 'iconUrl') ? undefined : json['iconUrl'],
        'score': !exists(json, 'score') ? undefined : json['score'],
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function FreeStyleProjecthealthReportToJSON(value?: FreeStyleProjecthealthReport): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'description': value.description,
        'iconClassName': value.iconClassName,
        'iconUrl': value.iconUrl,
        'score': value.score,
        '_class': value._class,
    };
}


