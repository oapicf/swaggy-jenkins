# OpenAPI\Server\Api\BaseRemoteAccessApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseRemoteAccessApiInterface.md#getCrumb) | **GET** /crumbIssuer/api/json | 


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.baseRemoteAccess:
        class: Acme\MyBundle\Api\BaseRemoteAccessApi
        tags:
            - { name: "open_apiserver.api", api: "baseRemoteAccess" }
    # ...
```

## **getCrumb**
> OpenAPI\Server\Model\DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BaseRemoteAccessApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BaseRemoteAccessApiInterface;

class BaseRemoteAccessApi implements BaseRemoteAccessApiInterface
{

    // ...

    /**
     * Implementation of BaseRemoteAccessApiInterface#getCrumb
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

[**OpenAPI\Server\Model\DefaultCrumbIssuer**](../Model/DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

