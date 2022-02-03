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

// AssertPipelineRunNodeRequired checks if the required fields are not zero-ed
func AssertPipelineRunNodeRequired(obj PipelineRunNode) error {
	for _, el := range obj.Edges {
		if err := AssertPipelineRunNodeedgesRequired(el); err != nil {
			return err
		}
	}
	return nil
}

// AssertRecursePipelineRunNodeRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of PipelineRunNode (e.g. [][]PipelineRunNode), otherwise ErrTypeAssertionError is thrown.
func AssertRecursePipelineRunNodeRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aPipelineRunNode, ok := obj.(PipelineRunNode)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertPipelineRunNodeRequired(aPipelineRunNode)
	})
}
