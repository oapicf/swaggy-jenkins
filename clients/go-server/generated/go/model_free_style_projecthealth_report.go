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

type FreeStyleProjecthealthReport struct {

	Description string `json:"description,omitempty"`

	IconClassName string `json:"iconClassName,omitempty"`

	IconUrl string `json:"iconUrl,omitempty"`

	Score int32 `json:"score,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertFreeStyleProjecthealthReportRequired checks if the required fields are not zero-ed
func AssertFreeStyleProjecthealthReportRequired(obj FreeStyleProjecthealthReport) error {
	return nil
}

// AssertRecurseFreeStyleProjecthealthReportRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of FreeStyleProjecthealthReport (e.g. [][]FreeStyleProjecthealthReport), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseFreeStyleProjecthealthReportRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aFreeStyleProjecthealthReport, ok := obj.(FreeStyleProjecthealthReport)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertFreeStyleProjecthealthReportRequired(aFreeStyleProjecthealthReport)
	})
}
