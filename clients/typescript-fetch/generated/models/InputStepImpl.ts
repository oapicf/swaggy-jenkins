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
import type { InputStepImpllinks } from './InputStepImpllinks';
import {
    InputStepImpllinksFromJSON,
    InputStepImpllinksFromJSONTyped,
    InputStepImpllinksToJSON,
} from './InputStepImpllinks';
import type { StringParameterDefinition } from './StringParameterDefinition';
import {
    StringParameterDefinitionFromJSON,
    StringParameterDefinitionFromJSONTyped,
    StringParameterDefinitionToJSON,
} from './StringParameterDefinition';

/**
 * 
 * @export
 * @interface InputStepImpl
 */
export interface InputStepImpl {
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

/**
 * Check if a given object implements the InputStepImpl interface.
 */
export function instanceOfInputStepImpl(value: object): boolean {
    return true;
}

export function InputStepImplFromJSON(json: any): InputStepImpl {
    return InputStepImplFromJSONTyped(json, false);
}

export function InputStepImplFromJSONTyped(json: any, ignoreDiscriminator: boolean): InputStepImpl {
    if (json == null) {
        return json;
    }
    return {
        
        '_class': json['_class'] == null ? undefined : json['_class'],
        'links': json['_links'] == null ? undefined : InputStepImpllinksFromJSON(json['_links']),
        'id': json['id'] == null ? undefined : json['id'],
        'message': json['message'] == null ? undefined : json['message'],
        'ok': json['ok'] == null ? undefined : json['ok'],
        'parameters': json['parameters'] == null ? undefined : ((json['parameters'] as Array<any>).map(StringParameterDefinitionFromJSON)),
        'submitter': json['submitter'] == null ? undefined : json['submitter'],
    };
}

export function InputStepImplToJSON(value?: InputStepImpl | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        '_class': value['_class'],
        '_links': InputStepImpllinksToJSON(value['links']),
        'id': value['id'],
        'message': value['message'],
        'ok': value['ok'],
        'parameters': value['parameters'] == null ? undefined : ((value['parameters'] as Array<any>).map(StringParameterDefinitionToJSON)),
        'submitter': value['submitter'],
    };
}

