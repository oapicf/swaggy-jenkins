/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type PipelineImpllinks struct {

	Runs Link `json:"runs,omitempty"`

	Self Link `json:"self,omitempty"`

	Queue Link `json:"queue,omitempty"`

	Actions Link `json:"actions,omitempty"`

	Class string `json:"_class,omitempty"`
}
