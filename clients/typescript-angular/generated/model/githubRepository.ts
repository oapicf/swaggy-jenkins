/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GithubRepositorypermissions } from './githubRepositorypermissions';
import { GithubRepositorylinks } from './githubRepositorylinks';


export interface GithubRepository { 
    _class?: string;
    _links?: GithubRepositorylinks;
    defaultBranch?: string;
    description?: string;
    name?: string;
    permissions?: GithubRepositorypermissions;
    _private?: boolean;
    fullName?: string;
}

