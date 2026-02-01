# OpenAPI\Client\BlueOceanApi



All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**deletePipelineQueueItem()**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**getAuthenticatedUser()**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**getClasses()**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} |  |
| [**getJsonWebKey()**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} |  |
| [**getJsonWebToken()**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token |  |
| [**getOrganisation()**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**getOrganisations()**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ |  |
| [**getPipeline()**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**getPipelineActivities()**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**getPipelineBranch()**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**getPipelineBranchRun()**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**getPipelineBranches()**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**getPipelineFolder()**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**getPipelineFolderPipeline()**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**getPipelineQueue()**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**getPipelineRun()**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**getPipelineRunLog()**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**getPipelineRunNode()**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**getPipelineRunNodeStep()**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**getPipelineRunNodeStepLog()**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**getPipelineRunNodeSteps()**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**getPipelineRunNodes()**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**getPipelineRuns()**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**getPipelines()**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**getSCM()**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**getSCMOrganisationRepositories()**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**getSCMOrganisationRepository()**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**getSCMOrganisations()**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**getUser()**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**getUserFavorites()**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**getUsers()**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**postPipelineRun()**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**postPipelineRuns()**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**putPipelineFavorite()**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**putPipelineRun()**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**search()**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**searchClasses()**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ |  |


## `deletePipelineQueueItem()`

```php
deletePipelineQueueItem($organization, $pipeline, $queue)
```



Delete queue item from an organization pipeline queue

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$queue = 'queue_example'; // string | Name of the queue item

try {
    $apiInstance->deletePipelineQueueItem($organization, $pipeline, $queue);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->deletePipelineQueueItem: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **queue** | **string**| Name of the queue item | |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getAuthenticatedUser()`

```php
getAuthenticatedUser($organization): \OpenAPI\Client\Model\User
```



Retrieve authenticated user details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization

try {
    $result = $apiInstance->getAuthenticatedUser($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getAuthenticatedUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |

### Return type

[**\OpenAPI\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getClasses()`

```php
getClasses($class): string
```



Get a list of class names supported by a given class

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$class = 'class_example'; // string | Name of the class

try {
    $result = $apiInstance->getClasses($class);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getClasses: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **class** | **string**| Name of the class | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJsonWebKey()`

```php
getJsonWebKey($key): string
```



Retrieve JSON Web Key

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$key = 56; // int | Key ID received as part of JWT header field kid

try {
    $result = $apiInstance->getJsonWebKey($key);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getJsonWebKey: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **key** | **int**| Key ID received as part of JWT header field kid | |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJsonWebToken()`

```php
getJsonWebToken($expiry_time_in_mins, $max_expiry_time_in_mins): string
```



Retrieve JSON Web Token

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$expiry_time_in_mins = 56; // int | Token expiry time in minutes, default: 30 minutes
$max_expiry_time_in_mins = 56; // int | Maximum token expiry time in minutes, default: 480 minutes

try {
    $result = $apiInstance->getJsonWebToken($expiry_time_in_mins, $max_expiry_time_in_mins);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getJsonWebToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **expiry_time_in_mins** | **int**| Token expiry time in minutes, default: 30 minutes | [optional] |
| **max_expiry_time_in_mins** | **int**| Maximum token expiry time in minutes, default: 480 minutes | [optional] |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOrganisation()`

```php
getOrganisation($organization): \OpenAPI\Client\Model\Organisation
```



Retrieve organization details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization

try {
    $result = $apiInstance->getOrganisation($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getOrganisation: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |

### Return type

[**\OpenAPI\Client\Model\Organisation**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOrganisations()`

```php
getOrganisations(): \OpenAPI\Client\Model\Organisation[]
```



Retrieve all organizations details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getOrganisations();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getOrganisations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Organisation[]**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipeline()`

```php
getPipeline($organization, $pipeline): \OpenAPI\Client\Model\Pipeline
```



Retrieve pipeline details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->getPipeline($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipeline: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\Pipeline**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineActivities()`

```php
getPipelineActivities($organization, $pipeline): \OpenAPI\Client\Model\PipelineActivity[]
```



Retrieve all activities details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->getPipelineActivities($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineActivities: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\PipelineActivity[]**](../Model/PipelineActivity.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineBranch()`

```php
getPipelineBranch($organization, $pipeline, $branch): \OpenAPI\Client\Model\BranchImpl
```



Retrieve branch details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$branch = 'branch_example'; // string | Name of the branch

try {
    $result = $apiInstance->getPipelineBranch($organization, $pipeline, $branch);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **branch** | **string**| Name of the branch | |

### Return type

[**\OpenAPI\Client\Model\BranchImpl**](../Model/BranchImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineBranchRun()`

```php
getPipelineBranchRun($organization, $pipeline, $branch, $run): \OpenAPI\Client\Model\PipelineRun
```



Retrieve branch run details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$branch = 'branch_example'; // string | Name of the branch
$run = 'run_example'; // string | Name of the run

try {
    $result = $apiInstance->getPipelineBranchRun($organization, $pipeline, $branch, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranchRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **branch** | **string**| Name of the branch | |
| **run** | **string**| Name of the run | |

### Return type

[**\OpenAPI\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineBranches()`

```php
getPipelineBranches($organization, $pipeline): \OpenAPI\Client\Model\MultibranchPipeline
```



Retrieve all branches details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->getPipelineBranches($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineBranches: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\MultibranchPipeline**](../Model/MultibranchPipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineFolder()`

```php
getPipelineFolder($organization, $folder): \OpenAPI\Client\Model\PipelineFolderImpl
```



Retrieve pipeline folder for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$folder = 'folder_example'; // string | Name of the folder

try {
    $result = $apiInstance->getPipelineFolder($organization, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolder: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **folder** | **string**| Name of the folder | |

### Return type

[**\OpenAPI\Client\Model\PipelineFolderImpl**](../Model/PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineFolderPipeline()`

```php
getPipelineFolderPipeline($organization, $pipeline, $folder): \OpenAPI\Client\Model\PipelineImpl
```



Retrieve pipeline details for an organization folder

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$folder = 'folder_example'; // string | Name of the folder

try {
    $result = $apiInstance->getPipelineFolderPipeline($organization, $pipeline, $folder);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineFolderPipeline: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **folder** | **string**| Name of the folder | |

### Return type

[**\OpenAPI\Client\Model\PipelineImpl**](../Model/PipelineImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineQueue()`

```php
getPipelineQueue($organization, $pipeline): \OpenAPI\Client\Model\QueueItemImpl[]
```



Retrieve queue details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->getPipelineQueue($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineQueue: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\QueueItemImpl[]**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRun()`

```php
getPipelineRun($organization, $pipeline, $run): \OpenAPI\Client\Model\PipelineRun
```



Retrieve run details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run

try {
    $result = $apiInstance->getPipelineRun($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |

### Return type

[**\OpenAPI\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunLog()`

```php
getPipelineRunLog($organization, $pipeline, $run, $start, $download): string
```



Get log for a pipeline run

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$start = 56; // int | Start position of the log
$download = True; // bool | Set to true in order to download the file, otherwise it's passed as a response body

try {
    $result = $apiInstance->getPipelineRunLog($organization, $pipeline, $run, $start, $download);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunLog: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **start** | **int**| Start position of the log | [optional] |
| **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunNode()`

```php
getPipelineRunNode($organization, $pipeline, $run, $node): \OpenAPI\Client\Model\PipelineRunNode
```



Retrieve run node details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$node = 'node_example'; // string | Name of the node

try {
    $result = $apiInstance->getPipelineRunNode($organization, $pipeline, $run, $node);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **node** | **string**| Name of the node | |

### Return type

[**\OpenAPI\Client\Model\PipelineRunNode**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunNodeStep()`

```php
getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step): \OpenAPI\Client\Model\PipelineStepImpl
```



Retrieve run node details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$node = 'node_example'; // string | Name of the node
$step = 'step_example'; // string | Name of the step

try {
    $result = $apiInstance->getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeStep: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **node** | **string**| Name of the node | |
| **step** | **string**| Name of the step | |

### Return type

[**\OpenAPI\Client\Model\PipelineStepImpl**](../Model/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunNodeStepLog()`

```php
getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step): string
```



Get log for a pipeline run node step

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$node = 'node_example'; // string | Name of the node
$step = 'step_example'; // string | Name of the step

try {
    $result = $apiInstance->getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeStepLog: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **node** | **string**| Name of the node | |
| **step** | **string**| Name of the step | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunNodeSteps()`

```php
getPipelineRunNodeSteps($organization, $pipeline, $run, $node): \OpenAPI\Client\Model\PipelineStepImpl[]
```



Retrieve run node steps details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$node = 'node_example'; // string | Name of the node

try {
    $result = $apiInstance->getPipelineRunNodeSteps($organization, $pipeline, $run, $node);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodeSteps: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **node** | **string**| Name of the node | |

### Return type

[**\OpenAPI\Client\Model\PipelineStepImpl[]**](../Model/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRunNodes()`

```php
getPipelineRunNodes($organization, $pipeline, $run): \OpenAPI\Client\Model\PipelineRunNode[]
```



Retrieve run nodes details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run

try {
    $result = $apiInstance->getPipelineRunNodes($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRunNodes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |

### Return type

[**\OpenAPI\Client\Model\PipelineRunNode[]**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelineRuns()`

```php
getPipelineRuns($organization, $pipeline): \OpenAPI\Client\Model\PipelineRun[]
```



Retrieve all runs details for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->getPipelineRuns($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelineRuns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\PipelineRun[]**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPipelines()`

```php
getPipelines($organization): \OpenAPI\Client\Model\Pipeline[]
```



Retrieve all pipelines details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization

try {
    $result = $apiInstance->getPipelines($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getPipelines: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |

### Return type

[**\OpenAPI\Client\Model\Pipeline[]**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSCM()`

```php
getSCM($organization, $scm): \OpenAPI\Client\Model\GithubScm
```



Retrieve SCM details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$scm = 'scm_example'; // string | Name of SCM

try {
    $result = $apiInstance->getSCM($organization, $scm);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCM: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **scm** | **string**| Name of SCM | |

### Return type

[**\OpenAPI\Client\Model\GithubScm**](../Model/GithubScm.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSCMOrganisationRepositories()`

```php
getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id, $page_size, $page_number): \OpenAPI\Client\Model\GithubOrganization[]
```



Retrieve SCM organization repositories details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$scm = 'scm_example'; // string | Name of SCM
$scm_organisation = 'scm_organisation_example'; // string | Name of the SCM organization
$credential_id = 'credential_id_example'; // string | Credential ID
$page_size = 56; // int | Number of items in a page
$page_number = 56; // int | Page number

try {
    $result = $apiInstance->getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id, $page_size, $page_number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisationRepositories: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **scm** | **string**| Name of SCM | |
| **scm_organisation** | **string**| Name of the SCM organization | |
| **credential_id** | **string**| Credential ID | [optional] |
| **page_size** | **int**| Number of items in a page | [optional] |
| **page_number** | **int**| Page number | [optional] |

### Return type

[**\OpenAPI\Client\Model\GithubOrganization[]**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSCMOrganisationRepository()`

```php
getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id): \OpenAPI\Client\Model\GithubOrganization[]
```



Retrieve SCM organization repository details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$scm = 'scm_example'; // string | Name of SCM
$scm_organisation = 'scm_organisation_example'; // string | Name of the SCM organization
$repository = 'repository_example'; // string | Name of the SCM repository
$credential_id = 'credential_id_example'; // string | Credential ID

try {
    $result = $apiInstance->getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisationRepository: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **scm** | **string**| Name of SCM | |
| **scm_organisation** | **string**| Name of the SCM organization | |
| **repository** | **string**| Name of the SCM repository | |
| **credential_id** | **string**| Credential ID | [optional] |

### Return type

[**\OpenAPI\Client\Model\GithubOrganization[]**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getSCMOrganisations()`

```php
getSCMOrganisations($organization, $scm, $credential_id): \OpenAPI\Client\Model\GithubOrganization[]
```



Retrieve SCM organizations details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$scm = 'scm_example'; // string | Name of SCM
$credential_id = 'credential_id_example'; // string | Credential ID

try {
    $result = $apiInstance->getSCMOrganisations($organization, $scm, $credential_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getSCMOrganisations: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **scm** | **string**| Name of SCM | |
| **credential_id** | **string**| Credential ID | [optional] |

### Return type

[**\OpenAPI\Client\Model\GithubOrganization[]**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUser()`

```php
getUser($organization, $user): \OpenAPI\Client\Model\User
```



Retrieve user details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$user = 'user_example'; // string | Name of the user

try {
    $result = $apiInstance->getUser($organization, $user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **user** | **string**| Name of the user | |

### Return type

[**\OpenAPI\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUserFavorites()`

```php
getUserFavorites($user): \OpenAPI\Client\Model\FavoriteImpl[]
```



Retrieve user favorites details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user = 'user_example'; // string | Name of the user

try {
    $result = $apiInstance->getUserFavorites($user);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUserFavorites: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user** | **string**| Name of the user | |

### Return type

[**\OpenAPI\Client\Model\FavoriteImpl[]**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUsers()`

```php
getUsers($organization): \OpenAPI\Client\Model\User
```



Retrieve users details for an organization

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization

try {
    $result = $apiInstance->getUsers($organization);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->getUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |

### Return type

[**\OpenAPI\Client\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postPipelineRun()`

```php
postPipelineRun($organization, $pipeline, $run): \OpenAPI\Client\Model\QueueItemImpl
```



Replay an organization pipeline run

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run

try {
    $result = $apiInstance->postPipelineRun($organization, $pipeline, $run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->postPipelineRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |

### Return type

[**\OpenAPI\Client\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postPipelineRuns()`

```php
postPipelineRuns($organization, $pipeline): \OpenAPI\Client\Model\QueueItemImpl
```



Start a build for an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline

try {
    $result = $apiInstance->postPipelineRuns($organization, $pipeline);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->postPipelineRuns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |

### Return type

[**\OpenAPI\Client\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putPipelineFavorite()`

```php
putPipelineFavorite($organization, $pipeline, $body): \OpenAPI\Client\Model\FavoriteImpl
```



Favorite/unfavorite a pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$body = True; // bool | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

try {
    $result = $apiInstance->putPipelineFavorite($organization, $pipeline, $body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->putPipelineFavorite: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **body** | **bool**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | |

### Return type

[**\OpenAPI\Client\Model\FavoriteImpl**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `putPipelineRun()`

```php
putPipelineRun($organization, $pipeline, $run, $blocking, $time_out_in_secs): \OpenAPI\Client\Model\PipelineRun
```



Stop a build of an organization pipeline

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organization = 'organization_example'; // string | Name of the organization
$pipeline = 'pipeline_example'; // string | Name of the pipeline
$run = 'run_example'; // string | Name of the run
$blocking = 'blocking_example'; // string | Set to true to make blocking stop, default: false
$time_out_in_secs = 56; // int | Timeout in seconds, default: 10 seconds

try {
    $result = $apiInstance->putPipelineRun($organization, $pipeline, $run, $blocking, $time_out_in_secs);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->putPipelineRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **organization** | **string**| Name of the organization | |
| **pipeline** | **string**| Name of the pipeline | |
| **run** | **string**| Name of the run | |
| **blocking** | **string**| Set to true to make blocking stop, default: false | [optional] |
| **time_out_in_secs** | **int**| Timeout in seconds, default: 10 seconds | [optional] |

### Return type

[**\OpenAPI\Client\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `search()`

```php
search($q): string
```



Search for any resource details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = 'q_example'; // string | Query string

try {
    $result = $apiInstance->search($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->search: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| Query string | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchClasses()`

```php
searchClasses($q): string
```



Get classes details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\BlueOceanApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$q = 'q_example'; // string | Query string containing an array of class names

try {
    $result = $apiInstance->searchClasses($q);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BlueOceanApi->searchClasses: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| Query string containing an array of class names | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
