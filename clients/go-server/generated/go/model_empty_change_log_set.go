/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type EmptyChangeLogSet struct {

	Class string `json:"_class,omitempty"`

	Kind string `json:"kind,omitempty"`
}

// AssertEmptyChangeLogSetRequired checks if the required fields are not zero-ed
func AssertEmptyChangeLogSetRequired(obj EmptyChangeLogSet) error {
	return nil
}

// AssertRecurseEmptyChangeLogSetRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of EmptyChangeLogSet (e.g. [][]EmptyChangeLogSet), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseEmptyChangeLogSetRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aEmptyChangeLogSet, ok := obj.(EmptyChangeLogSet)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertEmptyChangeLogSetRequired(aEmptyChangeLogSet)
	})
}
