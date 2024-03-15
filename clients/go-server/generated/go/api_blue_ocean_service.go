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

import (
	"context"
	"net/http"
	"errors"
)

// BlueOceanAPIService is a service that implements the logic for the BlueOceanAPIServicer
// This service should implement the business logic for every endpoint for the BlueOceanAPI API.
// Include any external packages or services that will be required by this service.
type BlueOceanAPIService struct {
}

// NewBlueOceanAPIService creates a default api service
func NewBlueOceanAPIService() BlueOceanAPIServicer {
	return &BlueOceanAPIService{}
}

// DeletePipelineQueueItem - 
func (s *BlueOceanAPIService) DeletePipelineQueueItem(ctx context.Context, organization string, pipeline string, queue string) (ImplResponse, error) {
	// TODO - update DeletePipelineQueueItem with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("DeletePipelineQueueItem method not implemented")
}

// GetAuthenticatedUser - 
func (s *BlueOceanAPIService) GetAuthenticatedUser(ctx context.Context, organization string) (ImplResponse, error) {
	// TODO - update GetAuthenticatedUser with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, User{}) or use other options such as http.Ok ...
	// return Response(200, User{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetAuthenticatedUser method not implemented")
}

// GetClasses - 
func (s *BlueOceanAPIService) GetClasses(ctx context.Context, class string) (ImplResponse, error) {
	// TODO - update GetClasses with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetClasses method not implemented")
}

// GetJsonWebKey - 
func (s *BlueOceanAPIService) GetJsonWebKey(ctx context.Context, key int32) (ImplResponse, error) {
	// TODO - update GetJsonWebKey with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJsonWebKey method not implemented")
}

// GetJsonWebToken - 
func (s *BlueOceanAPIService) GetJsonWebToken(ctx context.Context, expiryTimeInMins int32, maxExpiryTimeInMins int32) (ImplResponse, error) {
	// TODO - update GetJsonWebToken with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJsonWebToken method not implemented")
}

// GetOrganisation - 
func (s *BlueOceanAPIService) GetOrganisation(ctx context.Context, organization string) (ImplResponse, error) {
	// TODO - update GetOrganisation with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, Organisation{}) or use other options such as http.Ok ...
	// return Response(200, Organisation{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetOrganisation method not implemented")
}

// GetOrganisations - 
func (s *BlueOceanAPIService) GetOrganisations(ctx context.Context) (ImplResponse, error) {
	// TODO - update GetOrganisations with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []Organisation{}) or use other options such as http.Ok ...
	// return Response(200, []Organisation{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetOrganisations method not implemented")
}

// GetPipeline - 
func (s *BlueOceanAPIService) GetPipeline(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update GetPipeline with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, Pipeline{}) or use other options such as http.Ok ...
	// return Response(200, Pipeline{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipeline method not implemented")
}

// GetPipelineActivities - 
func (s *BlueOceanAPIService) GetPipelineActivities(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update GetPipelineActivities with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []PipelineActivity{}) or use other options such as http.Ok ...
	// return Response(200, []PipelineActivity{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineActivities method not implemented")
}

// GetPipelineBranch - 
func (s *BlueOceanAPIService) GetPipelineBranch(ctx context.Context, organization string, pipeline string, branch string) (ImplResponse, error) {
	// TODO - update GetPipelineBranch with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, BranchImpl{}) or use other options such as http.Ok ...
	// return Response(200, BranchImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineBranch method not implemented")
}

// GetPipelineBranchRun - 
func (s *BlueOceanAPIService) GetPipelineBranchRun(ctx context.Context, organization string, pipeline string, branch string, run string) (ImplResponse, error) {
	// TODO - update GetPipelineBranchRun with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineRun{}) or use other options such as http.Ok ...
	// return Response(200, PipelineRun{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineBranchRun method not implemented")
}

// GetPipelineBranches - 
func (s *BlueOceanAPIService) GetPipelineBranches(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update GetPipelineBranches with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, MultibranchPipeline{}) or use other options such as http.Ok ...
	// return Response(200, MultibranchPipeline{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineBranches method not implemented")
}

