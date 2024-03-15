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

// AssertComputerSetConstraints checks if the values respects the defined constraints
func AssertComputerSetConstraints(obj ComputerSet) error {
	return nil
}
