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
import { PipelinelatestRun } from './pipelinelatestRun';


export interface Pipeline { 
    _class?: string;
    organization?: string;
    name?: string;
    displayName?: string;
    fullName?: string;
    weatherScore?: number;
    estimatedDurationInMillis?: number;
    latestRun?: PipelinelatestRun;
}
