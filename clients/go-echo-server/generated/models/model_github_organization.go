package models

type GithubOrganization struct {

	Class string `json:"_class,omitempty"`

	Links GithubOrganizationlinks `json:"_links,omitempty"`

	JenkinsOrganizationPipeline bool `json:"jenkinsOrganizationPipeline,omitempty"`

	Name string `json:"name,omitempty"`
}
