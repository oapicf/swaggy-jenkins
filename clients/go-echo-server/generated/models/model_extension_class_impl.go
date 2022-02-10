package models

type ExtensionClassImpl struct {

	Class string `json:"_class,omitempty"`

	Links ExtensionClassImpllinks `json:"_links,omitempty"`

	Classes []string `json:"classes,omitempty"`
}
