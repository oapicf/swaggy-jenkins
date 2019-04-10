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

type BranchImpl struct {
	Class string `json:"_class,omitempty"`
	DisplayName string `json:"displayName,omitempty"`
	EstimatedDurationInMillis int32 `json:"estimatedDurationInMillis,omitempty"`
	FullDisplayName string `json:"fullDisplayName,omitempty"`
	FullName string `json:"fullName,omitempty"`
	Name string `json:"name,omitempty"`
	Organization string `json:"organization,omitempty"`
	Parameters []StringParameterDefinition `json:"parameters,omitempty"`
	Permissions BranchImplpermissions `json:"permissions,omitempty"`
	WeatherScore int32 `json:"weatherScore,omitempty"`
	PullRequest string `json:"pullRequest,omitempty"`
	Links BranchImpllinks `json:"_links,omitempty"`
	LatestRun PipelineRunImpl `json:"latestRun,omitempty"`
}
