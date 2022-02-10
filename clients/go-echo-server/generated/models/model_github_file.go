package models

type GithubFile struct {

	Content GithubContent `json:"content,omitempty"`

	Class string `json:"_class,omitempty"`
}
