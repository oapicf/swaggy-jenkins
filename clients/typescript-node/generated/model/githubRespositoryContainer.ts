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

import { RequestFile } from './models';
import { GithubRepositories } from './githubRepositories';
import { GithubRespositoryContainerlinks } from './githubRespositoryContainerlinks';

export class GithubRespositoryContainer {
    '_class'?: string;
    'links'?: GithubRespositoryContainerlinks;
    'repositories'?: GithubRepositories;

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
            "type": "GithubRespositoryContainerlinks"
        },
        {
            "name": "repositories",
            "baseName": "repositories",
            "type": "GithubRepositories"
        }    ];

    static getAttributeTypeMap() {
        return GithubRespositoryContainer.attributeTypeMap;
    }
}

