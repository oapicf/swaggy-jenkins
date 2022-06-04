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

type QueueLeftItem struct {

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

	Cancelled bool `json:"cancelled,omitempty"`

	Executable FreeStyleBuild `json:"executable,omitempty"`
}

// AssertQueueLeftItemRequired checks if the required fields are not zero-ed
func AssertQueueLeftItemRequired(obj QueueLeftItem) error {
	for _, el := range obj.Actions {
		if err := AssertCauseActionRequired(el); err != nil {
			return err
		}
	}
	if err := AssertFreeStyleProjectRequired(obj.Task); err != nil {
		return err
	}
	if err := AssertFreeStyleBuildRequired(obj.Executable); err != nil {
		return err
	}
	return nil
}

// AssertRecurseQueueLeftItemRequired recursively checks if required fields are not zero-ed in a nested slice.
// Accepts only nested slice of QueueLeftItem (e.g. [][]QueueLeftItem), otherwise ErrTypeAssertionError is thrown.
func AssertRecurseQueueLeftItemRequired(objSlice interface{}) error {
	return AssertRecurseInterfaceRequired(objSlice, func(obj interface{}) error {
		aQueueLeftItem, ok := obj.(QueueLeftItem)
		if !ok {
			return ErrTypeAssertionError
		}
		return AssertQueueLeftItemRequired(aQueueLeftItem)
	})
}
