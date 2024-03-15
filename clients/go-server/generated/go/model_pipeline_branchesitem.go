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




type PipelineBranchesitem struct {

	DisplayName string `json:"displayName,omitempty"`

	EstimatedDurationInMillis int32 `json:"estimatedDurationInMillis,omitempty"`

	Name string `json:"name,omitempty"`

	WeatherScore int32 `json:"weatherScore,omitempty"`

	LatestRun PipelineBranchesitemlatestRun `json:"latestRun,omitempty"`

	Organization string `json:"organization,omitempty"`

	PullRequest PipelineBranchesitempullRequest `json:"pullRequest,omitempty"`

	TotalNumberOfPullRequests int32 `json:"totalNumberOfPullRequests,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertPipelineBranchesitemRequired checks if the required fields are not zero-ed
func AssertPipelineBranchesitemRequired(obj PipelineBranchesitem) error {
	if err := AssertPipelineBranchesitemlatestRunRequired(obj.LatestRun); err != nil {
		return err
	}
	if err := AssertPipelineBranchesitempullRequestRequired(obj.PullRequest); err != nil {
		return err
	}
	return nil
}

// AssertPipelineBranchesitemConstraints checks if the values respects the defined constraints
func AssertPipelineBranchesitemConstraints(obj PipelineBranchesitem) error {
	return nil
}
