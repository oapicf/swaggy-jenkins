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
    InputStepImpllinks,
    InputStepImpllinksFromJSON,
    InputStepImpllinksToJSON,
    StringParameterDefinition,
    StringParameterDefinitionFromJSON,
    StringParameterDefinitionToJSON,
} from './';

/**
 * 
 * @export
 * @interface InputStepImpl
 */
export interface InputStepImpl  {
    /**
     * 
     * @type {string}
     * @memberof InputStepImpl
     */
    _class?: string;
    /**
     * 
     * @type {InputStepImpllinks}
     * @memberof InputStepImpl
     */
    links?: InputStepImpllinks;
    /**
     * 
     * @type {string}
     * @memberof InputStepImpl
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof InputStepImpl
     */
    message?: string;
    /**
     * 
     * @type {string}
     * @memberof InputStepImpl
     */
    ok?: string;
    /**
     * 
     * @type {Array<StringParameterDefinition>}
     * @memberof InputStepImpl
     */
    parameters?: Array<StringParameterDefinition>;
    /**
     * 
     * @type {string}
     * @memberof InputStepImpl
     */
    submitter?: string;
}

export function InputStepImplFromJSON(json: any): InputStepImpl {
    return {
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'links': !exists(json, '_links') ? undefined : InputStepImpllinksFromJSON(json['_links']),
        'id': !exists(json, 'id') ? undefined : json['id'],
        'message': !exists(json, 'message') ? undefined : json['message'],
        'ok': !exists(json, 'ok') ? undefined : json['ok'],
        'parameters': !exists(json, 'parameters') ? undefined : (json['parameters'] as Array<any>).map(StringParameterDefinitionFromJSON),
        'submitter': !exists(json, 'submitter') ? undefined : json['submitter'],
    };
}

export function InputStepImplToJSON(value?: InputStepImpl): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        '_class': value._class,
        '_links': InputStepImpllinksToJSON(value.links),
        'id': value.id,
        'message': value.message,
        'ok': value.ok,
        'parameters': value.parameters === undefined ? undefined : (value.parameters as Array<any>).map(StringParameterDefinitionToJSON),
        'submitter': value.submitter,
    };
}


