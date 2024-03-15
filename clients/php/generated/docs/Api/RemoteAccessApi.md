# OpenAPI\Client\RemoteAccessApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getComputer()**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json |  |
| [**getJenkins()**](RemoteAccessApi.md#getJenkins) | **GET** /api/json |  |
| [**getJob()**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json |  |
| [**getJobConfig()**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml |  |
| [**getJobLastBuild()**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json |  |
| [**getJobProgressiveText()**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText |  |
| [**getQueue()**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json |  |
| [**getQueueItem()**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json |  |
| [**getView()**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json |  |
| [**getViewConfig()**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml |  |
| [**headJenkins()**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json |  |
| [**postCreateItem()**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem |  |
| [**postCreateView()**](RemoteAccessApi.md#postCreateView) | **POST** /createView |  |
| [**postJobBuild()**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build |  |
| [**postJobConfig()**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml |  |
| [**postJobDelete()**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete |  |
| [**postJobDisable()**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable |  |
| [**postJobEnable()**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable |  |
| [**postJobLastBuildStop()**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop |  |
| [**postViewConfig()**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml |  |


## `getComputer()`

```php
getComputer($depth): \OpenAPI\Client\Model\ComputerSet
```



Retrieve computer details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$depth = 56; // int | Recursion depth in response model

try {
    $result = $apiInstance->getComputer($depth);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getComputer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **depth** | **int**| Recursion depth in response model | |

### Return type

[**\OpenAPI\Client\Model\ComputerSet**](../Model/ComputerSet.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJenkins()`

```php
getJenkins(): \OpenAPI\Client\Model\Hudson
```



Retrieve Jenkins details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getJenkins();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJenkins: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Hudson**](../Model/Hudson.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJob()`

```php
getJob($name): \OpenAPI\Client\Model\FreeStyleProject
```



Retrieve job details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job

try {
    $result = $apiInstance->getJob($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJob: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |

### Return type

[**\OpenAPI\Client\Model\FreeStyleProject**](../Model/FreeStyleProject.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJobConfig()`

```php
getJobConfig($name): string
```



Retrieve job configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job

try {
    $result = $apiInstance->getJobConfig($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobConfig: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJobLastBuild()`

```php
getJobLastBuild($name): \OpenAPI\Client\Model\FreeStyleBuild
```



Retrieve job's last build details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job

try {
    $result = $apiInstance->getJobLastBuild($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobLastBuild: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |

### Return type

[**\OpenAPI\Client\Model\FreeStyleBuild**](../Model/FreeStyleBuild.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getJobProgressiveText()`

```php
getJobProgressiveText($name, $number, $start)
```



Retrieve job's build progressive text output

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$number = 'number_example'; // string | Build number
$start = 'start_example'; // string | Starting point of progressive text output

try {
    $apiInstance->getJobProgressiveText($name, $number, $start);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobProgressiveText: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **number** | **string**| Build number | |
| **start** | **string**| Starting point of progressive text output | |

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

## `getQueue()`

```php
getQueue(): \OpenAPI\Client\Model\Queue
```



Retrieve queue details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getQueue();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getQueue: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getQueueItem()`

```php
getQueueItem($number): \OpenAPI\Client\Model\Queue
```



Retrieve queued item details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$number = 'number_example'; // string | Queue number

try {
    $result = $apiInstance->getQueueItem($number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getQueueItem: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **string**| Queue number | |

### Return type

[**\OpenAPI\Client\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getView()`

```php
getView($name): \OpenAPI\Client\Model\ListView
```



Retrieve view details

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the view

try {
    $result = $apiInstance->getView($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getView: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the view | |

### Return type

[**\OpenAPI\Client\Model\ListView**](../Model/ListView.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getViewConfig()`

```php
getViewConfig($name): string
```



Retrieve view configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the view

try {
    $result = $apiInstance->getViewConfig($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getViewConfig: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the view | |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/xml`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `headJenkins()`

```php
headJenkins()
```



Retrieve Jenkins headers

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->headJenkins();
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->headJenkins: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

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

## `postCreateItem()`

```php
postCreateItem($name, $from, $mode, $jenkins_crumb, $content_type, $body)
```



Create a new job using job configuration, or copied from an existing job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the new job
$from = 'from_example'; // string | Existing job to copy from
$mode = 'mode_example'; // string | Set to 'copy' for copying an existing job
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token
$content_type = 'content_type_example'; // string | Content type header application/xml
$body = 'body_example'; // string | Job configuration in config.xml format

try {
    $apiInstance->postCreateItem($name, $from, $mode, $jenkins_crumb, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postCreateItem: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the new job | |
| **from** | **string**| Existing job to copy from | [optional] |
| **mode** | **string**| Set to &#39;copy&#39; for copying an existing job | [optional] |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |
| **content_type** | **string**| Content type header application/xml | [optional] |
| **body** | **string**| Job configuration in config.xml format | [optional] |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postCreateView()`

```php
postCreateView($name, $jenkins_crumb, $content_type, $body)
```



Create a new view using view configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the new view
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token
$content_type = 'content_type_example'; // string | Content type header application/xml
$body = 'body_example'; // string | View configuration in config.xml format

try {
    $apiInstance->postCreateView($name, $jenkins_crumb, $content_type, $body);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postCreateView: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the new view | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |
| **content_type** | **string**| Content type header application/xml | [optional] |
| **body** | **string**| View configuration in config.xml format | [optional] |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postJobBuild()`

```php
postJobBuild($name, $json, $token, $jenkins_crumb)
```



Build a job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$json = 'json_example'; // string
$token = 'token_example'; // string
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobBuild($name, $json, $token, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobBuild: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **json** | **string**|  | |
| **token** | **string**|  | [optional] |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

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

## `postJobConfig()`

```php
postJobConfig($name, $body, $jenkins_crumb)
```



Update job configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$body = 'body_example'; // string | Job configuration in config.xml format
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobConfig($name, $body, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobConfig: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **body** | **string**| Job configuration in config.xml format | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `postJobDelete()`

```php
postJobDelete($name, $jenkins_crumb)
```



Delete a job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobDelete($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

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

## `postJobDisable()`

```php
postJobDisable($name, $jenkins_crumb)
```



Disable a job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobDisable($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobDisable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

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

## `postJobEnable()`

```php
postJobEnable($name, $jenkins_crumb)
```



Enable a job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobEnable($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobEnable: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

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

## `postJobLastBuildStop()`

```php
postJobLastBuildStop($name, $jenkins_crumb)
```



Stop a job

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the job
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postJobLastBuildStop($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobLastBuildStop: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the job | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

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

## `postViewConfig()`

```php
postViewConfig($name, $body, $jenkins_crumb)
```



Update view configuration

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure HTTP basic authorization: jenkins_auth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new OpenAPI\Client\Api\RemoteAccessApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$name = 'name_example'; // string | Name of the view
$body = 'body_example'; // string | View configuration in config.xml format
$jenkins_crumb = 'jenkins_crumb_example'; // string | CSRF protection token

try {
    $apiInstance->postViewConfig($name, $body, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postViewConfig: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **string**| Name of the view | |
| **body** | **string**| View configuration in config.xml format | |
| **jenkins_crumb** | **string**| CSRF protection token | [optional] |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `*/*`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
