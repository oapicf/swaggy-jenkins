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

type StringParameterDefinition struct {

	Class string `json:"_class,omitempty"`

	DefaultParameterValue StringParameterValue `json:"defaultParameterValue,omitempty"`

	Description string `json:"description,omitempty"`

	Name string `json:"name,omitempty"`

	Type string `json:"type,omitempty"`
}

// AssertStringParameterDefinitionRequired checks if the required fields are not zero-ed
func AssertStringParameterDefinitionRequired(obj StringParameterDefinition) error {
	if err := AssertStringParameterValueRequired(obj.DefaultParameterValue); err != nil {
		return err
	}
	return nil
}

// AssertRecurseStringParameterDefinitionRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of StringParameterDefinition (e.g. [][]StringParameterDefinition), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseStringParameterDefinitionRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aStringParameterDefinition, ok := obj.(StringParameterDefinition)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertStringParameterDefinitionRequired(aStringParameterDefinition)
	})
}
