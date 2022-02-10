package models

type PipelineImpllinks struct {

	Runs Link `json:"runs,omitempty"`

	Self Link `json:"self,omitempty"`

	Queue Link `json:"queue,omitempty"`

	Actions Link `json:"actions,omitempty"`

	Class string `json:"_class,omitempty"`
}
