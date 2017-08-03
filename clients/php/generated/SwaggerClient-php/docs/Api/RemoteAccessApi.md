# Swagger\Client\RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getCrumb**](RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
> \Swagger\Client\Model\ComputerSet getComputer($depth)



Retrieve computer details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$depth = 56; // int | Recursion depth in response model

try {
    $result = $api_instance->getComputer($depth);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getComputer: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int**| Recursion depth in response model |

### Return type

[**\Swagger\Client\Model\ComputerSet**](../Model/ComputerSet.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getCrumb**
> \Swagger\Client\Model\DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());

try {
    $result = $api_instance->getCrumb();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getCrumb: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\DefaultCrumbIssuer**](../Model/DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getJenkins**
> \Swagger\Client\Model\Hudson getJenkins()



Retrieve Jenkins details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());

try {
    $result = $api_instance->getJenkins();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJenkins: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Hudson**](../Model/Hudson.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getJob**
> \Swagger\Client\Model\FreeStyleProject getJob($name)



Retrieve job details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job

try {
    $result = $api_instance->getJob($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJob: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |

### Return type

[**\Swagger\Client\Model\FreeStyleProject**](../Model/FreeStyleProject.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getJobConfig**
> string getJobConfig($name)



Retrieve job configuration

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job

try {
    $result = $api_instance->getJobConfig($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobConfig: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getJobLastBuild**
> \Swagger\Client\Model\FreeStyleBuild getJobLastBuild($name)



Retrieve job's last build details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job

try {
    $result = $api_instance->getJobLastBuild($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobLastBuild: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |

### Return type

[**\Swagger\Client\Model\FreeStyleBuild**](../Model/FreeStyleBuild.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getJobProgressiveText**
> getJobProgressiveText($name, $number, $start)



Retrieve job's build progressive text output

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$number = "number_example"; // string | Build number
$start = "start_example"; // string | Starting point of progressive text output

try {
    $api_instance->getJobProgressiveText($name, $number, $start);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getJobProgressiveText: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **number** | **string**| Build number |
 **start** | **string**| Starting point of progressive text output |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQueue**
> \Swagger\Client\Model\Queue getQueue()



Retrieve queue details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());

try {
    $result = $api_instance->getQueue();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getQueue: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQueueItem**
> \Swagger\Client\Model\Queue getQueueItem($number)



Retrieve queued item details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$number = "number_example"; // string | Queue number

try {
    $result = $api_instance->getQueueItem($number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getQueueItem: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **string**| Queue number |

### Return type

[**\Swagger\Client\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getView**
> \Swagger\Client\Model\ListView getView($name)



Retrieve view details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the view

try {
    $result = $api_instance->getView($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getView: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view |

### Return type

[**\Swagger\Client\Model\ListView**](../Model/ListView.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getViewConfig**
> string getViewConfig($name)



Retrieve view configuration

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the view

try {
    $result = $api_instance->getViewConfig($name);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->getViewConfig: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());

try {
    $api_instance->headJenkins();
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->headJenkins: ', $e->getMessage(), PHP_EOL;
}
?>
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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postCreateItem**
> postCreateItem($name, $from, $mode, $body, $jenkins_crumb, $content_type)



Create a new job using job configuration, or copied from an existing job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the new job
$from = "from_example"; // string | Existing job to copy from
$mode = "mode_example"; // string | Set to 'copy' for copying an existing job
$body = "body_example"; // string | Job configuration in config.xml format
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token
$content_type = "content_type_example"; // string | Content type header application/xml

try {
    $api_instance->postCreateItem($name, $from, $mode, $body, $jenkins_crumb, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postCreateItem: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new job |
 **from** | **string**| Existing job to copy from | [optional]
 **mode** | **string**| Set to &#39;copy&#39; for copying an existing job | [optional]
 **body** | **string**| Job configuration in config.xml format | [optional]
 **jenkins_crumb** | **string**| CSRF protection token | [optional]
 **content_type** | **string**| Content type header application/xml | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postCreateView**
> postCreateView($name, $body, $jenkins_crumb, $content_type)



Create a new view using view configuration

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the new view
$body = "body_example"; // string | View configuration in config.xml format
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token
$content_type = "content_type_example"; // string | Content type header application/xml

try {
    $api_instance->postCreateView($name, $body, $jenkins_crumb, $content_type);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postCreateView: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new view |
 **body** | **string**| View configuration in config.xml format | [optional]
 **jenkins_crumb** | **string**| CSRF protection token | [optional]
 **content_type** | **string**| Content type header application/xml | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobBuild**
> postJobBuild($name, $json, $token, $jenkins_crumb)



Build a job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$json = "json_example"; // string | 
$token = "token_example"; // string | 
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobBuild($name, $json, $token, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobBuild: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **json** | **string**|  |
 **token** | **string**|  | [optional]
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobConfig**
> postJobConfig($name, $body, $jenkins_crumb)



Update job configuration

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$body = "body_example"; // string | Job configuration in config.xml format
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobConfig($name, $body, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobConfig: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **body** | **string**| Job configuration in config.xml format |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobDelete**
> postJobDelete($name, $jenkins_crumb)



Delete a job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobDelete($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobDelete: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobDisable**
> postJobDisable($name, $jenkins_crumb)



Disable a job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobDisable($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobDisable: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobEnable**
> postJobEnable($name, $jenkins_crumb)



Enable a job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobEnable($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobEnable: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postJobLastBuildStop**
> postJobLastBuildStop($name, $jenkins_crumb)



Stop a job

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the job
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postJobLastBuildStop($name, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postJobLastBuildStop: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postViewConfig**
> postViewConfig($name, $body, $jenkins_crumb)



Update view configuration

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure HTTP basic authorization: jenkins_auth
Swagger\Client\Configuration::getDefaultConfiguration()->setUsername('YOUR_USERNAME');
Swagger\Client\Configuration::getDefaultConfiguration()->setPassword('YOUR_PASSWORD');

$api_instance = new Swagger\Client\Api\RemoteAccessApi(new \Http\Adapter\Guzzle6\Client());
$name = "name_example"; // string | Name of the view
$body = "body_example"; // string | View configuration in config.xml format
$jenkins_crumb = "jenkins_crumb_example"; // string | CSRF protection token

try {
    $api_instance->postViewConfig($name, $body, $jenkins_crumb);
} catch (Exception $e) {
    echo 'Exception when calling RemoteAccessApi->postViewConfig: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view |
 **body** | **string**| View configuration in config.xml format |
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

