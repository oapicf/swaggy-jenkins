package models

type GithubRepositorypermissions struct {

	Admin bool `json:"admin,omitempty"`

	Push bool `json:"push,omitempty"`

	Pull bool `json:"pull,omitempty"`

	Class string `json:"_class,omitempty"`
}
