/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type QueueItemImpl struct {

	Class string `json:"_class,omitempty"`

	ExpectedBuildNumber int32 `json:"expectedBuildNumber,omitempty"`

	Id string `json:"id,omitempty"`

	Pipeline string `json:"pipeline,omitempty"`

	QueuedTime int32 `json:"queuedTime,omitempty"`
}

// AssertQueueItemImplRequired checks if the required fields are not zero-ed
func AssertQueueItemImplRequired(obj QueueItemImpl) error {
	return nil
}

// AssertRecurseQueueItemImplRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of QueueItemImpl (e.g. [][]QueueItemImpl), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseQueueItemImplRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aQueueItemImpl, ok := obj.(QueueItemImpl)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertQueueItemImplRequired(aQueueItemImpl)
	})
}
