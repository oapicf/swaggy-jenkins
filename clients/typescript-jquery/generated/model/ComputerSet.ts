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

import * as models from './models';

export interface ComputerSet {
    _class?: string;

    busyExecutors?: number;

    computer?: Array<models.HudsonMasterComputer>;

    displayName?: string;

    totalExecutors?: number;

}
