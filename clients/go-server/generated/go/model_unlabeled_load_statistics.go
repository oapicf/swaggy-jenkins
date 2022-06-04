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

type UnlabeledLoadStatistics struct {

	Class string `json:"_class,omitempty"`
}

// AssertUnlabeledLoadStatisticsRequired checks if the required fields are not zero-ed
func AssertUnlabeledLoadStatisticsRequired(obj UnlabeledLoadStatistics) error {
	return nil
}

// AssertRecurseUnlabeledLoadStatisticsRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of UnlabeledLoadStatistics (e.g. [][]UnlabeledLoadStatistics), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseUnlabeledLoadStatisticsRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aUnlabeledLoadStatistics, ok := obj.(UnlabeledLoadStatistics)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertUnlabeledLoadStatisticsRequired(aUnlabeledLoadStatistics)
	})
}
