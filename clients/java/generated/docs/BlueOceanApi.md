# BlueOceanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} |  |
| [**getJsonWebKey**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} |  |
| [**getJsonWebToken**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token |  |
| [**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ |  |
| [**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ |  |


<a id="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String queue = "queue_example"; // String | Name of the queue item
    try {
      apiInstance.deletePipelineQueueItem(organization, pipeline, queue);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#deletePipelineQueueItem");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **queue** | **String**| Name of the queue item | |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully deleted queue item |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    try {
      User result = apiInstance.getAuthenticatedUser(organization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved authenticated user details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getClasses"></a>
# **getClasses**
> String getClasses(propertyClass)



Get a list of class names supported by a given class

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String propertyClass = "propertyClass_example"; // String | Name of the class
    try {
      String result = apiInstance.getClasses(propertyClass);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getClasses");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyClass** | **String**| Name of the class | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved class names |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getJsonWebKey"></a>
# **getJsonWebKey**
> String getJsonWebKey(key)



Retrieve JSON Web Key

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    Integer key = 56; // Integer | Key ID received as part of JWT header field kid
    try {
      String result = apiInstance.getJsonWebKey(key);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getJsonWebKey");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **Integer**| Key ID received as part of JWT header field kid | |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getJsonWebToken"></a>
# **getJsonWebToken**
> String getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    Integer expiryTimeInMins = 56; // Integer | Token expiry time in minutes, default: 30 minutes
    Integer maxExpiryTimeInMins = 56; // Integer | Maximum token expiry time in minutes, default: 480 minutes
    try {
      String result = apiInstance.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getJsonWebToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expiryTimeInMins** | **Integer**| Token expiry time in minutes, default: 30 minutes | [optional] |
| **maxExpiryTimeInMins** | **Integer**| Maximum token expiry time in minutes, default: 480 minutes | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organization)



Retrieve organization details

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    try {
      Organisation result = apiInstance.getOrganisation(organization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getOrganisation");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

<a id="getOrganisations"></a>
# **getOrganisations**
> List&lt;Organisation&gt; getOrganisations()



Retrieve all organizations details

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    try {
      List<Organisation> result = apiInstance.getOrganisations();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getOrganisations");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;Organisation&gt;**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipeline"></a>
# **getPipeline**
> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      Pipeline result = apiInstance.getPipeline(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipeline");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

<a id="getPipelineActivities"></a>
# **getPipelineActivities**
> List&lt;PipelineActivity&gt; getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      List<PipelineActivity> result = apiInstance.getPipelineActivities(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineActivities");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**List&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all activities details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineBranch"></a>
# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String branch = "branch_example"; // String | Name of the branch
    try {
      BranchImpl result = apiInstance.getPipelineBranch(organization, pipeline, branch);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineBranch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **branch** | **String**| Name of the branch | |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved branch details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String branch = "branch_example"; // String | Name of the branch
    String run = "run_example"; // String | Name of the run
    try {
      PipelineRun result = apiInstance.getPipelineBranchRun(organization, pipeline, branch, run);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineBranchRun");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **branch** | **String**| Name of the branch | |
| **run** | **String**| Name of the run | |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineBranches"></a>
# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      MultibranchPipeline result = apiInstance.getPipelineBranches(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineBranches");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all branches details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineFolder"></a>
# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String folder = "folder_example"; // String | Name of the folder
    try {
      PipelineFolderImpl result = apiInstance.getPipelineFolder(organization, folder);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineFolder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **folder** | **String**| Name of the folder | |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved folder details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String folder = "folder_example"; // String | Name of the folder
    try {
      PipelineImpl result = apiInstance.getPipelineFolderPipeline(organization, pipeline, folder);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineFolderPipeline");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **folder** | **String**| Name of the folder | |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineQueue"></a>
# **getPipelineQueue**
> List&lt;QueueItemImpl&gt; getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      List<QueueItemImpl> result = apiInstance.getPipelineQueue(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineQueue");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**List&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRun"></a>
# **getPipelineRun**
> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    try {
      PipelineRun result = apiInstance.getPipelineRun(organization, pipeline, run);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRun");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunLog"></a>
# **getPipelineRunLog**
> String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    Integer start = 56; // Integer | Start position of the log
    Boolean download = true; // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
    try {
      String result = apiInstance.getPipelineRunLog(organization, pipeline, run, start, download);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunLog");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **start** | **Integer**| Start position of the log | [optional] |
| **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunNode"></a>
# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    String node = "node_example"; // String | Name of the node
    try {
      PipelineRunNode result = apiInstance.getPipelineRunNode(organization, pipeline, run, node);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunNode");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **node** | **String**| Name of the node | |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    String node = "node_example"; // String | Name of the node
    String step = "step_example"; // String | Name of the step
    try {
      PipelineStepImpl result = apiInstance.getPipelineRunNodeStep(organization, pipeline, run, node, step);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStep");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **node** | **String**| Name of the node | |
| **step** | **String**| Name of the step | |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node step details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    String node = "node_example"; // String | Name of the node
    String step = "step_example"; // String | Name of the step
    try {
      String result = apiInstance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStepLog");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **node** | **String**| Name of the node | |
| **step** | **String**| Name of the step | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run node step log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> List&lt;PipelineStepImpl&gt; getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    String node = "node_example"; // String | Name of the node
    try {
      List<PipelineStepImpl> result = apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeSteps");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **node** | **String**| Name of the node | |

### Return type

[**List&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node steps details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
> List&lt;PipelineRunNode&gt; getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    try {
      List<PipelineRunNode> result = apiInstance.getPipelineRunNodes(organization, pipeline, run);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodes");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |

### Return type

[**List&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run nodes details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelineRuns"></a>
# **getPipelineRuns**
> List&lt;PipelineRun&gt; getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      List<PipelineRun> result = apiInstance.getPipelineRuns(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelineRuns");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**List&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved runs details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getPipelines"></a>
# **getPipelines**
> List&lt;Pipeline&gt; getPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    try {
      List<Pipeline> result = apiInstance.getPipelines(organization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getPipelines");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |

### Return type

[**List&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getSCM"></a>
# **getSCM**
> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String scm = "scm_example"; // String | Name of SCM
    try {
      GithubScm result = apiInstance.getSCM(organization, scm);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getSCM");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **scm** | **String**| Name of SCM | |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> List&lt;GithubOrganization&gt; getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String scm = "scm_example"; // String | Name of SCM
    String scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
    String credentialId = "credentialId_example"; // String | Credential ID
    Integer pageSize = 56; // Integer | Number of items in a page
    Integer pageNumber = 56; // Integer | Page number
    try {
      List<GithubOrganization> result = apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepositories");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **scm** | **String**| Name of SCM | |
| **scmOrganisation** | **String**| Name of the SCM organization | |
| **credentialId** | **String**| Credential ID | [optional] |
| **pageSize** | **Integer**| Number of items in a page | [optional] |
| **pageNumber** | **Integer**| Page number | [optional] |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organization repositories details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> List&lt;GithubOrganization&gt; getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String scm = "scm_example"; // String | Name of SCM
    String scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
    String repository = "repository_example"; // String | Name of the SCM repository
    String credentialId = "credentialId_example"; // String | Credential ID
    try {
      List<GithubOrganization> result = apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepository");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **scm** | **String**| Name of SCM | |
| **scmOrganisation** | **String**| Name of the SCM organization | |
| **repository** | **String**| Name of the SCM repository | |
| **credentialId** | **String**| Credential ID | [optional] |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getSCMOrganisations"></a>
# **getSCMOrganisations**
> List&lt;GithubOrganization&gt; getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String scm = "scm_example"; // String | Name of SCM
    String credentialId = "credentialId_example"; // String | Credential ID
    try {
      List<GithubOrganization> result = apiInstance.getSCMOrganisations(organization, scm, credentialId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getSCMOrganisations");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **scm** | **String**| Name of SCM | |
| **credentialId** | **String**| Credential ID | [optional] |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getUser"></a>
# **getUser**
> User getUser(organization, user)



Retrieve user details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String user = "user_example"; // String | Name of the user
    try {
      User result = apiInstance.getUser(organization, user);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getUser");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **user** | **String**| Name of the user | |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getUserFavorites"></a>
# **getUserFavorites**
> List&lt;FavoriteImpl&gt; getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String user = "user_example"; // String | Name of the user
    try {
      List<FavoriteImpl> result = apiInstance.getUserFavorites(user);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getUserFavorites");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **user** | **String**| Name of the user | |

### Return type

[**List&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users favorites details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="getUsers"></a>
# **getUsers**
> User getUsers(organization)



Retrieve users details for an organization

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    try {
      User result = apiInstance.getUsers(organization);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#getUsers");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="postPipelineRun"></a>
# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    try {
      QueueItemImpl result = apiInstance.postPipelineRun(organization, pipeline, run);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#postPipelineRun");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully replayed a pipeline run |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="postPipelineRuns"></a>
# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    try {
      QueueItemImpl result = apiInstance.postPipelineRuns(organization, pipeline);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#postPipelineRuns");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully started a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="putPipelineFavorite"></a>
# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    Boolean body = true; // Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
    try {
      FavoriteImpl result = apiInstance.putPipelineFavorite(organization, pipeline, body);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#putPipelineFavorite");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **body** | **Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully favorited/unfavorited a pipeline |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="putPipelineRun"></a>
# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String organization = "organization_example"; // String | Name of the organization
    String pipeline = "pipeline_example"; // String | Name of the pipeline
    String run = "run_example"; // String | Name of the run
    String blocking = "blocking_example"; // String | Set to true to make blocking stop, default: false
    Integer timeOutInSecs = 56; // Integer | Timeout in seconds, default: 10 seconds
    try {
      PipelineRun result = apiInstance.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#putPipelineRun");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | |
| **pipeline** | **String**| Name of the pipeline | |
| **run** | **String**| Name of the run | |
| **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] |
| **timeOutInSecs** | **Integer**| Timeout in seconds, default: 10 seconds | [optional] |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="search"></a>
# **search**
> String search(q)



Search for any resource details

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String q = "q_example"; // String | Query string
    try {
      String result = apiInstance.search(q);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#search");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | **String**| Query string | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

<a id="searchClasses"></a>
# **searchClasses**
> String searchClasses(q)



Get classes details

### Example
```java
// Import classes:
import com.github.oapicf.swaggyjenkins.ApiClient;
import com.github.oapicf.swaggyjenkins.ApiException;
import com.github.oapicf.swaggyjenkins.Configuration;
import com.github.oapicf.swaggyjenkins.auth.*;
import com.github.oapicf.swaggyjenkins.models.*;
import com.github.oapicf.swaggyjenkins.api.BlueOceanApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BlueOceanApi apiInstance = new BlueOceanApi(defaultClient);
    String q = "q_example"; // String | Query string containing an array of class names
    try {
      String result = apiInstance.searchClasses(q);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BlueOceanApi#searchClasses");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | **String**| Query string containing an array of class names | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

