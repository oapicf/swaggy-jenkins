# SwagBlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callSearch**](SwagBlueOceanApi.md#callSearch) | **GET** /blue/rest/classes/ | 
[**callSearch_0**](SwagBlueOceanApi.md#callSearch_0) | **GET** /blue/rest/search/ | 
[**getAuthenticatedUser**](SwagBlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**getClasses**](SwagBlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](SwagBlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organisation} | 
[**getOrganisations**](SwagBlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipelineBranchByOrg**](SwagBlueOceanApi.md#getPipelineBranchByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchesByOrg**](SwagBlueOceanApi.md#getPipelineBranchesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**getPipelineByOrg**](SwagBlueOceanApi.md#getPipelineByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**getPipelineFolderByOrg**](SwagBlueOceanApi.md#getPipelineFolderByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**getPipelineFolderByOrg_0**](SwagBlueOceanApi.md#getPipelineFolderByOrg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelinesByOrg**](SwagBlueOceanApi.md#getPipelinesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**getUser**](SwagBlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**getUsers**](SwagBlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organisation}/users/ | 


<a name="callSearch"></a>
# **callSearch**
> String callSearch(q)



Get classes details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'q' => 'q_example'
};

try {
    // cross your fingers
    String result = api.callSearch(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="callSearch_0"></a>
# **callSearch_0**
> String callSearch_0(q)



Search for any resource details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'q' => 'q_example'
};

try {
    // cross your fingers
    String result = api.callSearch_0(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> SwagSwaggyjenkinsUser getAuthenticatedUser(organisation)



Retrieve authenticated user details for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example'
};

try {
    // cross your fingers
    SwagSwaggyjenkinsUser result = api.getAuthenticatedUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |

### Return type

[**SwagSwaggyjenkinsUser**](SwagSwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> String getClasses(propertyClass)



Get a list of class names supported by a given class

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'propertyClass' => 'propertyClass_example'
};

try {
    // cross your fingers
    String result = api.getClasses(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyClass** | **String**| Name of the class |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> SwagSwaggyjenkinsOrganisation getOrganisation(organisation)



Retrieve organisation details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example'
};

try {
    // cross your fingers
    SwagSwaggyjenkinsOrganisation result = api.getOrganisation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |

### Return type

[**SwagSwaggyjenkinsOrganisation**](SwagSwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> SwagGetOrganisations getOrganisations()



Retrieve all organisations details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

try {
    // cross your fingers
    SwagGetOrganisations result = api.getOrganisations();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagGetOrganisations**](SwagGetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineBranchByOrg"></a>
# **getPipelineBranchByOrg**
> SwagIojenkinsblueoceanrestimplpipeli getPipelineBranchByOrg(organisation, pipeline, branch)



Retrieve branch details for an organisation pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'pipeline' => 'pipeline_example',
    'branch' => 'branch_example'
};

try {
    // cross your fingers
    SwagIojenkinsblueoceanrestimplpipeli result = api.getPipelineBranchByOrg(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **pipeline** | **String**| Name of the pipeline |
 **branch** | **String**| Name of the branch |

### Return type

[**SwagIojenkinsblueoceanrestimplpipeli**](SwagIojenkinsblueoceanrestimplpipeli.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineBranchesByOrg"></a>
# **getPipelineBranchesByOrg**
> SwagGetMultibranchPipeline getPipelineBranchesByOrg(organisation, pipeline)



Retrieve all branches details for an organisation pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagGetMultibranchPipeline result = api.getPipelineBranchesByOrg(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagGetMultibranchPipeline**](SwagGetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineByOrg"></a>
# **getPipelineByOrg**
> SwagSwaggyjenkinsPipeline getPipelineByOrg(organisation, pipeline)



Retrieve pipeline details for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagSwaggyjenkinsPipeline result = api.getPipelineByOrg(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagSwaggyjenkinsPipeline**](SwagSwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineFolderByOrg"></a>
# **getPipelineFolderByOrg**
> SwagIojenkinsblueoceanserviceembedde getPipelineFolderByOrg(organisation, folder)



Retrieve pipeline folder for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'folder' => 'folder_example'
};

try {
    // cross your fingers
    SwagIojenkinsblueoceanserviceembedde result = api.getPipelineFolderByOrg(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **folder** | **String**| Name of the folder |

### Return type

[**SwagIojenkinsblueoceanserviceembedde**](SwagIojenkinsblueoceanserviceembedde.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineFolderByOrg_0"></a>
# **getPipelineFolderByOrg_0**
> SwagIojenkinsblueoceanserviceembedde getPipelineFolderByOrg_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'pipeline' => 'pipeline_example',
    'folder' => 'folder_example'
};

try {
    // cross your fingers
    SwagIojenkinsblueoceanserviceembedde result = api.getPipelineFolderByOrg_0(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **pipeline** | **String**| Name of the pipeline |
 **folder** | **String**| Name of the folder |

### Return type

[**SwagIojenkinsblueoceanserviceembedde**](SwagIojenkinsblueoceanserviceembedde.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelinesByOrg"></a>
# **getPipelinesByOrg**
> SwagGetPipelines getPipelinesByOrg(organisation)



Retrieve all pipelines details for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example'
};

try {
    // cross your fingers
    SwagGetPipelines result = api.getPipelinesByOrg(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |

### Return type

[**SwagGetPipelines**](SwagGetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SwagSwaggyjenkinsUser getUser(organisation, user)



Retrieve user details for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example',
    'user' => 'user_example'
};

try {
    // cross your fingers
    SwagSwaggyjenkinsUser result = api.getUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |
 **user** | **String**| Name of the user |

### Return type

[**SwagSwaggyjenkinsUser**](SwagSwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> SwagSwaggyjenkinsUser getUsers(organisation)



Retrieve users details for an organisation

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();

Map<String, Object> params = new Map<String, Object>{
    'organisation' => 'organisation_example'
};

try {
    // cross your fingers
    SwagSwaggyjenkinsUser result = api.getUsers(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation |

### Return type

[**SwagSwaggyjenkinsUser**](SwagSwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

