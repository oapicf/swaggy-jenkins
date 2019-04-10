/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { ClockDifference } from './clockDifference';
import { DiskSpaceMonitorDescriptorDiskSpace } from './diskSpaceMonitorDescriptorDiskSpace';
import { ResponseTimeMonitorData } from './responseTimeMonitorData';
import { SwapSpaceMonitorMemoryUsage2 } from './swapSpaceMonitorMemoryUsage2';


export interface HudsonMasterComputermonitorData { 
    hudsonNodeMonitorsSwapSpaceMonitor?: SwapSpaceMonitorMemoryUsage2;
    hudsonNodeMonitorsTemporarySpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
    hudsonNodeMonitorsDiskSpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
    hudsonNodeMonitorsArchitectureMonitor?: string;
    hudsonNodeMonitorsResponseTimeMonitor?: ResponseTimeMonitorData;
    hudsonNodeMonitorsClockMonitor?: ClockDifference;
    _class?: string;
}
