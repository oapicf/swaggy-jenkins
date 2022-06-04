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

type PipelineRunartifacts struct {

	Name string `json:"name,omitempty"`

	Size int32 `json:"size,omitempty"`

	Url string `json:"url,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertPipelineRunartifactsRequired checks if the required fields are not zero-ed
func AssertPipelineRunartifactsRequired(obj PipelineRunartifacts) error {
	return nil
}

// AssertRecursePipelineRunartifactsRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of PipelineRunartifacts (e.g. [][]PipelineRunartifacts), otherwise ErrTypeAssertionError is thrown.
func AssertRecursePipelineRunartifactsRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aPipelineRunartifacts, ok := obj.(PipelineRunartifacts)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertPipelineRunartifactsRequired(aPipelineRunartifacts)
	})
}
