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




type PipelinelatestRunartifacts struct {

	Name string `json:"name,omitempty"`

	Size int32 `json:"size,omitempty"`

	Url string `json:"url,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertPipelinelatestRunartifactsRequired checks if the required fields are not zero-ed
func AssertPipelinelatestRunartifactsRequired(obj PipelinelatestRunartifacts) error {
	return nil
}

// AssertPipelinelatestRunartifactsConstraints checks if the values respects the defined constraints
func AssertPipelinelatestRunartifactsConstraints(obj PipelinelatestRunartifacts) error {
	return nil
}
