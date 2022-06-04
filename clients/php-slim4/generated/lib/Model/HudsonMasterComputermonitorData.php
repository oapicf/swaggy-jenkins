<?php

/**
 * Swaggy Jenkins
 * PHP version 7.4
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * Jenkins API clients generated from Swagger / Open API specification
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 */
namespace OpenAPIServer\Model;

use OpenAPIServer\BaseModel;

/**
 * HudsonMasterComputermonitorData
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
class HudsonMasterComputermonitorData extends BaseModel
{
    /**
     * @var string Models namespace.
     * Can be required for data deserialization when model contains referenced schemas.
     */
    protected const MODELS_NAMESPACE = '\OpenAPIServer\Model';

    /**
     * @var string Constant with OAS schema of current class.
     * Should be overwritten by inherited class.
     */
    protected const MODEL_SCHEMA = <<<'SCHEMA'
{
  "type" : "object",
  "properties" : {
    "hudson.node_monitors.SwapSpaceMonitor" : {
      "$ref" : "#/components/schemas/SwapSpaceMonitorMemoryUsage2"
    },
    "hudson.node_monitors.TemporarySpaceMonitor" : {
      "$ref" : "#/components/schemas/DiskSpaceMonitorDescriptorDiskSpace"
    },
    "hudson.node_monitors.DiskSpaceMonitor" : {
      "$ref" : "#/components/schemas/DiskSpaceMonitorDescriptorDiskSpace"
    },
    "hudson.node_monitors.ArchitectureMonitor" : {
      "type" : "string"
    },
    "hudson.node_monitors.ResponseTimeMonitor" : {
      "$ref" : "#/components/schemas/ResponseTimeMonitorData"
    },
    "hudson.node_monitors.ClockMonitor" : {
      "$ref" : "#/components/schemas/ClockDifference"
    },
    "_class" : {
      "type" : "string"
    }
  }
}
SCHEMA;
}
