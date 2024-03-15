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




type PipelineRunImpl struct {

	Class string `json:"_class,omitempty"`

	Links PipelineRunImpllinks `json:"_links,omitempty"`

	DurationInMillis int32 `json:"durationInMillis,omitempty"`

	EnQueueTime string `json:"enQueueTime,omitempty"`

	EndTime string `json:"endTime,omitempty"`

	EstimatedDurationInMillis int32 `json:"estimatedDurationInMillis,omitempty"`

	Id string `json:"id,omitempty"`

	Organization string `json:"organization,omitempty"`

	Pipeline string `json:"pipeline,omitempty"`

	Result string `json:"result,omitempty"`

	RunSummary string `json:"runSummary,omitempty"`

	StartTime string `json:"startTime,omitempty"`

	State string `json:"state,omitempty"`

	Type string `json:"type,omitempty"`

	CommitId string `json:"commitId,omitempty"`
}

// AssertPipelineRunImplRequired checks if the required fields are not zero-ed
func AssertPipelineRunImplRequired(obj PipelineRunImpl) error {
	if err := AssertPipelineRunImpllinksRequired(obj.Links); err != nil {
		return err
	}
	return nil
}

// AssertPipelineRunImplConstraints checks if the values respects the defined constraints
func AssertPipelineRunImplConstraints(obj PipelineRunImpl) error {
	return nil
}
