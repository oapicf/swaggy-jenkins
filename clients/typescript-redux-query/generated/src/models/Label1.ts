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
 * @interface Label1
 */
export interface Label1  {
    /**
     * 
     * @type {string}
     * @memberof Label1
     */
    _class?: string;
}

export function Label1FromJSON(json: any): Label1 {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
    };
}

export function Label1ToJSON(value?: Label1): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
    };
}


