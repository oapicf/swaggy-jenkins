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
/**
 * 
 * @export
 * @interface PipelineBranchesitempullRequestlinks
 */
export interface PipelineBranchesitempullRequestlinks {
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitempullRequestlinks
     */
    self?: string;
    /**
     * 
     * @type {string}
     * @memberof PipelineBranchesitempullRequestlinks
     */
    _class?: string;
}

/**
 * Check if a given object implements the PipelineBranchesitempullRequestlinks interface.
 */
export function instanceOfPipelineBranchesitempullRequestlinks(value: object): boolean {
    return true;
}

export function PipelineBranchesitempullRequestlinksFromJSON(json: any): PipelineBranchesitempullRequestlinks {
    return PipelineBranchesitempullRequestlinksFromJSONTyped(json, false);
}

export function PipelineBranchesitempullRequestlinksFromJSONTyped(json: any, ignoreDiscriminator: boolean): PipelineBranchesitempullRequestlinks {
    if (json == null) {
        return json;
    }
    return {
        
        'self': json['self'] == null ? undefined : json['self'],
        '_class': json['_class'] == null ? undefined : json['_class'],
    };
}

export function PipelineBranchesitempullRequestlinksToJSON(value?: PipelineBranchesitempullRequestlinks | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'self': value['self'],
        '_class': value['_class'],
    };
}

