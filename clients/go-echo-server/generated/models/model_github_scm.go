package models

type GithubScm struct {

	Class string `json:"_class,omitempty"`

	Links GithubScmlinks `json:"_links,omitempty"`

	CredentialId string `json:"credentialId,omitempty"`

	Id string `json:"id,omitempty"`

	Uri string `json:"uri,omitempty"`
}
