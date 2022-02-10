package models

type DefaultCrumbIssuer struct {

	Class string `json:"_class,omitempty"`

	Crumb string `json:"crumb,omitempty"`

	CrumbRequestField string `json:"crumbRequestField,omitempty"`
}
