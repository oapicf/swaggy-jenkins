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




type ResponseTimeMonitorData struct {

	Class string `json:"_class,omitempty"`

	Timestamp int32 `json:"timestamp,omitempty"`

	Average int32 `json:"average,omitempty"`
}

// AssertResponseTimeMonitorDataRequired checks if the required fields are not zero-ed
func AssertResponseTimeMonitorDataRequired(obj ResponseTimeMonitorData) error {
	return nil
}

// AssertResponseTimeMonitorDataConstraints checks if the values respects the defined constraints
func AssertResponseTimeMonitorDataConstraints(obj ResponseTimeMonitorData) error {
	return nil
}
