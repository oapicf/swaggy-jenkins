package models

type PipelineRunImpllinks struct {

	Nodes Link `json:"nodes,omitempty"`

	Log Link `json:"log,omitempty"`

	Self Link `json:"self,omitempty"`

	Actions Link `json:"actions,omitempty"`

	Steps Link `json:"steps,omitempty"`

	Class string `json:"_class,omitempty"`
}
