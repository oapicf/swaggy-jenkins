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

// RemoteAccessAPIService is a service that implements the logic for the RemoteAccessAPIServicer
// This service should implement the business logic for every endpoint for the RemoteAccessAPI API.
// Include any external packages or services that will be required by this service.
type RemoteAccessAPIService struct {
}

// NewRemoteAccessAPIService creates a default api service
func NewRemoteAccessAPIService() RemoteAccessAPIServicer {
	return &RemoteAccessAPIService{}
}

// GetComputer - 
func (s *RemoteAccessAPIService) GetComputer(ctx context.Context, depth int32) (ImplResponse, error) {
	// TODO - update GetComputer with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, ComputerSet{}) or use other options such as http.Ok ...
	// return Response(200, ComputerSet{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetComputer method not implemented")
}

// GetJenkins - 
func (s *RemoteAccessAPIService) GetJenkins(ctx context.Context) (ImplResponse, error) {
	// TODO - update GetJenkins with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, Hudson{}) or use other options such as http.Ok ...
	// return Response(200, Hudson{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJenkins method not implemented")
}

// GetJob - 
func (s *RemoteAccessAPIService) GetJob(ctx context.Context, name string) (ImplResponse, error) {
	// TODO - update GetJob with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, FreeStyleProject{}) or use other options such as http.Ok ...
	// return Response(200, FreeStyleProject{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJob method not implemented")
}

// GetJobConfig - 
func (s *RemoteAccessAPIService) GetJobConfig(ctx context.Context, name string) (ImplResponse, error) {
	// TODO - update GetJobConfig with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJobConfig method not implemented")
}

// GetJobLastBuild - 
func (s *RemoteAccessAPIService) GetJobLastBuild(ctx context.Context, name string) (ImplResponse, error) {
	// TODO - update GetJobLastBuild with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, FreeStyleBuild{}) or use other options such as http.Ok ...
	// return Response(200, FreeStyleBuild{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJobLastBuild method not implemented")
}

// GetJobProgressiveText - 
func (s *RemoteAccessAPIService) GetJobProgressiveText(ctx context.Context, name string, number string, start string) (ImplResponse, error) {
	// TODO - update GetJobProgressiveText with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetJobProgressiveText method not implemented")
}

// GetQueue - 
func (s *RemoteAccessAPIService) GetQueue(ctx context.Context) (ImplResponse, error) {
	// TODO - update GetQueue with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, Queue{}) or use other options such as http.Ok ...
	// return Response(200, Queue{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetQueue method not implemented")
}

// GetQueueItem - 
func (s *RemoteAccessAPIService) GetQueueItem(ctx context.Context, number string) (ImplResponse, error) {
	// TODO - update GetQueueItem with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, Queue{}) or use other options such as http.Ok ...
	// return Response(200, Queue{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetQueueItem method not implemented")
}

// GetView - 
func (s *RemoteAccessAPIService) GetView(ctx context.Context, name string) (ImplResponse, error) {
	// TODO - update GetView with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, ListView{}) or use other options such as http.Ok ...
	// return Response(200, ListView{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetView method not implemented")
}

// GetViewConfig - 
func (s *RemoteAccessAPIService) GetViewConfig(ctx context.Context, name string) (ImplResponse, error) {
	// TODO - update GetViewConfig with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, string{}) or use other options such as http.Ok ...
	// return Response(200, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("GetViewConfig method not implemented")
}

// HeadJenkins - 
func (s *RemoteAccessAPIService) HeadJenkins(ctx context.Context) (ImplResponse, error) {
	// TODO - update HeadJenkins with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("HeadJenkins method not implemented")
}

// PostCreateItem - 
func (s *RemoteAccessAPIService) PostCreateItem(ctx context.Context, name string, from string, mode string, jenkinsCrumb string, contentType string, body string) (ImplResponse, error) {
	// TODO - update PostCreateItem with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(400, string{}) or use other options such as http.Ok ...
	// return Response(400, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostCreateItem method not implemented")
}

// PostCreateView - 
func (s *RemoteAccessAPIService) PostCreateView(ctx context.Context, name string, jenkinsCrumb string, contentType string, body string) (ImplResponse, error) {
	// TODO - update PostCreateView with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(400, string{}) or use other options such as http.Ok ...
	// return Response(400, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostCreateView method not implemented")
}

// PostJobBuild - 
func (s *RemoteAccessAPIService) PostJobBuild(ctx context.Context, name string, json string, token string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobBuild with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(201, {}) or use other options such as http.Ok ...
	// return Response(201, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobBuild method not implemented")
}

// PostJobConfig - 
func (s *RemoteAccessAPIService) PostJobConfig(ctx context.Context, name string, body string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobConfig with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(400, string{}) or use other options such as http.Ok ...
	// return Response(400, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobConfig method not implemented")
}

// PostJobDelete - 
func (s *RemoteAccessAPIService) PostJobDelete(ctx context.Context, name string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobDelete with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobDelete method not implemented")
}

// PostJobDisable - 
func (s *RemoteAccessAPIService) PostJobDisable(ctx context.Context, name string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobDisable with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobDisable method not implemented")
}

// PostJobEnable - 
func (s *RemoteAccessAPIService) PostJobEnable(ctx context.Context, name string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobEnable with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobEnable method not implemented")
}

// PostJobLastBuildStop - 
func (s *RemoteAccessAPIService) PostJobLastBuildStop(ctx context.Context, name string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostJobLastBuildStop with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostJobLastBuildStop method not implemented")
}

// PostViewConfig - 
func (s *RemoteAccessAPIService) PostViewConfig(ctx context.Context, name string, body string, jenkinsCrumb string) (ImplResponse, error) {
	// TODO - update PostViewConfig with the required logic for this service method.
	// Add api_remote_access_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	// TODO: Uncomment the next line to return response Response(200, {}) or use other options such as http.Ok ...
	// return Response(200, nil),nil

	// TODO: Uncomment the next line to return response Response(400, string{}) or use other options such as http.Ok ...
	// return Response(400, string{}), nil

	// TODO: Uncomment the next line to return response Response(401, {}) or use other options such as http.Ok ...
	// return Response(401, nil),nil

	// TODO: Uncomment the next line to return response Response(403, {}) or use other options such as http.Ok ...
	// return Response(403, nil),nil

	// TODO: Uncomment the next line to return response Response(404, {}) or use other options such as http.Ok ...
	// return Response(404, nil),nil

	return Response(http.StatusNotImplemented, nil), errors.New("PostViewConfig method not implemented")
}
