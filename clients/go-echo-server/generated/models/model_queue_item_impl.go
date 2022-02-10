package models

type QueueItemImpl struct {

	Class string `json:"_class,omitempty"`

	ExpectedBuildNumber int32 `json:"expectedBuildNumber,omitempty"`

	Id string `json:"id,omitempty"`

	Pipeline string `json:"pipeline,omitempty"`

	QueuedTime int32 `json:"queuedTime,omitempty"`
}
