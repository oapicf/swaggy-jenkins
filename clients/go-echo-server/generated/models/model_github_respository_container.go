package models

type GithubRespositoryContainer struct {

	Class string `json:"_class,omitempty"`

	Links GithubRespositoryContainerlinks `json:"_links,omitempty"`

	Repositories GithubRepositories `json:"repositories,omitempty"`
}
