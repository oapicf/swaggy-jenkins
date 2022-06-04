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
    ExtensionClassImpllinks,
    ExtensionClassImpllinksFromJSON,
    ExtensionClassImpllinksToJSON,
} from './';

/**
 * 
 * @export
 * @interface ExtensionClassImpl
 */
export interface ExtensionClassImpl  {
    /**
     * 
     * @type {string}
     * @memberof ExtensionClassImpl
     */
    _class?: string;
    /**
     * 
     * @type {ExtensionClassImpllinks}
     * @memberof ExtensionClassImpl
     */
    links?: ExtensionClassImpllinks;
    /**
     * 
     * @type {Array<string>}
     * @memberof ExtensionClassImpl
     */
    classes?: Array<string>;
}

export function ExtensionClassImplFromJSON(json: any): ExtensionClassImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : ExtensionClassImpllinksFromJSON(json['_links']),
        'classes': !exists(json, 'classes') ? undefined : json['classes'],
    };
}

export function ExtensionClassImplToJSON(value?: ExtensionClassImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        '_links': ExtensionClassImpllinksToJSON(value.links),
        'classes': value.classes,
    };
}


