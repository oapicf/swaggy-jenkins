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




type Organisation struct {

	Class string `json:"_class,omitempty"`

	Name string `json:"name,omitempty"`
}

// AssertOrganisationRequired checks if the required fields are not zero-ed
func AssertOrganisationRequired(obj Organisation) error {
	return nil
}

// AssertOrganisationConstraints checks if the values respects the defined constraints
func AssertOrganisationConstraints(obj Organisation) error {
	return nil
}
