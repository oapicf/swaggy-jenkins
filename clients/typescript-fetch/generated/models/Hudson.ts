/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    AllView,
    AllViewFromJSON,
    AllViewFromJSONTyped,
    AllViewToJSON,
} from './AllView';
import {
    FreeStyleProject,
    FreeStyleProjectFromJSON,
    FreeStyleProjectFromJSONTyped,
    FreeStyleProjectToJSON,
} from './FreeStyleProject';
import {
    HudsonassignedLabels,
    HudsonassignedLabelsFromJSON,
    HudsonassignedLabelsFromJSONTyped,
    HudsonassignedLabelsToJSON,
} from './HudsonassignedLabels';
import {
    UnlabeledLoadStatistics,
    UnlabeledLoadStatisticsFromJSON,
    UnlabeledLoadStatisticsFromJSONTyped,
    UnlabeledLoadStatisticsToJSON,
} from './UnlabeledLoadStatistics';

/**
 * 
 * @export
 * @interface Hudson
 */
export interface Hudson {
    /**
     * 
     * @type {string}
     * @memberof Hudson
     */
    _class?: string;
    /**
     * 
     * @type {Array<HudsonassignedLabels>}
     * @memberof Hudson
     */
    assignedLabels?: Array<HudsonassignedLabels>;
    /**
     * 
     * @type {string}
     * @memberof Hudson
     */
    mode?: string;
    /**
     * 
     * @type {string}
     * @memberof Hudson
     */
    nodeDescription?: string;
    /**
     * 
     * @type {string}
     * @memberof Hudson
     */
    nodeName?: string;
    /**
     * 
     * @type {number}
     * @memberof Hudson
     */
    numExecutors?: number;
    /**
     * 
     * @type {string}
     * @memberof Hudson
     */
    description?: string;
    /**
     * 
     * @type {Array<FreeStyleProject>}
     * @memberof Hudson
     */
    jobs?: Array<FreeStyleProject>;
    /**
     * 
     * @type {AllView}
     * @memberof Hudson
     */
    primaryView?: AllView;
    /**
     * 
     * @type {boolean}
     * @memberof Hudson
     */
    quietingDown?: boolean;
    /**
     * 
     * @type {number}
     * @memberof Hudson
     */
    slaveAgentPort?: number;
    /**
     * 
     * @type {UnlabeledLoadStatistics}
     * @memberof Hudson
     */
    unlabeledLoad?: UnlabeledLoadStatistics;
    /**
     * 
     * @type {boolean}
     * @memberof Hudson
     */
    useCrumbs?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof Hudson
     */
    useSecurity?: boolean;
    /**
     * 
     * @type {Array<AllView>}
     * @memberof Hudson
     */
    views?: Array<AllView>;
}

export function HudsonFromJSON(json: any): Hudson {
    return HudsonFromJSONTyped(json, false);
}

export function HudsonFromJSONTyped(json: any, ignoreDiscriminator: boolean): Hudson {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        '_class': !exists(json, '_class') ? undefined : json['_class'],
        'assignedLabels': !exists(json, 'assignedLabels') ? undefined : ((json['assignedLabels'] as Array<any>).map(HudsonassignedLabelsFromJSON)),
        'mode': !exists(json, 'mode') ? undefined : json['mode'],
        'nodeDescription': !exists(json, 'nodeDescription') ? undefined : json['nodeDescription'],
        'nodeName': !exists(json, 'nodeName') ? undefined : json['nodeName'],
        'numExecutors': !exists(json, 'numExecutors') ? undefined : json['numExecutors'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'jobs': !exists(json, 'jobs') ? undefined : ((json['jobs'] as Array<any>).map(FreeStyleProjectFromJSON)),
        'primaryView': !exists(json, 'primaryView') ? undefined : AllViewFromJSON(json['primaryView']),
        'quietingDown': !exists(json, 'quietingDown') ? undefined : json['quietingDown'],
        'slaveAgentPort': !exists(json, 'slaveAgentPort') ? undefined : json['slaveAgentPort'],
        'unlabeledLoad': !exists(json, 'unlabeledLoad') ? undefined : UnlabeledLoadStatisticsFromJSON(json['unlabeledLoad']),
        'useCrumbs': !exists(json, 'useCrumbs') ? undefined : json['useCrumbs'],
        'useSecurity': !exists(json, 'useSecurity') ? undefined : json['useSecurity'],
        'views': !exists(json, 'views') ? undefined : ((json['views'] as Array<any>).map(AllViewFromJSON)),
    };
}

export function HudsonToJSON(value?: Hudson | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        '_class': value._class,
        'assignedLabels': value.assignedLabels === undefined ? undefined : ((value.assignedLabels as Array<any>).map(HudsonassignedLabelsToJSON)),
        'mode': value.mode,
        'nodeDescription': value.nodeDescription,
        'nodeName': value.nodeName,
        'numExecutors': value.numExecutors,
        'description': value.description,
        'jobs': value.jobs === undefined ? undefined : ((value.jobs as Array<any>).map(FreeStyleProjectToJSON)),
        'primaryView': AllViewToJSON(value.primaryView),
        'quietingDown': value.quietingDown,
        'slaveAgentPort': value.slaveAgentPort,
        'unlabeledLoad': UnlabeledLoadStatisticsToJSON(value.unlabeledLoad),
        'useCrumbs': value.useCrumbs,
        'useSecurity': value.useSecurity,
        'views': value.views === undefined ? undefined : ((value.views as Array<any>).map(AllViewToJSON)),
    };
}

