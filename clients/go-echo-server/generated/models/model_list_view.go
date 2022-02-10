package models

type ListView struct {

	Class string `json:"_class,omitempty"`

	Description string `json:"description,omitempty"`

	Jobs []FreeStyleProject `json:"jobs,omitempty"`

	Name string `json:"name,omitempty"`

	Url string `json:"url,omitempty"`
}
