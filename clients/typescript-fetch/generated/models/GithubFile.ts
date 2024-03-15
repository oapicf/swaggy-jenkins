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
import type { GithubContent } from './GithubContent';
import {
    GithubContentFromJSON,
    GithubContentFromJSONTyped,
    GithubContentToJSON,
} from './GithubContent';

/**
 * 
 * @export
 * @interface GithubFile
 */
export interface GithubFile {
    /**
     * 
     * @type {GithubContent}
     * @memberof GithubFile
     */
    content?: GithubContent;
    /**
     * 
     * @type {string}
     * @memberof GithubFile
     */
    _class?: string;
}

/**
 * Check if a given object implements the GithubFile interface.
 */
export function instanceOfGithubFile(value: object): boolean {
    return true;
}

export function GithubFileFromJSON(json: any): GithubFile {
    return GithubFileFromJSONTyped(json, false);
}

export function GithubFileFromJSONTyped(json: any, ignoreDiscriminator: boolean): GithubFile {
    if (json == null) {
        return json;
    }
    return {
        
        'content': json['content'] == null ? undefined : GithubContentFromJSON(json['content']),
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function GithubFileToJSON(value?: GithubFile | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'content': GithubContentToJSON(value['content']),
        '_class': value['_class'],
    };
}

