# OpenAPI\Server\Api\RemoteAccessApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApiInterface.md#getComputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApiInterface.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApiInterface.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApiInterface.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApiInterface.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApiInterface.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApiInterface.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApiInterface.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApiInterface.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApiInterface.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApiInterface.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApiInterface.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApiInterface.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApiInterface.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApiInterface.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApiInterface.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApiInterface.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApiInterface.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApiInterface.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApiInterface.md#postViewConfig) | **POST** /view/{name}/config.xml | 


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.remoteAccess:
        class: Acme\MyBundle\Api\RemoteAccessApi
        tags:
            - { name: "open_api_server.api", api: "remoteAccess" }
    # ...
```

## **getComputer**
> OpenAPI\Server\Model\ComputerSet getComputer($depth)



Retrieve computer details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getComputer
     */
    public function getComputer($depth)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int**| Recursion depth in response model |

### Return type

[**OpenAPI\Server\Model\ComputerSet**](../Model/ComputerSet.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJenkins**
> OpenAPI\Server\Model\Hudson getJenkins()



Retrieve Jenkins details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getJenkins
     */
    public function getJenkins()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenAPI\Server\Model\Hudson**](../Model/Hudson.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJob**
> OpenAPI\Server\Model\FreeStyleProject getJob($name)



Retrieve job details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getJob
     */
    public function getJob($name)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |

### Return type

[**OpenAPI\Server\Model\FreeStyleProject**](../Model/FreeStyleProject.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJobConfig**
> string getJobConfig($name)



Retrieve job configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getJobConfig
     */
    public function getJobConfig($name)
    {
        // Implement the operation ...
    }

    // ...
}
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

## **getJobLastBuild**
> OpenAPI\Server\Model\FreeStyleBuild getJobLastBuild($name)



Retrieve job's last build details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getJobLastBuild
     */
    public function getJobLastBuild($name)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |

### Return type

[**OpenAPI\Server\Model\FreeStyleBuild**](../Model/FreeStyleBuild.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJobProgressiveText**
> getJobProgressiveText($name, $number, $start)



Retrieve job's build progressive text output

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getJobProgressiveText
     */
    public function getJobProgressiveText($name, $number, $start)
    {
        // Implement the operation ...
    }

    // ...
}
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

## **getQueue**
> OpenAPI\Server\Model\Queue getQueue()



Retrieve queue details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getQueue
     */
    public function getQueue()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenAPI\Server\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getQueueItem**
> OpenAPI\Server\Model\Queue getQueueItem($number)



Retrieve queued item details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getQueueItem
     */
    public function getQueueItem($number)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **string**| Queue number |

### Return type

[**OpenAPI\Server\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getView**
> OpenAPI\Server\Model\ListView getView($name)



Retrieve view details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getView
     */
    public function getView($name)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view |

### Return type

[**OpenAPI\Server\Model\ListView**](../Model/ListView.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getViewConfig**
> string getViewConfig($name)



Retrieve view configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getViewConfig
     */
    public function getViewConfig($name)
    {
        // Implement the operation ...
    }

    // ...
}
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

## **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#headJenkins
     */
    public function headJenkins()
    {
        // Implement the operation ...
    }

    // ...
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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postCreateItem**
> postCreateItem($name, $from, $mode, $jenkinsCrumb, $contentType, $body)



Create a new job using job configuration, or copied from an existing job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postCreateItem
     */
    public function postCreateItem($name, $from = null, $mode = null, $jenkinsCrumb = null, $contentType = null, $body = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new job |
 **from** | **string**| Existing job to copy from | [optional]
 **mode** | **string**| Set to &#39;copy&#39; for copying an existing job | [optional]
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]
 **contentType** | **string**| Content type header application/xml | [optional]
 **body** | **string**| Job configuration in config.xml format | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postCreateView**
> postCreateView($name, $jenkinsCrumb, $contentType, $body)



Create a new view using view configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postCreateView
     */
    public function postCreateView($name, $jenkinsCrumb = null, $contentType = null, $body = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the new view |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]
 **contentType** | **string**| Content type header application/xml | [optional]
 **body** | **string**| View configuration in config.xml format | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobBuild**
> postJobBuild($name, $json, $token, $jenkinsCrumb)



Build a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobBuild
     */
    public function postJobBuild($name, $json, $token = null, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **json** | **string**|  |
 **token** | **string**|  | [optional]
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobConfig**
> postJobConfig($name, $body, $jenkinsCrumb)



Update job configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobConfig
     */
    public function postJobConfig($name, $body, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **body** | **string**| Job configuration in config.xml format |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobDelete**
> postJobDelete($name, $jenkinsCrumb)



Delete a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobDelete
     */
    public function postJobDelete($name, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobDisable**
> postJobDisable($name, $jenkinsCrumb)



Disable a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobDisable
     */
    public function postJobDisable($name, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobEnable**
> postJobEnable($name, $jenkinsCrumb)



Enable a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobEnable
     */
    public function postJobEnable($name, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobLastBuildStop**
> postJobLastBuildStop($name, $jenkinsCrumb)



Stop a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobLastBuildStop
     */
    public function postJobLastBuildStop($name, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the job |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postViewConfig**
> postViewConfig($name, $body, $jenkinsCrumb)



Update view configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postViewConfig
     */
    public function postViewConfig($name, $body, $jenkinsCrumb = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of the view |
 **body** | **string**| View configuration in config.xml format |
 **jenkinsCrumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

