/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GithubRepositorieslinks } from './githubRepositorieslinks';
import { GithubRepository } from './githubRepository';


export interface GithubRepositories { 
    _class?: string;
    _links?: GithubRepositorieslinks;
    items?: Array<GithubRepository>;
    lastPage?: number;
    nextPage?: number;
    pageSize?: number;
}

