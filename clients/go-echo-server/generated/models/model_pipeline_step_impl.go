package models

type PipelineStepImpl struct {

	Class string `json:"_class,omitempty"`

	Links PipelineStepImpllinks `json:"_links,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	DurationInMillis int32 `json:"durationInMillis,omitempty"`

	Id string `json:"id,omitempty"`

	Input InputStepImpl `json:"input,omitempty"`

	Result string `json:"result,omitempty"`

	StartTime string `json:"startTime,omitempty"`

	State string `json:"state,omitempty"`
}
