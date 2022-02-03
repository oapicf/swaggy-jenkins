/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { AllView } from './allView';
import { FreeStyleProject } from './freeStyleProject';
import { HudsonassignedLabels } from './hudsonassignedLabels';
import { UnlabeledLoadStatistics } from './unlabeledLoadStatistics';


export interface Hudson { 
    _class?: string;
    assignedLabels?: Array<HudsonassignedLabels>;
    mode?: string;
    nodeDescription?: string;
    nodeName?: string;
    numExecutors?: number;
    description?: string;
    jobs?: Array<FreeStyleProject>;
    primaryView?: AllView;
    quietingDown?: boolean;
    slaveAgentPort?: number;
    unlabeledLoad?: UnlabeledLoadStatistics;
    useCrumbs?: boolean;
    useSecurity?: boolean;
    views?: Array<AllView>;
}
