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
    Link,
} from './';

/**
 * @export
 * @interface PipelineRunImpllinks
 */
export interface PipelineRunImpllinks {
    /**
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    nodes?: Link;
    /**
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    log?: Link;
    /**
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    self?: Link;
    /**
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    actions?: Link;
    /**
     * @type {Link}
     * @memberof PipelineRunImpllinks
     */
    steps?: Link;
    /**
     * @type {string}
     * @memberof PipelineRunImpllinks
     */
    _class?: string;
}
