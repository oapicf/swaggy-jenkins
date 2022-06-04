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

type ClassesByClass struct {

	Classes []string `json:"classes,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertClassesByClassRequired checks if the required fields are not zero-ed
func AssertClassesByClassRequired(obj ClassesByClass) error {
	return nil
}

// AssertRecurseClassesByClassRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of ClassesByClass (e.g. [][]ClassesByClass), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseClassesByClassRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aClassesByClass, ok := obj.(ClassesByClass)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertClassesByClassRequired(aClassesByClass)
	})
}
