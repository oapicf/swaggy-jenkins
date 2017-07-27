# BlueOceanApi

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


<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> SwaggyjenkinsUser getAuthenticatedUser(organisation)



Retrieve authenticated user details for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
try {
    SwaggyjenkinsUser result = apiInstance.getAuthenticatedUser(organisation);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser");
    e.printStackTrace();
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

<a name="getClasses"></a>
# **getClasses**
> String getClasses(_class)



Get a list of class names supported by a given class

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String _class = "_class_example"; // String | Name of the class
try {
    String result = apiInstance.getClasses(_class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getClasses");
    e.printStackTrace();
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

<a name="getOrganisation"></a>
# **getOrganisation**
> SwaggyjenkinsOrganisation getOrganisation(organisation)



Retrieve organisation details

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
try {
    SwaggyjenkinsOrganisation result = apiInstance.getOrganisation(organisation);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getOrganisation");
    e.printStackTrace();
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

<a name="getOrganisations"></a>
# **getOrganisations**
> GetOrganisations getOrganisations()



Retrieve all organisations details

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
try {
    GetOrganisations result = apiInstance.getOrganisations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getOrganisations");
    e.printStackTrace();
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

<a name="getPipelineBranchByOrg"></a>
# **getPipelineBranchByOrg**
> IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(organisation, pipeline, branch)



Retrieve branch details for an organisation pipeline

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String pipeline = "pipeline_example"; // String | Name of the pipeline
String branch = "branch_example"; // String | Name of the branch
try {
    IojenkinsblueoceanrestimplpipelineBranchImpl result = apiInstance.getPipelineBranchByOrg(organisation, pipeline, branch);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineBranchByOrg");
    e.printStackTrace();
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

<a name="getPipelineBranchesByOrg"></a>
# **getPipelineBranchesByOrg**
> GetMultibranchPipeline getPipelineBranchesByOrg(organisation, pipeline)



Retrieve all branches details for an organisation pipeline

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String pipeline = "pipeline_example"; // String | Name of the pipeline
try {
    GetMultibranchPipeline result = apiInstance.getPipelineBranchesByOrg(organisation, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineBranchesByOrg");
    e.printStackTrace();
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

<a name="getPipelineByOrg"></a>
# **getPipelineByOrg**
> SwaggyjenkinsPipeline getPipelineByOrg(organisation, pipeline)



Retrieve pipeline details for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String pipeline = "pipeline_example"; // String | Name of the pipeline
try {
    SwaggyjenkinsPipeline result = apiInstance.getPipelineByOrg(organisation, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineByOrg");
    e.printStackTrace();
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

<a name="getPipelineFolderByOrg"></a>
# **getPipelineFolderByOrg**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(organisation, folder)



Retrieve pipeline folder for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String folder = "folder_example"; // String | Name of the folder
try {
    IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl result = apiInstance.getPipelineFolderByOrg(organisation, folder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineFolderByOrg");
    e.printStackTrace();
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

<a name="getPipelineFolderByOrg_0"></a>
# **getPipelineFolderByOrg_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String pipeline = "pipeline_example"; // String | Name of the pipeline
String folder = "folder_example"; // String | Name of the folder
try {
    IojenkinsblueoceanserviceembeddedrestPipelineImpl result = apiInstance.getPipelineFolderByOrg_0(organisation, pipeline, folder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineFolderByOrg_0");
    e.printStackTrace();
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

<a name="getPipelinesByOrg"></a>
# **getPipelinesByOrg**
> GetPipelines getPipelinesByOrg(organisation)



Retrieve all pipelines details for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
try {
    GetPipelines result = apiInstance.getPipelinesByOrg(organisation);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelinesByOrg");
    e.printStackTrace();
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

<a name="getUser"></a>
# **getUser**
> SwaggyjenkinsUser getUser(organisation, user)



Retrieve user details for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
String user = "user_example"; // String | Name of the user
try {
    SwaggyjenkinsUser result = apiInstance.getUser(organisation, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUser");
    e.printStackTrace();
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

<a name="getUsers"></a>
# **getUsers**
> SwaggyjenkinsUser getUsers(organisation)



Retrieve users details for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organisation = "organisation_example"; // String | Name of the organisation
try {
    SwaggyjenkinsUser result = apiInstance.getUsers(organisation);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUsers");
    e.printStackTrace();
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

<a name="search"></a>
# **search**
> String search(q)



Get classes details

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String q = "q_example"; // String | Query string containing an array of class names
try {
    String result = apiInstance.search(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#search");
    e.printStackTrace();
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

<a name="search_0"></a>
# **search_0**
> String search_0(q)



Search for any resource details

### Example
```java
// Import classes:
//import io.swagger.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String q = "q_example"; // String | Query string
try {
    String result = apiInstance.search_0(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#search_0");
    e.printStackTrace();
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

