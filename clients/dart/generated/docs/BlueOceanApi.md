# swagger.api.BlueOceanApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organisation} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipelineBranchByOrg**](BlueOceanApi.md#getPipelineBranchByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchesByOrg**](BlueOceanApi.md#getPipelineBranchesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**getPipelineByOrg**](BlueOceanApi.md#getPipelineByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**getPipelineFolderByOrg**](BlueOceanApi.md#getPipelineFolderByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**getPipelineFolderByOrg_0**](BlueOceanApi.md#getPipelineFolderByOrg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelinesByOrg**](BlueOceanApi.md#getPipelinesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
[**search_0**](BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 


# **getAuthenticatedUser**
> SwaggyjenkinsUser getAuthenticatedUser(organisation)



Retrieve authenticated user details for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation

try { 
    var result = api_instance.getAuthenticatedUser(organisation);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
> String getClasses(_class)



Get a list of class names supported by a given class

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var _class = _class_example; // String | Name of the class

try { 
    var result = api_instance.getClasses(_class);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getClasses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
> SwaggyjenkinsOrganisation getOrganisation(organisation)



Retrieve organisation details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation

try { 
    var result = api_instance.getOrganisation(organisation);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getOrganisation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
> GetOrganisations getOrganisations()



Retrieve all organisations details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();

try { 
    var result = api_instance.getOrganisations();
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getOrganisations: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrganisations**](GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchByOrg**
> IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(organisation, pipeline, branch)



Retrieve branch details for an organisation pipeline

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var pipeline = pipeline_example; // String | Name of the pipeline
var branch = branch_example; // String | Name of the branch

try { 
    var result = api_instance.getPipelineBranchByOrg(organisation, pipeline, branch);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelineBranchByOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchesByOrg**
> GetMultibranchPipeline getPipelineBranchesByOrg(organisation, pipeline)



Retrieve all branches details for an organisation pipeline

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var pipeline = pipeline_example; // String | Name of the pipeline

try { 
    var result = api_instance.getPipelineBranchesByOrg(organisation, pipeline);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelineBranchesByOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineByOrg**
> SwaggyjenkinsPipeline getPipelineByOrg(organisation, pipeline)



Retrieve pipeline details for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var pipeline = pipeline_example; // String | Name of the pipeline

try { 
    var result = api_instance.getPipelineByOrg(organisation, pipeline);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelineByOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderByOrg**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(organisation, folder)



Retrieve pipeline folder for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var folder = folder_example; // String | Name of the folder

try { 
    var result = api_instance.getPipelineFolderByOrg(organisation, folder);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelineFolderByOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderByOrg_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var pipeline = pipeline_example; // String | Name of the pipeline
var folder = folder_example; // String | Name of the folder

try { 
    var result = api_instance.getPipelineFolderByOrg_0(organisation, pipeline, folder);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelineFolderByOrg_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelinesByOrg**
> GetPipelines getPipelinesByOrg(organisation)



Retrieve all pipelines details for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation

try { 
    var result = api_instance.getPipelinesByOrg(organisation);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getPipelinesByOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> SwaggyjenkinsUser getUser(organisation, user)



Retrieve user details for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation
var user = user_example; // String | Name of the user

try { 
    var result = api_instance.getUser(organisation, user);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **user** | **String**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> SwaggyjenkinsUser getUsers(organisation)



Retrieve users details for an organisation

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var organisation = organisation_example; // String | Name of the organisation

try { 
    var result = api_instance.getUsers(organisation);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->getUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> String search(q)



Get classes details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var q = q_example; // String | Query string containing an array of class names

try { 
    var result = api_instance.search(q);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->search: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string containing an array of class names | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_0**
> String search_0(q)



Search for any resource details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BlueOceanApi();
var q = q_example; // String | Query string

try { 
    var result = api_instance.search_0(q);
    print(result);
} catch (e) {
    print("Exception when calling BlueOceanApi->search_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

