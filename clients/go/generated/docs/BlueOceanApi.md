# \BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAuthenticatedUser**](BlueOceanApi.md#GetAuthenticatedUser) | **Get** /blue/rest/organizations/{organisation}/user/ | 
[**GetClasses**](BlueOceanApi.md#GetClasses) | **Get** /blue/rest/classes/{class} | 
[**GetOrganisation**](BlueOceanApi.md#GetOrganisation) | **Get** /blue/rest/organizations/{organisation} | 
[**GetOrganisations**](BlueOceanApi.md#GetOrganisations) | **Get** /blue/rest/organizations/ | 
[**GetPipelineBranchByOrg**](BlueOceanApi.md#GetPipelineBranchByOrg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchesByOrg**](BlueOceanApi.md#GetPipelineBranchesByOrg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**GetPipelineByOrg**](BlueOceanApi.md#GetPipelineByOrg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**GetPipelineFolderByOrg**](BlueOceanApi.md#GetPipelineFolderByOrg) | **Get** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**GetPipelineFolderByOrg_0**](BlueOceanApi.md#GetPipelineFolderByOrg_0) | **Get** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelinesByOrg**](BlueOceanApi.md#GetPipelinesByOrg) | **Get** /blue/rest/organizations/{organisation}/pipelines/ | 
[**GetUser**](BlueOceanApi.md#GetUser) | **Get** /blue/rest/organizations/{organisation}/users/{user} | 
[**GetUsers**](BlueOceanApi.md#GetUsers) | **Get** /blue/rest/organizations/{organisation}/users/ | 
[**Search**](BlueOceanApi.md#Search) | **Get** /blue/rest/classes/ | 
[**Search_0**](BlueOceanApi.md#Search_0) | **Get** /blue/rest/search/ | 


# **GetAuthenticatedUser**
> SwaggyjenkinsUser GetAuthenticatedUser($organisation)



Retrieve authenticated user details for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](swaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetClasses**
> string GetClasses($class)



Get a list of class names supported by a given class


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string**| Name of the class | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisation**
> SwaggyjenkinsOrganisation GetOrganisation($organisation)



Retrieve organisation details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](swaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisations**
> GetOrganisations GetOrganisations()



Retrieve all organisations details


### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrganisations**](getOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineBranchByOrg**
> IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg($organisation, $pipeline, $branch)



Retrieve branch details for an organisation pipeline


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](iojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineBranchesByOrg**
> GetMultibranchPipeline GetPipelineBranchesByOrg($organisation, $pipeline)



Retrieve all branches details for an organisation pipeline


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](getMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineByOrg**
> SwaggyjenkinsPipeline GetPipelineByOrg($organisation, $pipeline)



Retrieve pipeline details for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](swaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineFolderByOrg**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg($organisation, $folder)



Retrieve pipeline folder for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineFolderByOrg_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_0($organisation, $pipeline, $folder)



Retrieve pipeline details for an organisation folder


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](iojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelinesByOrg**
> GetPipelines GetPipelinesByOrg($organisation)



Retrieve all pipelines details for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**GetPipelines**](getPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetUser**
> SwaggyjenkinsUser GetUser($organisation, $user)



Retrieve user details for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **user** | **string**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](swaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetUsers**
> SwaggyjenkinsUser GetUsers($organisation)



Retrieve users details for an organisation


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](swaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **Search**
> string Search($q)



Get classes details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **Search_0**
> string Search_0($q)



Search for any resource details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

