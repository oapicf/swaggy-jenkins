/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 */

package org.openapitools.server.model

case class HudsonMasterComputermonitorData(
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],

  hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],

  hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],

  hudsonNodeMonitorsArchitectureMonitor: Option[String],

  hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],

  hudsonNodeMonitorsClockMonitor: Option[ClockDifference],

  `class`: Option[String]

 )
