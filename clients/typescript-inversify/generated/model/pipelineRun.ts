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
import { PipelineRunartifacts } from './pipelineRunartifacts';


export interface PipelineRun { 
    _class?: string;
    artifacts?: Array<PipelineRunartifacts>;
    durationInMillis?: number;
    estimatedDurationInMillis?: number;
    enQueueTime?: string;
    endTime?: string;
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
