package models

type PipelineImpllinks struct {

	Self Link `json:"self,omitempty"`

	Actions Link `json:"actions,omitempty"`

	Runs Link `json:"runs,omitempty"`

	Queue Link `json:"queue,omitempty"`

	Class string `json:"_class,omitempty"`
}