// GetPipelineFolder - 
func (s *BlueOceanAPIService) GetPipelineFolder(ctx context.Context, organization string, folder string) (ImplResponse, error) {
	// TODO - update GetPipelineFolder with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineFolderImpl{}) or use other options such as http.Ok ...
	// return Response(200, PipelineFolderImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineFolder method not implemented")
}

// GetPipelineFolderPipeline - 
func (s *BlueOceanAPIService) GetPipelineFolderPipeline(ctx context.Context, organization string, pipeline string, folder string) (ImplResponse, error) {
	// TODO - update GetPipelineFolderPipeline with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineImpl{}) or use other options such as http.Ok ...
	// return Response(200, PipelineImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineFolderPipeline method not implemented")
}

// GetPipelineQueue - 
func (s *BlueOceanAPIService) GetPipelineQueue(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update GetPipelineQueue with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []QueueItemImpl{}) or use other options such as http.Ok ...
	// return Response(200, []QueueItemImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineQueue method not implemented")
}

// GetPipelineRun - 
func (s *BlueOceanAPIService) GetPipelineRun(ctx context.Context, organization string, pipeline string, run string) (ImplResponse, error) {
	// TODO - update GetPipelineRun with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineRun{}) or use other options such as http.Ok ...
	// return Response(200, PipelineRun{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRun method not implemented")
}

// GetPipelineRunLog - 
func (s *BlueOceanAPIService) GetPipelineRunLog(ctx context.Context, organization string, pipeline string, run string, start int32, download bool) (ImplResponse, error) {
	// TODO - update GetPipelineRunLog with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunLog method not implemented")
}

// GetPipelineRunNode - 
func (s *BlueOceanAPIService) GetPipelineRunNode(ctx context.Context, organization string, pipeline string, run string, node string) (ImplResponse, error) {
	// TODO - update GetPipelineRunNode with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineRunNode{}) or use other options such as http.Ok ...
	// return Response(200, PipelineRunNode{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunNode method not implemented")
}

// GetPipelineRunNodeStep - 
func (s *BlueOceanAPIService) GetPipelineRunNodeStep(ctx context.Context, organization string, pipeline string, run string, node string, step string) (ImplResponse, error) {
	// TODO - update GetPipelineRunNodeStep with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineStepImpl{}) or use other options such as http.Ok ...
	// return Response(200, PipelineStepImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunNodeStep method not implemented")
}

// GetPipelineRunNodeStepLog - 
func (s *BlueOceanAPIService) GetPipelineRunNodeStepLog(ctx context.Context, organization string, pipeline string, run string, node string, step string) (ImplResponse, error) {
	// TODO - update GetPipelineRunNodeStepLog with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunNodeStepLog method not implemented")
}

// GetPipelineRunNodeSteps - 
func (s *BlueOceanAPIService) GetPipelineRunNodeSteps(ctx context.Context, organization string, pipeline string, run string, node string) (ImplResponse, error) {
	// TODO - update GetPipelineRunNodeSteps with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []PipelineStepImpl{}) or use other options such as http.Ok ...
	// return Response(200, []PipelineStepImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunNodeSteps method not implemented")
}

// GetPipelineRunNodes - 
func (s *BlueOceanAPIService) GetPipelineRunNodes(ctx context.Context, organization string, pipeline string, run string) (ImplResponse, error) {
	// TODO - update GetPipelineRunNodes with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []PipelineRunNode{}) or use other options such as http.Ok ...
	// return Response(200, []PipelineRunNode{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRunNodes method not implemented")
}

// GetPipelineRuns - 
func (s *BlueOceanAPIService) GetPipelineRuns(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update GetPipelineRuns with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []PipelineRun{}) or use other options such as http.Ok ...
	// return Response(200, []PipelineRun{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelineRuns method not implemented")
}

// GetPipelines - 
func (s *BlueOceanAPIService) GetPipelines(ctx context.Context, organization string) (ImplResponse, error) {
	// TODO - update GetPipelines with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []Pipeline{}) or use other options such as http.Ok ...
	// return Response(200, []Pipeline{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetPipelines method not implemented")
}

// GetSCM - 
func (s *BlueOceanAPIService) GetSCM(ctx context.Context, organization string, scm string) (ImplResponse, error) {
	// TODO - update GetSCM with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, GithubScm{}) or use other options such as http.Ok ...
	// return Response(200, GithubScm{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetSCM method not implemented")
}

