# BaseController

All URIs are relative to `""`

The controller class is defined in **[BaseController.java](../../src/main/java/org/openapitools/controller/BaseController.java)**

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](#getCrumb) | **GET** /crumbIssuer/api/json | 

<a id="getCrumb"></a>
# **getCrumb**
```java
Mono<DefaultCrumbIssuer> BaseController.getCrumb()
```



Retrieve CSRF protection token


### Return type
[**DefaultCrumbIssuer**](../../docs/models/DefaultCrumbIssuer.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

