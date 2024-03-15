// tslint:disable
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

import type {
    PipelineActivityartifacts,
} from './';

/**
 * @export
 * @interface PipelineActivity
 */
export interface PipelineActivity {
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    _class?: string;
    /**
     * @type {Array<PipelineActivityartifacts>}
     * @memberof PipelineActivity
     */
    artifacts?: Array<PipelineActivityartifacts>;
    /**
     * @type {number}
     * @memberof PipelineActivity
     */
    durationInMillis?: number;
    /**
     * @type {number}
     * @memberof PipelineActivity
     */
    estimatedDurationInMillis?: number;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    enQueueTime?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    endTime?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    id?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    organization?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    pipeline?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    result?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    runSummary?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    startTime?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    state?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    type?: string;
    /**
     * @type {string}
     * @memberof PipelineActivity
     */
    commitId?: string;
}
