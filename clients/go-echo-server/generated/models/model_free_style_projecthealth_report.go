package models

type FreeStyleProjecthealthReport struct {

	Description string `json:"description,omitempty"`

	IconClassName string `json:"iconClassName,omitempty"`

	IconUrl string `json:"iconUrl,omitempty"`

	Score int32 `json:"score,omitempty"`

	Class string `json:"_class,omitempty"`
}
