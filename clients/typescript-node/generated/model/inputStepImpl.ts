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

import { RequestFile } from './models';
import { InputStepImpllinks } from './inputStepImpllinks';
import { StringParameterDefinition } from './stringParameterDefinition';

export class InputStepImpl {
    '_class'?: string;
    'links'?: InputStepImpllinks;
    'id'?: string;
    'message'?: string;
    'ok'?: string;
    'parameters'?: Array<StringParameterDefinition>;
    'submitter'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        },
        {
            "name": "links",
            "baseName": "_links",
            "type": "InputStepImpllinks"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "message",
            "baseName": "message",
            "type": "string"
        },
        {
            "name": "ok",
            "baseName": "ok",
            "type": "string"
        },
        {
            "name": "parameters",
            "baseName": "parameters",
            "type": "Array<StringParameterDefinition>"
        },
        {
            "name": "submitter",
            "baseName": "submitter",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return InputStepImpl.attributeTypeMap;
    }
}

