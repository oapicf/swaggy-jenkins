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

import type {
    GithubRepositories,
    GithubRespositoryContainerlinks,
} from './';

/**
 * @export
 * @interface GithubRespositoryContainer
 */
export interface GithubRespositoryContainer {
    /**
     * @type {string}
     * @memberof GithubRespositoryContainer
     */
    _class?: string;
    /**
     * @type {GithubRespositoryContainerlinks}
     * @memberof GithubRespositoryContainer
     */
    _links?: GithubRespositoryContainerlinks;
    /**
     * @type {GithubRepositories}
     * @memberof GithubRespositoryContainer
     */
    repositories?: GithubRepositories;
}
