# PSOpenAPITools.PSOpenAPITools/Api.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DeletePipelineQueueItem**](BlueOceanApi.md#Invoke-DeletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**Get-AuthenticatedUser**](BlueOceanApi.md#Get-AuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**Get-Classes**](BlueOceanApi.md#Get-Classes) | **GET** /blue/rest/classes/{class} | 
[**Get-JsonWebKey**](BlueOceanApi.md#Get-JsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**Get-JsonWebToken**](BlueOceanApi.md#Get-JsonWebToken) | **GET** /jwt-auth/token | 
[**Get-Organisation**](BlueOceanApi.md#Get-Organisation) | **GET** /blue/rest/organizations/{organization} | 
[**Get-Organisations**](BlueOceanApi.md#Get-Organisations) | **GET** /blue/rest/organizations/ | 
[**Get-Pipeline**](BlueOceanApi.md#Get-Pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**Get-PipelineActivities**](BlueOceanApi.md#Get-PipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**Get-PipelineBranch**](BlueOceanApi.md#Get-PipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**Get-PipelineBranchRun**](BlueOceanApi.md#Get-PipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**Get-PipelineBranches**](BlueOceanApi.md#Get-PipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**Get-PipelineFolder**](BlueOceanApi.md#Get-PipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**Get-PipelineFolderPipeline**](BlueOceanApi.md#Get-PipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**Get-PipelineQueue**](BlueOceanApi.md#Get-PipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**Get-PipelineRun**](BlueOceanApi.md#Get-PipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**Get-PipelineRunLog**](BlueOceanApi.md#Get-PipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**Get-PipelineRunNode**](BlueOceanApi.md#Get-PipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**Get-PipelineRunNodeStep**](BlueOceanApi.md#Get-PipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**Get-PipelineRunNodeStepLog**](BlueOceanApi.md#Get-PipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**Get-PipelineRunNodeSteps**](BlueOceanApi.md#Get-PipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**Get-PipelineRunNodes**](BlueOceanApi.md#Get-PipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**Get-PipelineRuns**](BlueOceanApi.md#Get-PipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**Get-Pipelines**](BlueOceanApi.md#Get-Pipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**Get-SCM**](BlueOceanApi.md#Get-SCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**Get-SCMOrganisationRepositories**](BlueOceanApi.md#Get-SCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**Get-SCMOrganisationRepository**](BlueOceanApi.md#Get-SCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**Get-SCMOrganisations**](BlueOceanApi.md#Get-SCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**Get-User**](BlueOceanApi.md#Get-User) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**Get-UserFavorites**](BlueOceanApi.md#Get-UserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**Get-Users**](BlueOceanApi.md#Get-Users) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**Submit-PipelineRun**](BlueOceanApi.md#Submit-PipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**Submit-PipelineRuns**](BlueOceanApi.md#Submit-PipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**Send-PipelineFavorite**](BlueOceanApi.md#Send-PipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**Send-PipelineRun**](BlueOceanApi.md#Send-PipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search-**](BlueOceanApi.md#Search-) | **GET** /blue/rest/search/ | 
[**Search-Classes**](BlueOceanApi.md#Search-Classes) | **GET** /blue/rest/classes/ | 


<a name="Invoke-DeletePipelineQueueItem"></a>
# **Invoke-DeletePipelineQueueItem**
> void Invoke-DeletePipelineQueueItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>



Delete queue item from an organization pipeline queue

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Queue = "MyQueue" # String | Name of the queue item

try {
    $Result = Invoke-DeletePipelineQueueItem -Organization $Organization -Pipeline $Pipeline -Queue $Queue
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePipelineQueueItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Queue** | **String**| Name of the queue item | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AuthenticatedUser"></a>
# **Get-AuthenticatedUser**
> User Get-AuthenticatedUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>



Retrieve authenticated user details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization

try {
    $Result = Get-AuthenticatedUser -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Get-AuthenticatedUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Classes"></a>
# **Get-Classes**
> String Get-Classes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Class] <String><br>



Get a list of class names supported by a given class

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Class = "MyClass" # String | Name of the class

try {
    $Result = Get-Classes -Class $Class
} catch {
    Write-Host ("Exception occurred when calling Get-Classes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Class** | **String**| Name of the class | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-JsonWebKey"></a>
# **Get-JsonWebKey**
> String Get-JsonWebKey<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <Int32><br>



Retrieve JSON Web Key

### Example
```powershell
$Key = 56 # Int32 | Key ID received as part of JWT header field kid

try {
    $Result = Get-JsonWebKey -Key $Key
} catch {
    Write-Host ("Exception occurred when calling Get-JsonWebKey: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **Int32**| Key ID received as part of JWT header field kid | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-JsonWebToken"></a>
# **Get-JsonWebToken**
> String Get-JsonWebToken<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExpiryTimeInMins] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxExpiryTimeInMins] <System.Nullable[Int32]><br>



Retrieve JSON Web Token

### Example
```powershell
$ExpiryTimeInMins = 56 # Int32 | Token expiry time in minutes, default: 30 minutes (optional)
$MaxExpiryTimeInMins = 56 # Int32 | Maximum token expiry time in minutes, default: 480 minutes (optional)

try {
    $Result = Get-JsonWebToken -ExpiryTimeInMins $ExpiryTimeInMins -MaxExpiryTimeInMins $MaxExpiryTimeInMins
} catch {
    Write-Host ("Exception occurred when calling Get-JsonWebToken: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExpiryTimeInMins** | **Int32**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **MaxExpiryTimeInMins** | **Int32**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Organisation"></a>
# **Get-Organisation**
> Organisation Get-Organisation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>



Retrieve organization details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization

try {
    $Result = Get-Organisation -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Get-Organisation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 

### Return type

[**Organisation**](Organisation.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Organisations"></a>
# **Get-Organisations**
> Organisation[] Get-Organisations<br>



Retrieve all organizations details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


try {
    $Result = Get-Organisations
} catch {
    Write-Host ("Exception occurred when calling Get-Organisations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisation[]**](Organisation.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Pipeline"></a>
# **Get-Pipeline**
> Pipeline Get-Pipeline<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Retrieve pipeline details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Get-Pipeline -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Get-Pipeline: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineActivities"></a>
# **Get-PipelineActivities**
> PipelineActivity[] Get-PipelineActivities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Retrieve all activities details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Get-PipelineActivities -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineActivities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**PipelineActivity[]**](PipelineActivity.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineBranch"></a>
# **Get-PipelineBranch**
> BranchImpl Get-PipelineBranch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Branch] <String><br>



Retrieve branch details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Branch = "MyBranch" # String | Name of the branch

try {
    $Result = Get-PipelineBranch -Organization $Organization -Pipeline $Pipeline -Branch $Branch
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineBranch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Branch** | **String**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineBranchRun"></a>
# **Get-PipelineBranchRun**
> PipelineRun Get-PipelineBranchRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Branch] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>



Retrieve branch run details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Branch = "MyBranch" # String | Name of the branch
$Run = "MyRun" # String | Name of the run

try {
    $Result = Get-PipelineBranchRun -Organization $Organization -Pipeline $Pipeline -Branch $Branch -Run $Run
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineBranchRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Branch** | **String**| Name of the branch | 
 **Run** | **String**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineBranches"></a>
# **Get-PipelineBranches**
> MultibranchPipeline Get-PipelineBranches<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Retrieve all branches details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Get-PipelineBranches -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineBranches: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineFolder"></a>
# **Get-PipelineFolder**
> PipelineFolderImpl Get-PipelineFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Folder] <String><br>



Retrieve pipeline folder for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Folder = "MyFolder" # String | Name of the folder

try {
    $Result = Get-PipelineFolder -Organization $Organization -Folder $Folder
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Folder** | **String**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineFolderPipeline"></a>
# **Get-PipelineFolderPipeline**
> PipelineImpl Get-PipelineFolderPipeline<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Folder] <String><br>



Retrieve pipeline details for an organization folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Folder = "MyFolder" # String | Name of the folder

try {
    $Result = Get-PipelineFolderPipeline -Organization $Organization -Pipeline $Pipeline -Folder $Folder
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineFolderPipeline: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Folder** | **String**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineQueue"></a>
# **Get-PipelineQueue**
> QueueItemImpl[] Get-PipelineQueue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Retrieve queue details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Get-PipelineQueue -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineQueue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**QueueItemImpl[]**](QueueItemImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRun"></a>
# **Get-PipelineRun**
> PipelineRun Get-PipelineRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>



Retrieve run details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run

try {
    $Result = Get-PipelineRun -Organization $Organization -Pipeline $Pipeline -Run $Run
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunLog"></a>
# **Get-PipelineRunLog**
> String Get-PipelineRunLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Start] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Download] <System.Nullable[Boolean]><br>



Get log for a pipeline run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Start = 56 # Int32 | Start position of the log (optional)
$Download = $true # Boolean | Set to true in order to download the file, otherwise it's passed as a response body (optional)

try {
    $Result = Get-PipelineRunLog -Organization $Organization -Pipeline $Pipeline -Run $Run -Start $Start -Download $Download
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Start** | **Int32**| Start position of the log | [optional] 
 **Download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunNode"></a>
# **Get-PipelineRunNode**
> PipelineRunNode Get-PipelineRunNode<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <String><br>



Retrieve run node details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Node = "MyNode" # String | Name of the node

try {
    $Result = Get-PipelineRunNode -Organization $Organization -Pipeline $Pipeline -Run $Run -Node $Node
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunNode: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Node** | **String**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunNodeStep"></a>
# **Get-PipelineRunNodeStep**
> PipelineStepImpl Get-PipelineRunNodeStep<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Step] <String><br>



Retrieve run node details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Node = "MyNode" # String | Name of the node
$Step = "MyStep" # String | Name of the step

try {
    $Result = Get-PipelineRunNodeStep -Organization $Organization -Pipeline $Pipeline -Run $Run -Node $Node -Step $Step
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunNodeStep: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Node** | **String**| Name of the node | 
 **Step** | **String**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunNodeStepLog"></a>
# **Get-PipelineRunNodeStepLog**
> String Get-PipelineRunNodeStepLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Step] <String><br>



Get log for a pipeline run node step

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Node = "MyNode" # String | Name of the node
$Step = "MyStep" # String | Name of the step

try {
    $Result = Get-PipelineRunNodeStepLog -Organization $Organization -Pipeline $Pipeline -Run $Run -Node $Node -Step $Step
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunNodeStepLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Node** | **String**| Name of the node | 
 **Step** | **String**| Name of the step | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunNodeSteps"></a>
# **Get-PipelineRunNodeSteps**
> PipelineStepImpl[] Get-PipelineRunNodeSteps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Node] <String><br>



Retrieve run node steps details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Node = "MyNode" # String | Name of the node

try {
    $Result = Get-PipelineRunNodeSteps -Organization $Organization -Pipeline $Pipeline -Run $Run -Node $Node
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunNodeSteps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Node** | **String**| Name of the node | 

### Return type

[**PipelineStepImpl[]**](PipelineStepImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRunNodes"></a>
# **Get-PipelineRunNodes**
> PipelineRunNode[] Get-PipelineRunNodes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>



Retrieve run nodes details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run

try {
    $Result = Get-PipelineRunNodes -Organization $Organization -Pipeline $Pipeline -Run $Run
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRunNodes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 

### Return type

[**PipelineRunNode[]**](PipelineRunNode.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PipelineRuns"></a>
# **Get-PipelineRuns**
> PipelineRun[] Get-PipelineRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Retrieve all runs details for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Get-PipelineRuns -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Get-PipelineRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**PipelineRun[]**](PipelineRun.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Pipelines"></a>
# **Get-Pipelines**
> Pipeline[] Get-Pipelines<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>



Retrieve all pipelines details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization

try {
    $Result = Get-Pipelines -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Get-Pipelines: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 

### Return type

[**Pipeline[]**](Pipeline.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SCM"></a>
# **Get-SCM**
> GithubScm Get-SCM<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scm] <String><br>



Retrieve SCM details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Scm = "MyScm" # String | Name of SCM

try {
    $Result = Get-SCM -Organization $Organization -Scm $Scm
} catch {
    Write-Host ("Exception occurred when calling Get-SCM: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Scm** | **String**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SCMOrganisationRepositories"></a>
# **Get-SCMOrganisationRepositories**
> GithubOrganization[] Get-SCMOrganisationRepositories<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scm] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScmOrganisation] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageNumber] <System.Nullable[Int32]><br>



Retrieve SCM organization repositories details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Scm = "MyScm" # String | Name of SCM
$ScmOrganisation = "MyScmOrganisation" # String | Name of the SCM organization
$CredentialId = "MyCredentialId" # String | Credential ID (optional)
$PageSize = 56 # Int32 | Number of items in a page (optional)
$PageNumber = 56 # Int32 | Page number (optional)

try {
    $Result = Get-SCMOrganisationRepositories -Organization $Organization -Scm $Scm -ScmOrganisation $ScmOrganisation -CredentialId $CredentialId -PageSize $PageSize -PageNumber $PageNumber
} catch {
    Write-Host ("Exception occurred when calling Get-SCMOrganisationRepositories: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Scm** | **String**| Name of SCM | 
 **ScmOrganisation** | **String**| Name of the SCM organization | 
 **CredentialId** | **String**| Credential ID | [optional] 
 **PageSize** | **Int32**| Number of items in a page | [optional] 
 **PageNumber** | **Int32**| Page number | [optional] 

### Return type

[**GithubOrganization[]**](GithubOrganization.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SCMOrganisationRepository"></a>
# **Get-SCMOrganisationRepository**
> GithubOrganization[] Get-SCMOrganisationRepository<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scm] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScmOrganisation] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Repository] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <String><br>



Retrieve SCM organization repository details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Scm = "MyScm" # String | Name of SCM
$ScmOrganisation = "MyScmOrganisation" # String | Name of the SCM organization
$Repository = "MyRepository" # String | Name of the SCM repository
$CredentialId = "MyCredentialId" # String | Credential ID (optional)

try {
    $Result = Get-SCMOrganisationRepository -Organization $Organization -Scm $Scm -ScmOrganisation $ScmOrganisation -Repository $Repository -CredentialId $CredentialId
} catch {
    Write-Host ("Exception occurred when calling Get-SCMOrganisationRepository: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Scm** | **String**| Name of SCM | 
 **ScmOrganisation** | **String**| Name of the SCM organization | 
 **Repository** | **String**| Name of the SCM repository | 
 **CredentialId** | **String**| Credential ID | [optional] 

### Return type

[**GithubOrganization[]**](GithubOrganization.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SCMOrganisations"></a>
# **Get-SCMOrganisations**
> GithubOrganization[] Get-SCMOrganisations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Scm] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CredentialId] <String><br>



Retrieve SCM organizations details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Scm = "MyScm" # String | Name of SCM
$CredentialId = "MyCredentialId" # String | Credential ID (optional)

try {
    $Result = Get-SCMOrganisations -Organization $Organization -Scm $Scm -CredentialId $CredentialId
} catch {
    Write-Host ("Exception occurred when calling Get-SCMOrganisations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Scm** | **String**| Name of SCM | 
 **CredentialId** | **String**| Credential ID | [optional] 

### Return type

[**GithubOrganization[]**](GithubOrganization.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-User"></a>
# **Get-User**
> User Get-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>



Retrieve user details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$User = "MyUser" # String | Name of the user

try {
    $Result = Get-User -Organization $Organization -User $User
} catch {
    Write-Host ("Exception occurred when calling Get-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **User** | **String**| Name of the user | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserFavorites"></a>
# **Get-UserFavorites**
> FavoriteImpl[] Get-UserFavorites<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>



Retrieve user favorites details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$User = "MyUser" # String | Name of the user

try {
    $Result = Get-UserFavorites -User $User
} catch {
    Write-Host ("Exception occurred when calling Get-UserFavorites: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | **String**| Name of the user | 

### Return type

[**FavoriteImpl[]**](FavoriteImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Users"></a>
# **Get-Users**
> User Get-Users<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>



Retrieve users details for an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization

try {
    $Result = Get-Users -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Get-Users: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-PipelineRun"></a>
# **Submit-PipelineRun**
> QueueItemImpl Submit-PipelineRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>



Replay an organization pipeline run

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run

try {
    $Result = Submit-PipelineRun -Organization $Organization -Pipeline $Pipeline -Run $Run
} catch {
    Write-Host ("Exception occurred when calling Submit-PipelineRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-PipelineRuns"></a>
# **Submit-PipelineRuns**
> QueueItemImpl Submit-PipelineRuns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>



Start a build for an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline

try {
    $Result = Submit-PipelineRuns -Organization $Organization -Pipeline $Pipeline
} catch {
    Write-Host ("Exception occurred when calling Submit-PipelineRuns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-PipelineFavorite"></a>
# **Send-PipelineFavorite**
> FavoriteImpl Send-PipelineFavorite<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <Boolean><br>



Favorite/unfavorite a pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Body = $true # Boolean | Set JSON string body to {""favorite"": true} to favorite, set value to false to unfavorite

try {
    $Result = Send-PipelineFavorite -Organization $Organization -Pipeline $Pipeline -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Send-PipelineFavorite: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Body** | **Boolean**| Set JSON string body to {&quot;&quot;favorite&quot;&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-PipelineRun"></a>
# **Send-PipelineRun**
> PipelineRun Send-PipelineRun<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipeline] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Run] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Blocking] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeOutInSecs] <System.Nullable[Int32]><br>



Stop a build of an organization pipeline

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Organization = "MyOrganization" # String | Name of the organization
$Pipeline = "MyPipeline" # String | Name of the pipeline
$Run = "MyRun" # String | Name of the run
$Blocking = "MyBlocking" # String | Set to true to make blocking stop, default: false (optional)
$TimeOutInSecs = 56 # Int32 | Timeout in seconds, default: 10 seconds (optional)

try {
    $Result = Send-PipelineRun -Organization $Organization -Pipeline $Pipeline -Run $Run -Blocking $Blocking -TimeOutInSecs $TimeOutInSecs
} catch {
    Write-Host ("Exception occurred when calling Send-PipelineRun: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Organization** | **String**| Name of the organization | 
 **Pipeline** | **String**| Name of the pipeline | 
 **Run** | **String**| Name of the run | 
 **Blocking** | **String**| Set to true to make blocking stop, default: false | [optional] 
 **TimeOutInSecs** | **Int32**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Search-"></a>
# **Search-**
> String Search-<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>



Search for any resource details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Q = "MyQ" # String | Query string

try {
    $Result = Search- -Q $Q
} catch {
    Write-Host ("Exception occurred when calling Search-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**| Query string | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Search-Classes"></a>
# **Search-Classes**
> String Search-Classes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Q] <String><br>



Get classes details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Q = "MyQ" # String | Query string containing an array of class names

try {
    $Result = Search-Classes -Q $Q
} catch {
    Write-Host ("Exception occurred when calling Search-Classes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Q** | **String**| Query string containing an array of class names | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

