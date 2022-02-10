package models

type GenericResource struct {

	Class string `json:"_class,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	DurationInMillis int32 `json:"durationInMillis,omitempty"`

	Id string `json:"id,omitempty"`

	Result string `json:"result,omitempty"`

	StartTime string `json:"startTime,omitempty"`
}
