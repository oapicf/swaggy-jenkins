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
/**
 * 
 * @export
 * @interface DefaultCrumbIssuer
 */
export interface DefaultCrumbIssuer  {
    /**
     * 
     * @type {string}
     * @memberof DefaultCrumbIssuer
     */
    _class?: string;
    /**
     * 
     * @type {string}
     * @memberof DefaultCrumbIssuer
     */
    crumb?: string;
    /**
     * 
     * @type {string}
     * @memberof DefaultCrumbIssuer
     */
    crumbRequestField?: string;
}

export function DefaultCrumbIssuerFromJSON(json: any): DefaultCrumbIssuer {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'crumb': !exists(json, 'crumb') ? undefined : json['crumb'],
        'crumbRequestField': !exists(json, 'crumbRequestField') ? undefined : json['crumbRequestField'],
    };
}

export function DefaultCrumbIssuerToJSON(value?: DefaultCrumbIssuer): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        'crumb': value.crumb,
        'crumbRequestField': value.crumbRequestField,
    };
}


