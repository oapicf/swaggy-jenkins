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
    PipelinelatestRunartifacts,
} from './';

/**
 * @export
 * @interface PipelinelatestRun
 */
export interface PipelinelatestRun {
    /**
     * @type {Array<PipelinelatestRunartifacts>}
     * @memberof PipelinelatestRun
     */
    artifacts?: Array<PipelinelatestRunartifacts>;
    /**
     * @type {number}
     * @memberof PipelinelatestRun
     */
    durationInMillis?: number;
    /**
     * @type {number}
     * @memberof PipelinelatestRun
     */
    estimatedDurationInMillis?: number;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    enQueueTime?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    endTime?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    id?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    organization?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    pipeline?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    result?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    runSummary?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    startTime?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    state?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    type?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    commitId?: string;
    /**
     * @type {string}
     * @memberof PipelinelatestRun
     */
    _class?: string;
}
