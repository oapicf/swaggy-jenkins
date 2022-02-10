package models

type User struct {

	Class string `json:"_class,omitempty"`

	Id string `json:"id,omitempty"`

	FullName string `json:"fullName,omitempty"`

	Email string `json:"email,omitempty"`

	Name string `json:"name,omitempty"`
}
