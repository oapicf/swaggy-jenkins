# BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 


## Creating BaseApi

To initiate an instance of `BaseApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.BaseApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(BaseApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    BaseApi baseApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="getCrumb"></a>
# **getCrumb**
```java
Mono<DefaultCrumbIssuer> BaseApi.getCrumb()
```



Retrieve CSRF protection token



### Return type
[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

