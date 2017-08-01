# IO.Swagger..BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAuthenticatedUser**](BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**GetClasses**](BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**GetOrganisation**](BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organisation} | 
[**GetOrganisations**](BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**GetPipelineBranchByOrg**](BlueOceanApi.md#getpipelinebranchbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchesByOrg**](BlueOceanApi.md#getpipelinebranchesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**GetPipelineByOrg**](BlueOceanApi.md#getpipelinebyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**GetPipelineFolderByOrg**](BlueOceanApi.md#getpipelinefolderbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**GetPipelineFolderByOrg_0**](BlueOceanApi.md#getpipelinefolderbyorg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelinesByOrg**](BlueOceanApi.md#getpipelinesbyorg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**GetUser**](BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**GetUsers**](BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
[**Search**](BlueOceanApi.md#search) | **GET** /blue/rest/classes/ | 
[**Search_0**](BlueOceanApi.md#search_0) | **GET** /blue/rest/search/ | 


<a name="getauthenticateduser"></a>
# **GetAuthenticatedUser**
> SwaggyjenkinsUser GetAuthenticatedUser (string organisation)



Retrieve authenticated user details for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetAuthenticatedUserExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation

            try
            {
                SwaggyjenkinsUser result = apiInstance.GetAuthenticatedUser(organisation);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetAuthenticatedUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getclasses"></a>
# **GetClasses**
> string GetClasses (string _class)



Get a list of class names supported by a given class

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetClassesExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var _class = _class_example;  // string | Name of the class

            try
            {
                string result = apiInstance.GetClasses(_class);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetClasses: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **string**| Name of the class | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisation"></a>
# **GetOrganisation**
> SwaggyjenkinsOrganisation GetOrganisation (string organisation)



Retrieve organisation details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation

            try
            {
                SwaggyjenkinsOrganisation result = apiInstance.GetOrganisation(organisation);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisations"></a>
# **GetOrganisations**
> GetOrganisations GetOrganisations ()



Retrieve all organisations details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationsExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();

            try
            {
                GetOrganisations result = apiInstance.GetOrganisations();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetOrganisations: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrganisations**](GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebranchbyorg"></a>
# **GetPipelineBranchByOrg**
> IojenkinsblueoceanrestimplpipelineBranchImpl GetPipelineBranchByOrg (string organisation, string pipeline, string branch)



Retrieve branch details for an organisation pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineBranchByOrgExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var branch = branch_example;  // string | Name of the branch

            try
            {
                IojenkinsblueoceanrestimplpipelineBranchImpl result = apiInstance.GetPipelineBranchByOrg(organisation, pipeline, branch);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineBranchByOrg: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **branch** | **string**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebranchesbyorg"></a>
# **GetPipelineBranchesByOrg**
> GetMultibranchPipeline GetPipelineBranchesByOrg (string organisation, string pipeline)



Retrieve all branches details for an organisation pipeline

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineBranchesByOrgExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                GetMultibranchPipeline result = apiInstance.GetPipelineBranchesByOrg(organisation, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineBranchesByOrg: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinebyorg"></a>
# **GetPipelineByOrg**
> SwaggyjenkinsPipeline GetPipelineByOrg (string organisation, string pipeline)



Retrieve pipeline details for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineByOrgExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var pipeline = pipeline_example;  // string | Name of the pipeline

            try
            {
                SwaggyjenkinsPipeline result = apiInstance.GetPipelineByOrg(organisation, pipeline);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineByOrg: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinefolderbyorg"></a>
# **GetPipelineFolderByOrg**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl GetPipelineFolderByOrg (string organisation, string folder)



Retrieve pipeline folder for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineFolderByOrgExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var folder = folder_example;  // string | Name of the folder

            try
            {
                IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl result = apiInstance.GetPipelineFolderByOrg(organisation, folder);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineFolderByOrg: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinefolderbyorg_0"></a>
# **GetPipelineFolderByOrg_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl GetPipelineFolderByOrg_0 (string organisation, string pipeline, string folder)



Retrieve pipeline details for an organisation folder

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelineFolderByOrg_0Example
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var pipeline = pipeline_example;  // string | Name of the pipeline
            var folder = folder_example;  // string | Name of the folder

            try
            {
                IojenkinsblueoceanserviceembeddedrestPipelineImpl result = apiInstance.GetPipelineFolderByOrg_0(organisation, pipeline, folder);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelineFolderByOrg_0: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **pipeline** | **string**| Name of the pipeline | 
 **folder** | **string**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getpipelinesbyorg"></a>
# **GetPipelinesByOrg**
> GetPipelines GetPipelinesByOrg (string organisation)



Retrieve all pipelines details for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPipelinesByOrgExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation

            try
            {
                GetPipelines result = apiInstance.GetPipelinesByOrg(organisation);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetPipelinesByOrg: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuser"></a>
# **GetUser**
> SwaggyjenkinsUser GetUser (string organisation, string user)



Retrieve user details for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation
            var user = user_example;  // string | Name of the user

            try
            {
                SwaggyjenkinsUser result = apiInstance.GetUser(organisation, user);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 
 **user** | **string**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getusers"></a>
# **GetUsers**
> SwaggyjenkinsUser GetUsers (string organisation)



Retrieve users details for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUsersExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var organisation = organisation_example;  // string | Name of the organisation

            try
            {
                SwaggyjenkinsUser result = apiInstance.GetUsers(organisation);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.GetUsers: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **string**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="search"></a>
# **Search**
> string Search (string q)



Get classes details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class SearchExample
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var q = q_example;  // string | Query string containing an array of class names

            try
            {
                string result = apiInstance.Search(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.Search: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="search_0"></a>
# **Search_0**
> string Search_0 (string q)



Search for any resource details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class Search_0Example
    {
        public void main()
        {
            
            var apiInstance = new BlueOceanApi();
            var q = q_example;  // string | Query string

            try
            {
                string result = apiInstance.Search_0(q);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BlueOceanApi.Search_0: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

