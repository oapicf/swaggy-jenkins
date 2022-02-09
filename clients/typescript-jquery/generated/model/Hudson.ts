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

import * as models from './models';

export interface Hudson {
    _class?: string;

    assignedLabels?: Array<models.HudsonassignedLabels>;

    mode?: string;

    nodeDescription?: string;

    nodeName?: string;

    numExecutors?: number;

    description?: string;

    jobs?: Array<models.FreeStyleProject>;

    primaryView?: models.AllView;

    quietingDown?: boolean;

    slaveAgentPort?: number;

    unlabeledLoad?: models.UnlabeledLoadStatistics;

    useCrumbs?: boolean;

    useSecurity?: boolean;

    views?: Array<models.AllView>;

}
