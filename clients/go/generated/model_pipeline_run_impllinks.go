/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type PipelineRunImpllinks struct {
	Nodes Link `json:"nodes,omitempty"`
	Log Link `json:"log,omitempty"`
	Self Link `json:"self,omitempty"`
	Actions Link `json:"actions,omitempty"`
	Steps Link `json:"steps,omitempty"`
	Class string `json:"_class,omitempty"`
}
