/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type PipelineRunNode struct {

	Class string `json:"_class,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	DurationInMillis int32 `json:"durationInMillis,omitempty"`

	Edges []PipelineRunNodeedges `json:"edges,omitempty"`

	Id string `json:"id,omitempty"`

	Result string `json:"result,omitempty"`

	StartTime string `json:"startTime,omitempty"`

	State string `json:"state,omitempty"`
}
