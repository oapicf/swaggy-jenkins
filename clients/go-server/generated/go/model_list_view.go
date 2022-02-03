/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type ListView struct {

	Class string `json:"_class,omitempty"`

	Description string `json:"description,omitempty"`

	Jobs []FreeStyleProject `json:"jobs,omitempty"`

	Name string `json:"name,omitempty"`

	Url string `json:"url,omitempty"`
}

// AssertListViewRequired checks if the required fields are not zero-ed
func AssertListViewRequired(obj ListView) error {
	for _, el := range obj.Jobs {
		if err := AssertFreeStyleProjectRequired(el); err != nil {
			return err
		}
	}
	return nil
}

// AssertRecurseListViewRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of ListView (e.g. [][]ListView), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseListViewRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aListView, ok := obj.(ListView)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertListViewRequired(aListView)
	})
}
