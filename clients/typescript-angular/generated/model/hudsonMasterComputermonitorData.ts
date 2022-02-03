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
import { ResponseTimeMonitorData } from './responseTimeMonitorData';
import { ClockDifference } from './clockDifference';
import { DiskSpaceMonitorDescriptorDiskSpace } from './diskSpaceMonitorDescriptorDiskSpace';
import { SwapSpaceMonitorMemoryUsage2 } from './swapSpaceMonitorMemoryUsage2';


export interface HudsonMasterComputermonitorData { 
    hudson_node_monitors_SwapSpaceMonitor?: SwapSpaceMonitorMemoryUsage2;
    hudson_node_monitors_TemporarySpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
    hudson_node_monitors_DiskSpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
    hudson_node_monitors_ArchitectureMonitor?: string;
    hudson_node_monitors_ResponseTimeMonitor?: ResponseTimeMonitorData;
    hudson_node_monitors_ClockMonitor?: ClockDifference;
    _class?: string;
}

