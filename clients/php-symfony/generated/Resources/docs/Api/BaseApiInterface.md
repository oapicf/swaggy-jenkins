# OpenAPI\Server\Api\BaseApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseApiInterface.md#getCrumb) | **GET** /crumbIssuer/api/json | 


## Service Declaration
```yaml
# config/services.yml
services:
    # ...
    Acme\MyBundle\Api\BaseApi:
        tags:
            - { name: "open_api_server.api", api: "base" }
    # ...
```

## **getCrumb**
> OpenAPI\Server\Model\DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BaseApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BaseApiInterface;

class BaseApi implements BaseApiInterface
{

    // ...

    /**
     * Implementation of BaseApiInterface#getCrumb
     */
    public function getCrumb(, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\DefaultCrumbIssuer
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenAPI\Server\Model\DefaultCrumbIssuer**](../Model/DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

