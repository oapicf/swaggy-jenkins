package models

type GithubOrganizationlinks struct {

	Repositories Link `json:"repositories,omitempty"`

	Self Link `json:"self,omitempty"`

	Class string `json:"_class,omitempty"`
}
