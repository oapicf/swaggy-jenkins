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




type ExtensionClassImpl struct {

	Class string `json:"_class,omitempty"`

	Links ExtensionClassImpllinks `json:"_links,omitempty"`

	Classes []string `json:"classes,omitempty"`
}

// AssertExtensionClassImplRequired checks if the required fields are not zero-ed
func AssertExtensionClassImplRequired(obj ExtensionClassImpl) error {
	if err := AssertExtensionClassImpllinksRequired(obj.Links); err != nil {
		return err
	}
	return nil
}

// AssertExtensionClassImplConstraints checks if the values respects the defined constraints
func AssertExtensionClassImplConstraints(obj ExtensionClassImpl) error {
	return nil
}
