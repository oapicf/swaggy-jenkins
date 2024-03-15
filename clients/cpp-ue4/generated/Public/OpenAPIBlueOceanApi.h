/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#pragma once

#include "CoreMinimal.h"
#include "OpenAPIBaseModel.h"

namespace OpenAPI
{

class OPENAPI_API OpenAPIBlueOceanApi
{
public:
	OpenAPIBlueOceanApi();
	~OpenAPIBlueOceanApi();

	/* Sets the URL Endpoint.
	* Note: several fallback endpoints can be configured in request retry policies, see Request::SetShouldRetry */
	void SetURL(const FString& Url);

	/* Adds global header params to all requests */
	void AddHeaderParam(const FString& Key, const FString& Value);
	void ClearHeaderParams();

	/* Sets the retry manager to the user-defined retry manager. User must manage the lifetime of the retry manager.
	* If no retry manager is specified and a request needs retries, a default retry manager will be used.
	* See also: Request::SetShouldRetry */
	void SetHttpRetryManager(FHttpRetrySystem::FManager& RetryManager);
	FHttpRetrySystem::FManager& GetHttpRetryManager();

	class DeletePipelineQueueItemRequest;
	class DeletePipelineQueueItemResponse;
	class GetAuthenticatedUserRequest;
	class GetAuthenticatedUserResponse;
	class GetClassesRequest;
	class GetClassesResponse;
	class GetJsonWebKeyRequest;
	class GetJsonWebKeyResponse;
	class GetJsonWebTokenRequest;
	class GetJsonWebTokenResponse;
	class GetOrganisationRequest;
	class GetOrganisationResponse;
	class GetOrganisationsRequest;
	class GetOrganisationsResponse;
	class GetPipelineRequest;
	class GetPipelineResponse;
	class GetPipelineActivitiesRequest;
	class GetPipelineActivitiesResponse;
	class GetPipelineBranchRequest;
	class GetPipelineBranchResponse;
	class GetPipelineBranchRunRequest;
	class GetPipelineBranchRunResponse;
	class GetPipelineBranchesRequest;
	class GetPipelineBranchesResponse;
	class GetPipelineFolderRequest;
	class GetPipelineFolderResponse;
	class GetPipelineFolderPipelineRequest;
	class GetPipelineFolderPipelineResponse;
	class GetPipelineQueueRequest;
	class GetPipelineQueueResponse;
	class GetPipelineRunRequest;
	class GetPipelineRunResponse;
	class GetPipelineRunLogRequest;
	class GetPipelineRunLogResponse;
	class GetPipelineRunNodeRequest;
	class GetPipelineRunNodeResponse;
	class GetPipelineRunNodeStepRequest;
	class GetPipelineRunNodeStepResponse;
	class GetPipelineRunNodeStepLogRequest;
	class GetPipelineRunNodeStepLogResponse;
	class GetPipelineRunNodeStepsRequest;
	class GetPipelineRunNodeStepsResponse;
	class GetPipelineRunNodesRequest;
	class GetPipelineRunNodesResponse;
	class GetPipelineRunsRequest;
	class GetPipelineRunsResponse;
	class GetPipelinesRequest;
	class GetPipelinesResponse;
	class GetSCMRequest;
	class GetSCMResponse;
	class GetSCMOrganisationRepositoriesRequest;
	class GetSCMOrganisationRepositoriesResponse;
	class GetSCMOrganisationRepositoryRequest;
	class GetSCMOrganisationRepositoryResponse;
	class GetSCMOrganisationsRequest;
	class GetSCMOrganisationsResponse;
	class GetUserRequest;
	class GetUserResponse;
	class GetUserFavoritesRequest;
	class GetUserFavoritesResponse;
	class GetUsersRequest;
	class GetUsersResponse;
	class PostPipelineRunRequest;
	class PostPipelineRunResponse;
	class PostPipelineRunsRequest;
	class PostPipelineRunsResponse;
	class PutPipelineFavoriteRequest;
	class PutPipelineFavoriteResponse;
	class PutPipelineRunRequest;
	class PutPipelineRunResponse;
	class SearchRequest;
	class SearchResponse;
	class SearchClassesRequest;
	class SearchClassesResponse;
	
