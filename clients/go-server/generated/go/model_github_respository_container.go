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




type GithubRespositoryContainer struct {

	Class string `json:"_class,omitempty"`

	Links GithubRespositoryContainerlinks `json:"_links,omitempty"`

	Repositories GithubRepositories `json:"repositories,omitempty"`
}

// AssertGithubRespositoryContainerRequired checks if the required fields are not zero-ed
func AssertGithubRespositoryContainerRequired(obj GithubRespositoryContainer) error {
	if err := AssertGithubRespositoryContainerlinksRequired(obj.Links); err != nil {
		return err
	}
	if err := AssertGithubRepositoriesRequired(obj.Repositories); err != nil {
		return err
	}
	return nil
}

// AssertGithubRespositoryContainerConstraints checks if the values respects the defined constraints
func AssertGithubRespositoryContainerConstraints(obj GithubRespositoryContainer) error {
	return nil
}
