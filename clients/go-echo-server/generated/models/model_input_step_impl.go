package models

type InputStepImpl struct {

	Class string `json:"_class,omitempty"`

	Links InputStepImpllinks `json:"_links,omitempty"`

	Id string `json:"id,omitempty"`

	Message string `json:"message,omitempty"`

	Ok string `json:"ok,omitempty"`

	Parameters []StringParameterDefinition `json:"parameters,omitempty"`

	Submitter string `json:"submitter,omitempty"`
}
