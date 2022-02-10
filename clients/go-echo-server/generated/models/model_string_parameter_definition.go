package models

type StringParameterDefinition struct {

	Class string `json:"_class,omitempty"`

	DefaultParameterValue StringParameterValue `json:"defaultParameterValue,omitempty"`

	Description string `json:"description,omitempty"`

	Name string `json:"name,omitempty"`

	Type string `json:"type,omitempty"`
}
