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




type Queue struct {

	Class string `json:"_class,omitempty"`

	Items []QueueBlockedItem `json:"items,omitempty"`
}

// AssertQueueRequired checks if the required fields are not zero-ed
func AssertQueueRequired(obj Queue) error {
	for _, el := range obj.Items {
		if err := AssertQueueBlockedItemRequired(el); err != nil {
			return err
		}
	}
	return nil
}

// AssertQueueConstraints checks if the values respects the defined constraints
func AssertQueueConstraints(obj Queue) error {
	return nil
}
