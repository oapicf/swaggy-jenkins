/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

type GithubRepositories struct {

	Class string `json:"_class,omitempty"`

	Links GithubRepositorieslinks `json:"_links,omitempty"`

	Items []GithubRepository `json:"items,omitempty"`

	LastPage int32 `json:"lastPage,omitempty"`

	NextPage int32 `json:"nextPage,omitempty"`

	PageSize int32 `json:"pageSize,omitempty"`
}
