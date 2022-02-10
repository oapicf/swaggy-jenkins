package models

type CauseAction struct {

	Class string `json:"_class,omitempty"`

	Causes []CauseUserIdCause `json:"causes,omitempty"`
}
