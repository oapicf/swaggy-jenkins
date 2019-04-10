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

import * as models from './models';

export interface BranchImpl {
    _class?: string;

    displayName?: string;

    estimatedDurationInMillis?: number;

    fullDisplayName?: string;

    fullName?: string;

    name?: string;

    organization?: string;

    parameters?: Array<models.StringParameterDefinition>;

    permissions?: models.BranchImplpermissions;

    weatherScore?: number;

    pullRequest?: string;

    links?: models.BranchImpllinks;

    latestRun?: models.PipelineRunImpl;

}
