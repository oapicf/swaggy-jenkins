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
import { Link } from './link';

export class PipelineRunImpllinks {
    'nodes'?: Link;
    'log'?: Link;
    'self'?: Link;
    'actions'?: Link;
    'steps'?: Link;
    '_class'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "nodes",
            "baseName": "nodes",
            "type": "Link"
        },
        {
            "name": "log",
            "baseName": "log",
            "type": "Link"
        },
        {
            "name": "self",
            "baseName": "self",
            "type": "Link"
        },
        {
            "name": "actions",
            "baseName": "actions",
            "type": "Link"
        },
        {
            "name": "steps",
            "baseName": "steps",
            "type": "Link"
        },
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return PipelineRunImpllinks.attributeTypeMap;
    }
}

