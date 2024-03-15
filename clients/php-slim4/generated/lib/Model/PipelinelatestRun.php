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
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 */
namespace OpenAPIServer\Model;

use OpenAPIServer\BaseModel;

/**
 * PipelinelatestRun
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
class PipelinelatestRun extends BaseModel
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
    "artifacts" : {
      "type" : "array",
      "items" : {
        "$ref" : "#/components/schemas/PipelinelatestRunartifacts"
      }
    },
    "durationInMillis" : {
      "type" : "integer"
    },
    "estimatedDurationInMillis" : {
      "type" : "integer"
    },
    "enQueueTime" : {
      "type" : "string"
    },
    "endTime" : {
      "type" : "string"
    },
    "id" : {
      "type" : "string"
    },
    "organization" : {
      "type" : "string"
    },
    "pipeline" : {
      "type" : "string"
    },
    "result" : {
      "type" : "string"
    },
    "runSummary" : {
      "type" : "string"
    },
    "startTime" : {
      "type" : "string"
    },
    "state" : {
      "type" : "string"
    },
    "type" : {
      "type" : "string"
    },
    "commitId" : {
      "type" : "string"
    },
    "_class" : {
      "type" : "string"
    }
  }
}
SCHEMA;
}
