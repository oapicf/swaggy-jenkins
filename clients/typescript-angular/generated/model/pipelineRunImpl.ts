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
import { PipelineRunImpllinks } from './pipelineRunImpllinks';


export interface PipelineRunImpl { 
    _class?: string;
    _links?: PipelineRunImpllinks;
    durationInMillis?: number;
    enQueueTime?: string;
    endTime?: string;
    estimatedDurationInMillis?: number;
    id?: string;
    organization?: string;
    pipeline?: string;
    result?: string;
    runSummary?: string;
    startTime?: string;
    state?: string;
    type?: string;
    commitId?: string;
}