    DECLARE_DELEGATE_OneParam(FDeletePipelineQueueItemDelegate, const DeletePipelineQueueItemResponse&);
    DECLARE_DELEGATE_OneParam(FGetAuthenticatedUserDelegate, const GetAuthenticatedUserResponse&);
    DECLARE_DELEGATE_OneParam(FGetClassesDelegate, const GetClassesResponse&);
    DECLARE_DELEGATE_OneParam(FGetJsonWebKeyDelegate, const GetJsonWebKeyResponse&);
    DECLARE_DELEGATE_OneParam(FGetJsonWebTokenDelegate, const GetJsonWebTokenResponse&);
    DECLARE_DELEGATE_OneParam(FGetOrganisationDelegate, const GetOrganisationResponse&);
    DECLARE_DELEGATE_OneParam(FGetOrganisationsDelegate, const GetOrganisationsResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineDelegate, const GetPipelineResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineActivitiesDelegate, const GetPipelineActivitiesResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineBranchDelegate, const GetPipelineBranchResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineBranchRunDelegate, const GetPipelineBranchRunResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineBranchesDelegate, const GetPipelineBranchesResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineFolderDelegate, const GetPipelineFolderResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineFolderPipelineDelegate, const GetPipelineFolderPipelineResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineQueueDelegate, const GetPipelineQueueResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunDelegate, const GetPipelineRunResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunLogDelegate, const GetPipelineRunLogResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunNodeDelegate, const GetPipelineRunNodeResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunNodeStepDelegate, const GetPipelineRunNodeStepResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunNodeStepLogDelegate, const GetPipelineRunNodeStepLogResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunNodeStepsDelegate, const GetPipelineRunNodeStepsResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunNodesDelegate, const GetPipelineRunNodesResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelineRunsDelegate, const GetPipelineRunsResponse&);
    DECLARE_DELEGATE_OneParam(FGetPipelinesDelegate, const GetPipelinesResponse&);
    DECLARE_DELEGATE_OneParam(FGetSCMDelegate, const GetSCMResponse&);
    DECLARE_DELEGATE_OneParam(FGetSCMOrganisationRepositoriesDelegate, const GetSCMOrganisationRepositoriesResponse&);
    DECLARE_DELEGATE_OneParam(FGetSCMOrganisationRepositoryDelegate, const GetSCMOrganisationRepositoryResponse&);
    DECLARE_DELEGATE_OneParam(FGetSCMOrganisationsDelegate, const GetSCMOrganisationsResponse&);
    DECLARE_DELEGATE_OneParam(FGetUserDelegate, const GetUserResponse&);
    DECLARE_DELEGATE_OneParam(FGetUserFavoritesDelegate, const GetUserFavoritesResponse&);
    DECLARE_DELEGATE_OneParam(FGetUsersDelegate, const GetUsersResponse&);
    DECLARE_DELEGATE_OneParam(FPostPipelineRunDelegate, const PostPipelineRunResponse&);
    DECLARE_DELEGATE_OneParam(FPostPipelineRunsDelegate, const PostPipelineRunsResponse&);
    DECLARE_DELEGATE_OneParam(FPutPipelineFavoriteDelegate, const PutPipelineFavoriteResponse&);
    DECLARE_DELEGATE_OneParam(FPutPipelineRunDelegate, const PutPipelineRunResponse&);
    DECLARE_DELEGATE_OneParam(FSearchDelegate, const SearchResponse&);
    DECLARE_DELEGATE_OneParam(FSearchClassesDelegate, const SearchClassesResponse&);
    
