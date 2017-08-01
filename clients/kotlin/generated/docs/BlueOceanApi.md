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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
try {
    val result : SwaggyjenkinsUser = apiInstance.getAuthenticatedUser(organisation)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getAuthenticatedUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getAuthenticatedUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> kotlin.String getClasses(_class)



Get a list of class names supported by a given class

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val _class : kotlin.String = _class_example // kotlin.String | Name of the class
try {
    val result : kotlin.String = apiInstance.getClasses(_class)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getClasses")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getClasses")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **kotlin.String**| Name of the class |

### Return type

**kotlin.String**

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
try {
    val result : SwaggyjenkinsOrganisation = apiInstance.getOrganisation(organisation)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
try {
    val result : GetOrganisations = apiInstance.getOrganisations()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getOrganisations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getOrganisations")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val branch : kotlin.String = branch_example // kotlin.String | Name of the branch
try {
    val result : IojenkinsblueoceanrestimplpipelineBranchImpl = apiInstance.getPipelineBranchByOrg(organisation, pipeline, branch)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineBranchByOrg")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineBranchByOrg")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **branch** | **kotlin.String**| Name of the branch |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : GetMultibranchPipeline = apiInstance.getPipelineBranchesByOrg(organisation, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineBranchesByOrg")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineBranchesByOrg")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **pipeline** | **kotlin.String**| Name of the pipeline |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : SwaggyjenkinsPipeline = apiInstance.getPipelineByOrg(organisation, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineByOrg")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineByOrg")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **pipeline** | **kotlin.String**| Name of the pipeline |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val folder : kotlin.String = folder_example // kotlin.String | Name of the folder
try {
    val result : IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl = apiInstance.getPipelineFolderByOrg(organisation, folder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineFolderByOrg")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineFolderByOrg")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **folder** | **kotlin.String**| Name of the folder |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val folder : kotlin.String = folder_example // kotlin.String | Name of the folder
try {
    val result : IojenkinsblueoceanserviceembeddedrestPipelineImpl = apiInstance.getPipelineFolderByOrg_0(organisation, pipeline, folder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineFolderByOrg_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineFolderByOrg_0")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **folder** | **kotlin.String**| Name of the folder |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
try {
    val result : GetPipelines = apiInstance.getPipelinesByOrg(organisation)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelinesByOrg")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelinesByOrg")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
val user : kotlin.String = user_example // kotlin.String | Name of the user
try {
    val result : SwaggyjenkinsUser = apiInstance.getUser(organisation, user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |
 **user** | **kotlin.String**| Name of the user |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val organisation : kotlin.String = organisation_example // kotlin.String | Name of the organisation
try {
    val result : SwaggyjenkinsUser = apiInstance.getUsers(organisation)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getUsers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getUsers")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **kotlin.String**| Name of the organisation |

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="search"></a>
# **search**
> kotlin.String search(q)



Get classes details

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val q : kotlin.String = q_example // kotlin.String | Query string containing an array of class names
try {
    val result : kotlin.String = apiInstance.search(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#search")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#search")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| Query string containing an array of class names |

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="search_0"></a>
# **search_0**
> kotlin.String search_0(q)



Search for any resource details

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = BlueOceanApi()
val q : kotlin.String = q_example // kotlin.String | Query string
try {
    val result : kotlin.String = apiInstance.search_0(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#search_0")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#search_0")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| Query string |

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

