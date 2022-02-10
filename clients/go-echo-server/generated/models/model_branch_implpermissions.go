package models

type BranchImplpermissions struct {

	Create bool `json:"create,omitempty"`

	Read bool `json:"read,omitempty"`

	Start bool `json:"start,omitempty"`

	Stop bool `json:"stop,omitempty"`

	Class string `json:"_class,omitempty"`
}
