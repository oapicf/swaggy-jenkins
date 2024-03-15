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

export class BranchImpllinks {
    'self'?: Link;
    'actions'?: Link;
    'runs'?: Link;
    'queue'?: Link;
    '_class'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
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
            "name": "runs",
            "baseName": "runs",
            "type": "Link"
        },
        {
            "name": "queue",
            "baseName": "queue",
            "type": "Link"
        },
        {
            "name": "_class",
            "baseName": "_class",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return BranchImpllinks.attributeTypeMap;
    }
}