    FHttpRequestPtr DeletePipelineQueueItem(const DeletePipelineQueueItemRequest& Request, const FDeletePipelineQueueItemDelegate& Delegate = FDeletePipelineQueueItemDelegate()) const;
    FHttpRequestPtr GetAuthenticatedUser(const GetAuthenticatedUserRequest& Request, const FGetAuthenticatedUserDelegate& Delegate = FGetAuthenticatedUserDelegate()) const;
    FHttpRequestPtr GetClasses(const GetClassesRequest& Request, const FGetClassesDelegate& Delegate = FGetClassesDelegate()) const;
    FHttpRequestPtr GetJsonWebKey(const GetJsonWebKeyRequest& Request, const FGetJsonWebKeyDelegate& Delegate = FGetJsonWebKeyDelegate()) const;
    FHttpRequestPtr GetJsonWebToken(const GetJsonWebTokenRequest& Request, const FGetJsonWebTokenDelegate& Delegate = FGetJsonWebTokenDelegate()) const;
    FHttpRequestPtr GetOrganisation(const GetOrganisationRequest& Request, const FGetOrganisationDelegate& Delegate = FGetOrganisationDelegate()) const;
    FHttpRequestPtr GetOrganisations(const GetOrganisationsRequest& Request, const FGetOrganisationsDelegate& Delegate = FGetOrganisationsDelegate()) const;
    FHttpRequestPtr GetPipeline(const GetPipelineRequest& Request, const FGetPipelineDelegate& Delegate = FGetPipelineDelegate()) const;
    FHttpRequestPtr GetPipelineActivities(const GetPipelineActivitiesRequest& Request, const FGetPipelineActivitiesDelegate& Delegate = FGetPipelineActivitiesDelegate()) const;
    FHttpRequestPtr GetPipelineBranch(const GetPipelineBranchRequest& Request, const FGetPipelineBranchDelegate& Delegate = FGetPipelineBranchDelegate()) const;
    FHttpRequestPtr GetPipelineBranchRun(const GetPipelineBranchRunRequest& Request, const FGetPipelineBranchRunDelegate& Delegate = FGetPipelineBranchRunDelegate()) const;
    FHttpRequestPtr GetPipelineBranches(const GetPipelineBranchesRequest& Request, const FGetPipelineBranchesDelegate& Delegate = FGetPipelineBranchesDelegate()) const;
    FHttpRequestPtr GetPipelineFolder(const GetPipelineFolderRequest& Request, const FGetPipelineFolderDelegate& Delegate = FGetPipelineFolderDelegate()) const;
    FHttpRequestPtr GetPipelineFolderPipeline(const GetPipelineFolderPipelineRequest& Request, const FGetPipelineFolderPipelineDelegate& Delegate = FGetPipelineFolderPipelineDelegate()) const;
    FHttpRequestPtr GetPipelineQueue(const GetPipelineQueueRequest& Request, const FGetPipelineQueueDelegate& Delegate = FGetPipelineQueueDelegate()) const;
    FHttpRequestPtr GetPipelineRun(const GetPipelineRunRequest& Request, const FGetPipelineRunDelegate& Delegate = FGetPipelineRunDelegate()) const;
    FHttpRequestPtr GetPipelineRunLog(const GetPipelineRunLogRequest& Request, const FGetPipelineRunLogDelegate& Delegate = FGetPipelineRunLogDelegate()) const;
    FHttpRequestPtr GetPipelineRunNode(const GetPipelineRunNodeRequest& Request, const FGetPipelineRunNodeDelegate& Delegate = FGetPipelineRunNodeDelegate()) const;
    FHttpRequestPtr GetPipelineRunNodeStep(const GetPipelineRunNodeStepRequest& Request, const FGetPipelineRunNodeStepDelegate& Delegate = FGetPipelineRunNodeStepDelegate()) const;
    FHttpRequestPtr GetPipelineRunNodeStepLog(const GetPipelineRunNodeStepLogRequest& Request, const FGetPipelineRunNodeStepLogDelegate& Delegate = FGetPipelineRunNodeStepLogDelegate()) const;
    FHttpRequestPtr GetPipelineRunNodeSteps(const GetPipelineRunNodeStepsRequest& Request, const FGetPipelineRunNodeStepsDelegate& Delegate = FGetPipelineRunNodeStepsDelegate()) const;
    FHttpRequestPtr GetPipelineRunNodes(const GetPipelineRunNodesRequest& Request, const FGetPipelineRunNodesDelegate& Delegate = FGetPipelineRunNodesDelegate()) const;
    FHttpRequestPtr GetPipelineRuns(const GetPipelineRunsRequest& Request, const FGetPipelineRunsDelegate& Delegate = FGetPipelineRunsDelegate()) const;
    FHttpRequestPtr GetPipelines(const GetPipelinesRequest& Request, const FGetPipelinesDelegate& Delegate = FGetPipelinesDelegate()) const;
    FHttpRequestPtr GetSCM(const GetSCMRequest& Request, const FGetSCMDelegate& Delegate = FGetSCMDelegate()) const;
    FHttpRequestPtr GetSCMOrganisationRepositories(const GetSCMOrganisationRepositoriesRequest& Request, const FGetSCMOrganisationRepositoriesDelegate& Delegate = FGetSCMOrganisationRepositoriesDelegate()) const;
    FHttpRequestPtr GetSCMOrganisationRepository(const GetSCMOrganisationRepositoryRequest& Request, const FGetSCMOrganisationRepositoryDelegate& Delegate = FGetSCMOrganisationRepositoryDelegate()) const;
    FHttpRequestPtr GetSCMOrganisations(const GetSCMOrganisationsRequest& Request, const FGetSCMOrganisationsDelegate& Delegate = FGetSCMOrganisationsDelegate()) const;
    FHttpRequestPtr GetUser(const GetUserRequest& Request, const FGetUserDelegate& Delegate = FGetUserDelegate()) const;
    FHttpRequestPtr GetUserFavorites(const GetUserFavoritesRequest& Request, const FGetUserFavoritesDelegate& Delegate = FGetUserFavoritesDelegate()) const;
    FHttpRequestPtr GetUsers(const GetUsersRequest& Request, const FGetUsersDelegate& Delegate = FGetUsersDelegate()) const;
    FHttpRequestPtr PostPipelineRun(const PostPipelineRunRequest& Request, const FPostPipelineRunDelegate& Delegate = FPostPipelineRunDelegate()) const;
    FHttpRequestPtr PostPipelineRuns(const PostPipelineRunsRequest& Request, const FPostPipelineRunsDelegate& Delegate = FPostPipelineRunsDelegate()) const;
    FHttpRequestPtr PutPipelineFavorite(const PutPipelineFavoriteRequest& Request, const FPutPipelineFavoriteDelegate& Delegate = FPutPipelineFavoriteDelegate()) const;
    FHttpRequestPtr PutPipelineRun(const PutPipelineRunRequest& Request, const FPutPipelineRunDelegate& Delegate = FPutPipelineRunDelegate()) const;
    FHttpRequestPtr Search(const SearchRequest& Request, const FSearchDelegate& Delegate = FSearchDelegate()) const;
    FHttpRequestPtr SearchClasses(const SearchClassesRequest& Request, const FSearchClassesDelegate& Delegate = FSearchClassesDelegate()) const;
    
private:
    void OnDeletePipelineQueueItemResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FDeletePipelineQueueItemDelegate Delegate) const;
    void OnGetAuthenticatedUserResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetAuthenticatedUserDelegate Delegate) const;
    void OnGetClassesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetClassesDelegate Delegate) const;
    void OnGetJsonWebKeyResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetJsonWebKeyDelegate Delegate) const;
    void OnGetJsonWebTokenResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetJsonWebTokenDelegate Delegate) const;
    void OnGetOrganisationResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetOrganisationDelegate Delegate) const;
    void OnGetOrganisationsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetOrganisationsDelegate Delegate) const;
    void OnGetPipelineResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineDelegate Delegate) const;
    void OnGetPipelineActivitiesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineActivitiesDelegate Delegate) const;
    void OnGetPipelineBranchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineBranchDelegate Delegate) const;
    void OnGetPipelineBranchRunResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineBranchRunDelegate Delegate) const;
    void OnGetPipelineBranchesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineBranchesDelegate Delegate) const;
    void OnGetPipelineFolderResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineFolderDelegate Delegate) const;
    void OnGetPipelineFolderPipelineResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineFolderPipelineDelegate Delegate) const;
    void OnGetPipelineQueueResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineQueueDelegate Delegate) const;
    void OnGetPipelineRunResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunDelegate Delegate) const;
    void OnGetPipelineRunLogResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunLogDelegate Delegate) const;
    void OnGetPipelineRunNodeResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunNodeDelegate Delegate) const;
    void OnGetPipelineRunNodeStepResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunNodeStepDelegate Delegate) const;
    void OnGetPipelineRunNodeStepLogResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunNodeStepLogDelegate Delegate) const;
    void OnGetPipelineRunNodeStepsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunNodeStepsDelegate Delegate) const;
    void OnGetPipelineRunNodesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunNodesDelegate Delegate) const;
    void OnGetPipelineRunsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelineRunsDelegate Delegate) const;
    void OnGetPipelinesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetPipelinesDelegate Delegate) const;
    void OnGetSCMResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetSCMDelegate Delegate) const;
    void OnGetSCMOrganisationRepositoriesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetSCMOrganisationRepositoriesDelegate Delegate) const;
    void OnGetSCMOrganisationRepositoryResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetSCMOrganisationRepositoryDelegate Delegate) const;
    void OnGetSCMOrganisationsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetSCMOrganisationsDelegate Delegate) const;
    void OnGetUserResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetUserDelegate Delegate) const;
    void OnGetUserFavoritesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetUserFavoritesDelegate Delegate) const;
    void OnGetUsersResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FGetUsersDelegate Delegate) const;
    void OnPostPipelineRunResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FPostPipelineRunDelegate Delegate) const;
    void OnPostPipelineRunsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FPostPipelineRunsDelegate Delegate) const;
    void OnPutPipelineFavoriteResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FPutPipelineFavoriteDelegate Delegate) const;
    void OnPutPipelineRunResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FPutPipelineRunDelegate Delegate) const;
    void OnSearchResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FSearchDelegate Delegate) const;
    void OnSearchClassesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FSearchClassesDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};

}
