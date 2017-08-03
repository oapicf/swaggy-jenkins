# Swagger\Server\Api\RemoteAccessApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApiInterface.md#getComputer) | **GET** /computer/api/json | 
[**getCrumb**](RemoteAccessApiInterface.md#getCrumb) | **GET** /crumbIssuer/api/json | 
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
            - { name: "swagger_server.api", api: "remoteAccess" }
    # ...
```

## **getComputer**
> Swagger\Server\Model\ComputerSet getComputer($depth)



Retrieve computer details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\ComputerSet**](../Model/ComputerSet.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getCrumb**
> Swagger\Server\Model\DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#getCrumb
     */
    public function getCrumb()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Swagger\Server\Model\DefaultCrumbIssuer**](../Model/DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJenkins**
> Swagger\Server\Model\Hudson getJenkins()



Retrieve Jenkins details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\Hudson**](../Model/Hudson.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJob**
> Swagger\Server\Model\FreeStyleProject getJob($name)



Retrieve job details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\FreeStyleProject**](../Model/FreeStyleProject.md)

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

use Swagger\Server\Api\RemoteAccessApiInterface;

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
> Swagger\Server\Model\FreeStyleBuild getJobLastBuild($name)



Retrieve job's last build details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\FreeStyleBuild**](../Model/FreeStyleBuild.md)

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

use Swagger\Server\Api\RemoteAccessApiInterface;

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
> Swagger\Server\Model\Queue getQueue()



Retrieve queue details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getQueueItem**
> Swagger\Server\Model\Queue getQueueItem($number)



Retrieve queued item details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\Queue**](../Model/Queue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getView**
> Swagger\Server\Model\ListView getView($name)



Retrieve view details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

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

[**Swagger\Server\Model\ListView**](../Model/ListView.md)

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

use Swagger\Server\Api\RemoteAccessApiInterface;

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

use Swagger\Server\Api\RemoteAccessApiInterface;

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
> postCreateItem($name, $from, $mode, $body, $jenkins_crumb, $content_type)



Create a new job using job configuration, or copied from an existing job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postCreateItem
     */
    public function postCreateItem($name, $from = null, $mode = null, $body = null, $jenkins_crumb = null, $content_type = null)
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

## **postCreateView**
> postCreateView($name, $body, $jenkins_crumb, $content_type)



Create a new view using view configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postCreateView
     */
    public function postCreateView($name, $body = null, $jenkins_crumb = null, $content_type = null)
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

## **postJobBuild**
> postJobBuild($name, $json, $token, $jenkins_crumb)



Build a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobBuild
     */
    public function postJobBuild($name, $json, $token = null, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobConfig**
> postJobConfig($name, $body, $jenkins_crumb)



Update job configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobConfig
     */
    public function postJobConfig($name, $body, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobDelete**
> postJobDelete($name, $jenkins_crumb)



Delete a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobDelete
     */
    public function postJobDelete($name, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobDisable**
> postJobDisable($name, $jenkins_crumb)



Disable a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobDisable
     */
    public function postJobDisable($name, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobEnable**
> postJobEnable($name, $jenkins_crumb)



Enable a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobEnable
     */
    public function postJobEnable($name, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postJobLastBuildStop**
> postJobLastBuildStop($name, $jenkins_crumb)



Stop a job

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postJobLastBuildStop
     */
    public function postJobLastBuildStop($name, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postViewConfig**
> postViewConfig($name, $body, $jenkins_crumb)



Update view configuration

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/RemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\RemoteAccessApiInterface;

class RemoteAccessApi implements RemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of RemoteAccessApiInterface#postViewConfig
     */
    public function postViewConfig($name, $body, $jenkins_crumb = null)
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
 **jenkins_crumb** | **string**| CSRF protection token | [optional]

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

