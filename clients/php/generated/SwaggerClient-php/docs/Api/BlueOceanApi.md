# Swagger\Client\BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 


# **deletePipelineQueueItem**
> deletePipelineQueueItem($organization, $pipeline, $queue)



Delete queue item from an organization pipeline queue

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$queue = "queue_example"; // string | Name of the queue item

try {
    $api_instance->deletePipelineQueueItem($organization, $pipeline, $queue);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->deletePipelineQueueItem: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **queue** | **string**| Name of the queue item |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getAuthenticatedUser**
> \Swagger\Client\Model\User getAuthenticatedUser($organization)



Retrieve authenticated user details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization

try {
    $result = $api_instance->getAuthenticatedUser($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getAuthenticatedUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

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

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
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

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisation**
> \Swagger\Client\Model\Organisation getOrganisation($organization)



Retrieve organization details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization

try {
    $result = $api_instance->getOrganisation($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getOrganisation: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisations**
> \Swagger\Client\Model\Organisations getOrganisations()



Retrieve all organizations details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());

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

[**\Swagger\Client\Model\Organisations**](../Model/Organisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipeline**
> \Swagger\Client\Model\Pipeline getPipeline($organization, $pipeline)



Retrieve pipeline details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipeline($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipeline: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\Pipeline**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineActivities**
> \Swagger\Client\Model\PipelineActivities getPipelineActivities($organization, $pipeline)



Retrieve all activities details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineActivities($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineActivities: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\PipelineActivities**](../Model/PipelineActivities.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineBranch**
> \Swagger\Client\Model\BranchImpl getPipelineBranch($organization, $pipeline, $branch)



Retrieve branch details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$branch = "branch_example"; // string | Name of the branch

try {
    $result = $api_instance->getPipelineBranch($organization, $pipeline, $branch);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranch: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **branch** | **string**| Name of the branch |

### Return type

[**\Swagger\Client\Model\BranchImpl**](../Model/BranchImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineBranchRun**
> \Swagger\Client\Model\PipelineRun getPipelineBranchRun($organization, $pipeline, $branch, $run)



Retrieve branch run details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$branch = "branch_example"; // string | Name of the branch
$run = "run_example"; // string | Name of the run

try {
    $result = $api_instance->getPipelineBranchRun($organization, $pipeline, $branch, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranchRun: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **branch** | **string**| Name of the branch |
 **run** | **string**| Name of the run |

### Return type

[**\Swagger\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineBranches**
> \Swagger\Client\Model\MultibranchPipeline getPipelineBranches($organization, $pipeline)



Retrieve all branches details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineBranches($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranches: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\MultibranchPipeline**](../Model/MultibranchPipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineFolder**
> \Swagger\Client\Model\PipelineFolderImpl getPipelineFolder($organization, $folder)



Retrieve pipeline folder for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$folder = "folder_example"; // string | Name of the folder

try {
    $result = $api_instance->getPipelineFolder($organization, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolder: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **folder** | **string**| Name of the folder |

### Return type

[**\Swagger\Client\Model\PipelineFolderImpl**](../Model/PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineFolderPipeline**
> \Swagger\Client\Model\PipelineImpl getPipelineFolderPipeline($organization, $pipeline, $folder)



Retrieve pipeline details for an organization folder

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$folder = "folder_example"; // string | Name of the folder

try {
    $result = $api_instance->getPipelineFolderPipeline($organization, $pipeline, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolderPipeline: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **folder** | **string**| Name of the folder |

### Return type

[**\Swagger\Client\Model\PipelineImpl**](../Model/PipelineImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineQueue**
> \Swagger\Client\Model\PipelineQueue getPipelineQueue($organization, $pipeline)



Retrieve queue details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineQueue($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineQueue: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\PipelineQueue**](../Model/PipelineQueue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRun**
> \Swagger\Client\Model\PipelineRun getPipelineRun($organization, $pipeline, $run)



Retrieve run details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run

try {
    $result = $api_instance->getPipelineRun($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRun: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**\Swagger\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunLog**
> string getPipelineRunLog($organization, $pipeline, $run, $start, $download)



Get log for a pipeline run

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$start = 56; // int | Start position of the log
$download = true; // bool | Set to true in order to download the file, otherwise it's passed as a response body

try {
    $result = $api_instance->getPipelineRunLog($organization, $pipeline, $run, $start, $download);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunLog: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **start** | **int**| Start position of the log | [optional]
 **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunNode**
> \Swagger\Client\Model\PipelineRunNode getPipelineRunNode($organization, $pipeline, $run, $node)



Retrieve run node details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$node = "node_example"; // string | Name of the node

try {
    $result = $api_instance->getPipelineRunNode($organization, $pipeline, $run, $node);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNode: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |

### Return type

[**\Swagger\Client\Model\PipelineRunNode**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunNodeStep**
> \Swagger\Client\Model\PipelineStepImpl getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step)



Retrieve run node details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$node = "node_example"; // string | Name of the node
$step = "step_example"; // string | Name of the step

try {
    $result = $api_instance->getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeStep: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |
 **step** | **string**| Name of the step |

### Return type

[**\Swagger\Client\Model\PipelineStepImpl**](../Model/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunNodeStepLog**
> string getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step)



Get log for a pipeline run node step

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$node = "node_example"; // string | Name of the node
$step = "step_example"; // string | Name of the step

try {
    $result = $api_instance->getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeStepLog: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |
 **step** | **string**| Name of the step |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunNodeSteps**
> \Swagger\Client\Model\PipelineRunNodeSteps getPipelineRunNodeSteps($organization, $pipeline, $run, $node)



Retrieve run node steps details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$node = "node_example"; // string | Name of the node

try {
    $result = $api_instance->getPipelineRunNodeSteps($organization, $pipeline, $run, $node);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeSteps: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |

### Return type

[**\Swagger\Client\Model\PipelineRunNodeSteps**](../Model/PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRunNodes**
> \Swagger\Client\Model\PipelineRunNodes getPipelineRunNodes($organization, $pipeline, $run)



Retrieve run nodes details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run

try {
    $result = $api_instance->getPipelineRunNodes($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodes: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**\Swagger\Client\Model\PipelineRunNodes**](../Model/PipelineRunNodes.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelineRuns**
> \Swagger\Client\Model\PipelineRuns getPipelineRuns($organization, $pipeline)



Retrieve all runs details for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->getPipelineRuns($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRuns: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\PipelineRuns**](../Model/PipelineRuns.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getPipelines**
> \Swagger\Client\Model\Pipelines getPipelines($organization)



Retrieve all pipelines details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization

try {
    $result = $api_instance->getPipelines($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelines: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**\Swagger\Client\Model\Pipelines**](../Model/Pipelines.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSCM**
> \Swagger\Client\Model\GithubScm getSCM($organization, $scm)



Retrieve SCM details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$scm = "scm_example"; // string | Name of SCM

try {
    $result = $api_instance->getSCM($organization, $scm);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCM: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |

### Return type

[**\Swagger\Client\Model\GithubScm**](../Model/GithubScm.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSCMOrganisationRepositories**
> \Swagger\Client\Model\ScmOrganisations getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id, $page_size, $page_number)



Retrieve SCM organization repositories details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$scm = "scm_example"; // string | Name of SCM
$scm_organisation = "scm_organisation_example"; // string | Name of the SCM organization
$credential_id = "credential_id_example"; // string | Credential ID
$page_size = 56; // int | Number of items in a page
$page_number = 56; // int | Page number

try {
    $result = $api_instance->getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id, $page_size, $page_number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisationRepositories: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **scm_organisation** | **string**| Name of the SCM organization |
 **credential_id** | **string**| Credential ID | [optional]
 **page_size** | **int**| Number of items in a page | [optional]
 **page_number** | **int**| Page number | [optional]

### Return type

[**\Swagger\Client\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSCMOrganisationRepository**
> \Swagger\Client\Model\ScmOrganisations getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id)



Retrieve SCM organization repository details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$scm = "scm_example"; // string | Name of SCM
$scm_organisation = "scm_organisation_example"; // string | Name of the SCM organization
$repository = "repository_example"; // string | Name of the SCM repository
$credential_id = "credential_id_example"; // string | Credential ID

try {
    $result = $api_instance->getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisationRepository: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **scm_organisation** | **string**| Name of the SCM organization |
 **repository** | **string**| Name of the SCM repository |
 **credential_id** | **string**| Credential ID | [optional]

### Return type

[**\Swagger\Client\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSCMOrganisations**
> \Swagger\Client\Model\ScmOrganisations getSCMOrganisations($organization, $scm, $credential_id)



Retrieve SCM organizations details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$scm = "scm_example"; // string | Name of SCM
$credential_id = "credential_id_example"; // string | Credential ID

try {
    $result = $api_instance->getSCMOrganisations($organization, $scm, $credential_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisations: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **credential_id** | **string**| Credential ID | [optional]

### Return type

[**\Swagger\Client\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUser**
> \Swagger\Client\Model\User getUser($organization, $user)



Retrieve user details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$user = "user_example"; // string | Name of the user

try {
    $result = $api_instance->getUser($organization, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUser: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **user** | **string**| Name of the user |

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUserFavorites**
> \Swagger\Client\Model\UserFavorites getUserFavorites($user)



Retrieve user favorites details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$user = "user_example"; // string | Name of the user

try {
    $result = $api_instance->getUserFavorites($user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUserFavorites: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **string**| Name of the user |

### Return type

[**\Swagger\Client\Model\UserFavorites**](../Model/UserFavorites.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUsers**
> \Swagger\Client\Model\User getUsers($organization)



Retrieve users details for an organization

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization

try {
    $result = $api_instance->getUsers($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUsers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postPipelineRun**
> \Swagger\Client\Model\QueueItemImpl postPipelineRun($organization, $pipeline, $run)



Replay an organization pipeline run

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run

try {
    $result = $api_instance->postPipelineRun($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->postPipelineRun: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**\Swagger\Client\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postPipelineRuns**
> \Swagger\Client\Model\QueueItemImpl postPipelineRuns($organization, $pipeline)



Start a build for an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline

try {
    $result = $api_instance->postPipelineRuns($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->postPipelineRuns: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**\Swagger\Client\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putPipelineFavorite**
> \Swagger\Client\Model\FavoriteImpl putPipelineFavorite($organization, $pipeline, $body)



Favorite/unfavorite a pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$body = new \Swagger\Client\Model\Body(); // \Swagger\Client\Model\Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

try {
    $result = $api_instance->putPipelineFavorite($organization, $pipeline, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->putPipelineFavorite: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **body** | [**\Swagger\Client\Model\Body**](../Model/Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**\Swagger\Client\Model\FavoriteImpl**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putPipelineRun**
> \Swagger\Client\Model\PipelineRun putPipelineRun($organization, $pipeline, $run, $blocking, $time_out_in_secs)



Stop a build of an organization pipeline

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$organization = "organization_example"; // string | Name of the organization
$pipeline = "pipeline_example"; // string | Name of the pipeline
$run = "run_example"; // string | Name of the run
$blocking = "blocking_example"; // string | Set to true to make blocking stop, default: false
$time_out_in_secs = 56; // int | Timeout in seconds, default: 10 seconds

try {
    $result = $api_instance->putPipelineRun($organization, $pipeline, $run, $blocking, $time_out_in_secs);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->putPipelineRun: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **blocking** | **string**| Set to true to make blocking stop, default: false | [optional]
 **time_out_in_secs** | **int**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

[**\Swagger\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **search**
> string search($q)



Search for any resource details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$q = "q_example"; // string | Query string

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
 **q** | **string**| Query string |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **searchClasses**
> string searchClasses($q)



Get classes details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\BlueOceanApi(new \Http\Adapter\Guzzle6\Client());
$q = "q_example"; // string | Query string containing an array of class names

try {
    $result = $api_instance->searchClasses($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->searchClasses: ', $e->getMessage(), PHP_EOL;
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

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

