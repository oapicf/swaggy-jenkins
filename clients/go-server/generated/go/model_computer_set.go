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

type ComputerSet struct {

	Class string `json:"_class,omitempty"`

	BusyExecutors int32 `json:"busyExecutors,omitempty"`

	Computer []HudsonMasterComputer `json:"computer,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	TotalExecutors int32 `json:"totalExecutors,omitempty"`
}

// AssertComputerSetRequired checks if the required fields are not zero-ed
func AssertComputerSetRequired(obj ComputerSet) error {
	for _, el := range obj.Computer {
		if err := AssertHudsonMasterComputerRequired(el); err != nil {
			return err
		}
	}
	return nil
}

// AssertRecurseComputerSetRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of ComputerSet (e.g. [][]ComputerSet), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseComputerSetRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aComputerSet, ok := obj.(ComputerSet)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertComputerSetRequired(aComputerSet)
	})
}
