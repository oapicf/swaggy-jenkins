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
import { PipelineRunImpllinks } from './pipelineRunImpllinks';


export interface PipelineRunImpl { 
    _class?: string;
    links?: PipelineRunImpllinks;
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
