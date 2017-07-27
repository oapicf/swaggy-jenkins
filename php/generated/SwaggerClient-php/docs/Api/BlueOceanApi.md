# Swagger\Client\BlueOceanApi

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
> \Swagger\Client\Model\SwaggyjenkinsUser getAuthenticatedUser($organisation)



Retrieve authenticated user details for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation

try {
    $result = $api_instance->getAuthenticatedUser($organisation);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getAuthenticatedUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |

### Return type

[**\Swagger\Client\Model\SwaggyjenkinsUser**](../Model/SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getClasses**
> string getClasses($class)



Get a list of class names supported by a given class

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$class = "class_example"; // string | Name of the class

try {
    $result = $api_instance->getClasses($class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getClasses: ', $e->getMessage(), PHP_EOL;
}
?>
```

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisation**
> \Swagger\Client\Model\SwaggyjenkinsOrganisation getOrganisation($organisation)



Retrieve organisation details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation

try {
    $result = $api_instance->getOrganisation($organisation);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getOrganisation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |

### Return type

[**\Swagger\Client\Model\SwaggyjenkinsOrganisation**](../Model/SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisations**
> \Swagger\Client\Model\GetOrganisations getOrganisations()



Retrieve all organisations details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();

try {
    $result = $api_instance->getOrganisations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getOrganisations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\GetOrganisations**](../Model/GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineBranchByOrg**
> \Swagger\Client\Model\IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg($organisation, $pipeline, $branch)



Retrieve branch details for an organisation pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$pipeline = "pipeline_example"; // string | Name of the pipeline
$branch = "branch_example"; // string | Name of the branch

try {
    $result = $api_instance->getPipelineBranchByOrg($organisation, $pipeline, $branch);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranchByOrg: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **pipeline** | **string**| Name of the pipeline |
 **branch** | **string**| Name of the branch |

### Return type

[**\Swagger\Client\Model\IojenkinsblueoceanrestimplpipelineBranchImpl**](../Model/IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineBranchesByOrg**
> \Swagger\Client\Model\GetMultibranchPipeline getPipelineBranchesByOrg($organisation, $pipeline)



Retrieve all branches details for an organisation pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineBranchesByOrg($organisation, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranchesByOrg: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\GetMultibranchPipeline**](../Model/GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineByOrg**
> \Swagger\Client\Model\SwaggyjenkinsPipeline getPipelineByOrg($organisation, $pipeline)



Retrieve pipeline details for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineByOrg($organisation, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineByOrg: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\SwaggyjenkinsPipeline**](../Model/SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineFolderByOrg**
> \Swagger\Client\Model\IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg($organisation, $folder)



Retrieve pipeline folder for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$folder = "folder_example"; // string | Name of the folder

try {
    $result = $api_instance->getPipelineFolderByOrg($organisation, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolderByOrg: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **folder** | **string**| Name of the folder |

### Return type

[**\Swagger\Client\Model\IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](../Model/IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineFolderByOrg_0**
> \Swagger\Client\Model\IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0($organisation, $pipeline, $folder)



Retrieve pipeline details for an organisation folder

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$pipeline = "pipeline_example"; // string | Name of the pipeline
$folder = "folder_example"; // string | Name of the folder

try {
    $result = $api_instance->getPipelineFolderByOrg_0($organisation, $pipeline, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolderByOrg_0: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **pipeline** | **string**| Name of the pipeline |
 **folder** | **string**| Name of the folder |

### Return type

[**\Swagger\Client\Model\IojenkinsblueoceanserviceembeddedrestPipelineImpl**](../Model/IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelinesByOrg**
> \Swagger\Client\Model\GetPipelines getPipelinesByOrg($organisation)



Retrieve all pipelines details for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation

try {
    $result = $api_instance->getPipelinesByOrg($organisation);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelinesByOrg: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |

### Return type

[**\Swagger\Client\Model\GetPipelines**](../Model/GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUser**
> \Swagger\Client\Model\SwaggyjenkinsUser getUser($organisation, $user)



Retrieve user details for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation
$user = "user_example"; // string | Name of the user

try {
    $result = $api_instance->getUser($organisation, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |
 **user** | **string**| Name of the user |

### Return type

[**\Swagger\Client\Model\SwaggyjenkinsUser**](../Model/SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUsers**
> \Swagger\Client\Model\SwaggyjenkinsUser getUsers($organisation)



Retrieve users details for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$organisation = "organisation_example"; // string | Name of the organisation

try {
    $result = $api_instance->getUsers($organisation);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUsers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation |

### Return type

[**\Swagger\Client\Model\SwaggyjenkinsUser**](../Model/SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **search**
> string search($q)



Get classes details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$q = "q_example"; // string | Query string containing an array of class names

try {
    $result = $api_instance->search($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->search: ', $e->getMessage(), PHP_EOL;
}
?>
```

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **search_0**
> string search_0($q)



Search for any resource details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$api_instance = new Swagger\Client\Api\BlueOceanApi();
$q = "q_example"; // string | Query string

try {
    $result = $api_instance->search_0($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->search_0: ', $e->getMessage(), PHP_EOL;
}
?>
```

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

