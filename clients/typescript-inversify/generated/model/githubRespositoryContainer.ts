/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GithubRepositories } from './githubRepositories';
import { GithubRespositoryContainerlinks } from './githubRespositoryContainerlinks';


export interface GithubRespositoryContainer { 
    _class?: string;
    links?: GithubRespositoryContainerlinks;
    repositories?: GithubRepositories;
}
