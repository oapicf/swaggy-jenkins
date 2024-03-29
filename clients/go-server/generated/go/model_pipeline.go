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




type Pipeline struct {

	Class string `json:"_class,omitempty"`

	Organization string `json:"organization,omitempty"`

	Name string `json:"name,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	FullName string `json:"fullName,omitempty"`

	WeatherScore int32 `json:"weatherScore,omitempty"`

	EstimatedDurationInMillis int32 `json:"estimatedDurationInMillis,omitempty"`

	LatestRun PipelinelatestRun `json:"latestRun,omitempty"`
}

// AssertPipelineRequired checks if the required fields are not zero-ed
func AssertPipelineRequired(obj Pipeline) error {
	if err := AssertPipelinelatestRunRequired(obj.LatestRun); err != nil {
		return err
	}
	return nil
}

// AssertPipelineConstraints checks if the values respects the defined constraints
func AssertPipelineConstraints(obj Pipeline) error {
	return nil
}
