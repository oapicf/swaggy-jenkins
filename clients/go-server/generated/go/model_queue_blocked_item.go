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

type QueueBlockedItem struct {

	Class string `json:"_class,omitempty"`

	Actions []CauseAction `json:"actions,omitempty"`

	Blocked bool `json:"blocked,omitempty"`

	Buildable bool `json:"buildable,omitempty"`

	Id int32 `json:"id,omitempty"`

	InQueueSince int32 `json:"inQueueSince,omitempty"`

	Params string `json:"params,omitempty"`

	Stuck bool `json:"stuck,omitempty"`

	Task FreeStyleProject `json:"task,omitempty"`

	Url string `json:"url,omitempty"`

	Why string `json:"why,omitempty"`

	BuildableStartMilliseconds int32 `json:"buildableStartMilliseconds,omitempty"`
}

// AssertQueueBlockedItemRequired checks if the required fields are not zero-ed
func AssertQueueBlockedItemRequired(obj QueueBlockedItem) error {
	for _, el := range obj.Actions {
		if err := AssertCauseActionRequired(el); err != nil {
			return err
		}
	}
	if err := AssertFreeStyleProjectRequired(obj.Task); err != nil {
		return err
	}
	return nil
}

// AssertRecurseQueueBlockedItemRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of QueueBlockedItem (e.g. [][]QueueBlockedItem), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseQueueBlockedItemRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aQueueBlockedItem, ok := obj.(QueueBlockedItem)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertQueueBlockedItemRequired(aQueueBlockedItem)
	})
}
