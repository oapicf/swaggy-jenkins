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




type DefaultCrumbIssuer struct {

	Class string `json:"_class,omitempty"`

	Crumb string `json:"crumb,omitempty"`

	CrumbRequestField string `json:"crumbRequestField,omitempty"`
}

// AssertDefaultCrumbIssuerRequired checks if the required fields are not zero-ed
func AssertDefaultCrumbIssuerRequired(obj DefaultCrumbIssuer) error {
	return nil
}

// AssertDefaultCrumbIssuerConstraints checks if the values respects the defined constraints
func AssertDefaultCrumbIssuerConstraints(obj DefaultCrumbIssuer) error {
	return nil
}