// GetSCMOrganisationRepositories - 
func (s *BlueOceanAPIService) GetSCMOrganisationRepositories(ctx context.Context, organization string, scm string, scmOrganisation string, credentialId string, pageSize int32, pageNumber int32) (ImplResponse, error) {
	// TODO - update GetSCMOrganisationRepositories with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []GithubOrganization{}) or use other options such as http.Ok ...
	// return Response(200, []GithubOrganization{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetSCMOrganisationRepositories method not implemented")
}

// GetSCMOrganisationRepository - 
func (s *BlueOceanAPIService) GetSCMOrganisationRepository(ctx context.Context, organization string, scm string, scmOrganisation string, repository string, credentialId string) (ImplResponse, error) {
	// TODO - update GetSCMOrganisationRepository with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []GithubOrganization{}) or use other options such as http.Ok ...
	// return Response(200, []GithubOrganization{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetSCMOrganisationRepository method not implemented")
}

// GetSCMOrganisations - 
func (s *BlueOceanAPIService) GetSCMOrganisations(ctx context.Context, organization string, scm string, credentialId string) (ImplResponse, error) {
	// TODO - update GetSCMOrganisations with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []GithubOrganization{}) or use other options such as http.Ok ...
	// return Response(200, []GithubOrganization{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetSCMOrganisations method not implemented")
}

// GetUser - 
func (s *BlueOceanAPIService) GetUser(ctx context.Context, organization string, user string) (ImplResponse, error) {
	// TODO - update GetUser with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, User{}) or use other options such as http.Ok ...
	// return Response(200, User{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetUser method not implemented")
}

// GetUserFavorites - 
func (s *BlueOceanAPIService) GetUserFavorites(ctx context.Context, user string) (ImplResponse, error) {
	// TODO - update GetUserFavorites with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, []FavoriteImpl{}) or use other options such as http.Ok ...
	// return Response(200, []FavoriteImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetUserFavorites method not implemented")
}

// GetUsers - 
func (s *BlueOceanAPIService) GetUsers(ctx context.Context, organization string) (ImplResponse, error) {
	// TODO - update GetUsers with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, User{}) or use other options such as http.Ok ...
	// return Response(200, User{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetUsers method not implemented")
}

// PostPipelineRun - 
func (s *BlueOceanAPIService) PostPipelineRun(ctx context.Context, organization string, pipeline string, run string) (ImplResponse, error) {
	// TODO - update PostPipelineRun with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, QueueItemImpl{}) or use other options such as http.Ok ...
	// return Response(200, QueueItemImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostPipelineRun method not implemented")
}

// PostPipelineRuns - 
func (s *BlueOceanAPIService) PostPipelineRuns(ctx context.Context, organization string, pipeline string) (ImplResponse, error) {
	// TODO - update PostPipelineRuns with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, QueueItemImpl{}) or use other options such as http.Ok ...
	// return Response(200, QueueItemImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostPipelineRuns method not implemented")
}

// PutPipelineFavorite - 
func (s *BlueOceanAPIService) PutPipelineFavorite(ctx context.Context, organization string, pipeline string, body bool) (ImplResponse, error) {
	// TODO - update PutPipelineFavorite with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, FavoriteImpl{}) or use other options such as http.Ok ...
	// return Response(200, FavoriteImpl{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PutPipelineFavorite method not implemented")
}

// PutPipelineRun - 
func (s *BlueOceanAPIService) PutPipelineRun(ctx context.Context, organization string, pipeline string, run string, blocking string, timeOutInSecs int32) (ImplResponse, error) {
	// TODO - update PutPipelineRun with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, PipelineRun{}) or use other options such as http.Ok ...
	// return Response(200, PipelineRun{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PutPipelineRun method not implemented")
}

// Search - 
func (s *BlueOceanAPIService) Search(ctx context.Context, q string) (ImplResponse, error) {
	// TODO - update Search with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("Search method not implemented")
}

// SearchClasses - 
func (s *BlueOceanAPIService) SearchClasses(ctx context.Context, q string) (ImplResponse, error) {
	// TODO - update SearchClasses with the required logic for this service method.
	// Add api_blue_ocean_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("SearchClasses method not implemented")
}
