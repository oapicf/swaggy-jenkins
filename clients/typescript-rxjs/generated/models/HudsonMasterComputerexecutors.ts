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
    FreeStyleBuild,
} from './';

/**
 * @export
 * @interface HudsonMasterComputerexecutors
 */
export interface HudsonMasterComputerexecutors {
    /**
     * @type {FreeStyleBuild}
     * @memberof HudsonMasterComputerexecutors
     */
    currentExecutable?: FreeStyleBuild;
    /**
     * @type {boolean}
     * @memberof HudsonMasterComputerexecutors
     */
    idle?: boolean;
    /**
     * @type {boolean}
     * @memberof HudsonMasterComputerexecutors
     */
    likelyStuck?: boolean;
    /**
     * @type {number}
     * @memberof HudsonMasterComputerexecutors
     */
    number?: number;
    /**
     * @type {number}
     * @memberof HudsonMasterComputerexecutors
     */
    progress?: number;
    /**
     * @type {string}
     * @memberof HudsonMasterComputerexecutors
     */
    _class?: string;
}
