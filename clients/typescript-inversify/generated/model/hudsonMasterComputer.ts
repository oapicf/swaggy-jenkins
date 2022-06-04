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
import { HudsonMasterComputerexecutors } from './hudsonMasterComputerexecutors';
import { HudsonMasterComputermonitorData } from './hudsonMasterComputermonitorData';
import { Label1 } from './label1';


export interface HudsonMasterComputer { 
    _class?: string;
    displayName?: string;
    executors?: Array<HudsonMasterComputerexecutors>;
    icon?: string;
    iconClassName?: string;
    idle?: boolean;
    jnlpAgent?: boolean;
    launchSupported?: boolean;
    loadStatistics?: Label1;
    manualLaunchAllowed?: boolean;
    monitorData?: HudsonMasterComputermonitorData;
    numExecutors?: number;
    offline?: boolean;
    offlineCause?: string;
    offlineCauseReason?: string;
    temporarilyOffline?: boolean;
}
