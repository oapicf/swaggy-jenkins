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

type StringParameterValue struct {

	Class string `json:"_class,omitempty"`

	Name string `json:"name,omitempty"`

	Value string `json:"value,omitempty"`
}

// AssertStringParameterValueRequired checks if the required fields are not zero-ed
func AssertStringParameterValueRequired(obj StringParameterValue) error {
	return nil
}

// AssertRecurseStringParameterValueRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of StringParameterValue (e.g. [][]StringParameterValue), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseStringParameterValueRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aStringParameterValue, ok := obj.(StringParameterValue)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertStringParameterValueRequired(aStringParameterValue)
	})
}
