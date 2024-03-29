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




type CauseUserIdCause struct {

	Class string `json:"_class,omitempty"`

	ShortDescription string `json:"shortDescription,omitempty"`

	UserId string `json:"userId,omitempty"`

	UserName string `json:"userName,omitempty"`
}

// AssertCauseUserIdCauseRequired checks if the required fields are not zero-ed
func AssertCauseUserIdCauseRequired(obj CauseUserIdCause) error {
	return nil
}

// AssertCauseUserIdCauseConstraints checks if the values respects the defined constraints
func AssertCauseUserIdCauseConstraints(obj CauseUserIdCause) error {
	return nil
}
