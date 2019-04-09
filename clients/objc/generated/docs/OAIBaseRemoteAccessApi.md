# OAIBaseRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](OAIBaseRemoteAccessApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 


# **getCrumb**
```objc
-(NSURLSessionTask*) getCrumbWithCompletionHandler: 
        (void (^)(OAIDefaultCrumbIssuer* output, NSError* error)) handler;
```



Retrieve CSRF protection token

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: jenkins_auth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];



OAIBaseRemoteAccessApi*apiInstance = [[OAIBaseRemoteAccessApi alloc] init];

[apiInstance getCrumbWithCompletionHandler: 
          ^(OAIDefaultCrumbIssuer* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBaseRemoteAccessApi->getCrumb: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIDefaultCrumbIssuer***](OAIDefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

