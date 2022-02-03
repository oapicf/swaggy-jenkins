# PSOpenAPITools.PSOpenAPITools/Api.RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Computer**](RemoteAccessApi.md#Get-Computer) | **GET** /computer/api/json | 
[**Get-Jenkins**](RemoteAccessApi.md#Get-Jenkins) | **GET** /api/json | 
[**Get-Job**](RemoteAccessApi.md#Get-Job) | **GET** /job/{name}/api/json | 
[**Get-JobConfig**](RemoteAccessApi.md#Get-JobConfig) | **GET** /job/{name}/config.xml | 
[**Get-JobLastBuild**](RemoteAccessApi.md#Get-JobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**Get-JobProgressiveText**](RemoteAccessApi.md#Get-JobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**Get-Queue**](RemoteAccessApi.md#Get-Queue) | **GET** /queue/api/json | 
[**Get-QueueItem**](RemoteAccessApi.md#Get-QueueItem) | **GET** /queue/item/{number}/api/json | 
[**Get-View**](RemoteAccessApi.md#Get-View) | **GET** /view/{name}/api/json | 
[**Get-ViewConfig**](RemoteAccessApi.md#Get-ViewConfig) | **GET** /view/{name}/config.xml | 
[**Invoke-HeadJenkins**](RemoteAccessApi.md#Invoke-HeadJenkins) | **HEAD** /api/json | 
[**Submit-CreateItem**](RemoteAccessApi.md#Submit-CreateItem) | **POST** /createItem | 
[**Submit-CreateView**](RemoteAccessApi.md#Submit-CreateView) | **POST** /createView | 
[**Submit-JobBuild**](RemoteAccessApi.md#Submit-JobBuild) | **POST** /job/{name}/build | 
[**Submit-JobConfig**](RemoteAccessApi.md#Submit-JobConfig) | **POST** /job/{name}/config.xml | 
[**Submit-JobDelete**](RemoteAccessApi.md#Submit-JobDelete) | **POST** /job/{name}/doDelete | 
[**Submit-JobDisable**](RemoteAccessApi.md#Submit-JobDisable) | **POST** /job/{name}/disable | 
[**Submit-JobEnable**](RemoteAccessApi.md#Submit-JobEnable) | **POST** /job/{name}/enable | 
[**Submit-JobLastBuildStop**](RemoteAccessApi.md#Submit-JobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**Submit-ViewConfig**](RemoteAccessApi.md#Submit-ViewConfig) | **POST** /view/{name}/config.xml | 


<a name="Get-Computer"></a>
# **Get-Computer**
> ComputerSet Get-Computer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Depth] <Int32><br>



Retrieve computer details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Depth = 56 # Int32 | Recursion depth in response model

try {
    $Result = Get-Computer -Depth $Depth
} catch {
    Write-Host ("Exception occurred when calling Get-Computer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Depth** | **Int32**| Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Jenkins"></a>
# **Get-Jenkins**
> Hudson Get-Jenkins<br>



Retrieve Jenkins details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


try {
    $Result = Get-Jenkins
} catch {
    Write-Host ("Exception occurred when calling Get-Jenkins: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Job"></a>
# **Get-Job**
> FreeStyleProject Get-Job<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>



Retrieve job details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job

try {
    $Result = Get-Job -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-Job: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-JobConfig"></a>
# **Get-JobConfig**
> String Get-JobConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>



Retrieve job configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job

try {
    $Result = Get-JobConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-JobConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-JobLastBuild"></a>
# **Get-JobLastBuild**
> FreeStyleBuild Get-JobLastBuild<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>



Retrieve job's last build details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job

try {
    $Result = Get-JobLastBuild -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-JobLastBuild: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-JobProgressiveText"></a>
# **Get-JobProgressiveText**
> void Get-JobProgressiveText<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Number] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Start] <String><br>



Retrieve job's build progressive text output

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$Number = "MyNumber" # String | Build number
$Start = "MyStart" # String | Starting point of progressive text output

try {
    $Result = Get-JobProgressiveText -Name $Name -Number $Number -Start $Start
} catch {
    Write-Host ("Exception occurred when calling Get-JobProgressiveText: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **Number** | **String**| Build number | 
 **Start** | **String**| Starting point of progressive text output | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Queue"></a>
# **Get-Queue**
> Queue Get-Queue<br>



Retrieve queue details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


try {
    $Result = Get-Queue
} catch {
    Write-Host ("Exception occurred when calling Get-Queue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-QueueItem"></a>
# **Get-QueueItem**
> Queue Get-QueueItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Number] <String><br>



Retrieve queued item details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Number = "MyNumber" # String | Queue number

try {
    $Result = Get-QueueItem -Number $Number
} catch {
    Write-Host ("Exception occurred when calling Get-QueueItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Number** | **String**| Queue number | 

### Return type

[**Queue**](Queue.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-View"></a>
# **Get-View**
> ListView Get-View<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>



Retrieve view details

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the view

try {
    $Result = Get-View -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-View: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the view | 

### Return type

[**ListView**](ListView.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ViewConfig"></a>
# **Get-ViewConfig**
> String Get-ViewConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>



Retrieve view configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the view

try {
    $Result = Get-ViewConfig -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-ViewConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the view | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-HeadJenkins"></a>
# **Invoke-HeadJenkins**
> void Invoke-HeadJenkins<br>



Retrieve Jenkins headers

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


try {
    $Result = Invoke-HeadJenkins
} catch {
    Write-Host ("Exception occurred when calling Invoke-HeadJenkins: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-CreateItem"></a>
# **Submit-CreateItem**
> void Submit-CreateItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>



Create a new job using job configuration, or copied from an existing job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the new job
$From = "MyFrom" # String | Existing job to copy from (optional)
$Mode = "MyMode" # String | Set to 'copy' for copying an existing job (optional)
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)
$ContentType = "MyContentType" # String | Content type header application/xml (optional)
$Body = "MyBody" # String | Job configuration in config.xml format (optional)

try {
    $Result = Submit-CreateItem -Name $Name -From $From -Mode $Mode -JenkinsCrumb $JenkinsCrumb -ContentType $ContentType -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Submit-CreateItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the new job | 
 **From** | **String**| Existing job to copy from | [optional] 
 **Mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **ContentType** | **String**| Content type header application/xml | [optional] 
 **Body** | **String**| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-CreateView"></a>
# **Submit-CreateView**
> void Submit-CreateView<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>



Create a new view using view configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the new view
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)
$ContentType = "MyContentType" # String | Content type header application/xml (optional)
$Body = "MyBody" # String | View configuration in config.xml format (optional)

try {
    $Result = Submit-CreateView -Name $Name -JenkinsCrumb $JenkinsCrumb -ContentType $ContentType -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Submit-CreateView: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the new view | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **ContentType** | **String**| Content type header application/xml | [optional] 
 **Body** | **String**| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobBuild"></a>
# **Submit-JobBuild**
> void Submit-JobBuild<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Json] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Token] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Build a job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$Json = "MyJson" # String | 
$Token = "MyToken" # String |  (optional)
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobBuild -Name $Name -Json $Json -Token $Token -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobBuild: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **Json** | **String**|  | 
 **Token** | **String**|  | [optional] 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobConfig"></a>
# **Submit-JobConfig**
> void Submit-JobConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Update job configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$Body = "MyBody" # String | Job configuration in config.xml format
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobConfig -Name $Name -Body $Body -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **Body** | **String**| Job configuration in config.xml format | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobDelete"></a>
# **Submit-JobDelete**
> void Submit-JobDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Delete a job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobDelete -Name $Name -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobDisable"></a>
# **Submit-JobDisable**
> void Submit-JobDisable<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Disable a job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobDisable -Name $Name -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobDisable: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobEnable"></a>
# **Submit-JobEnable**
> void Submit-JobEnable<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Enable a job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobEnable -Name $Name -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobEnable: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-JobLastBuildStop"></a>
# **Submit-JobLastBuildStop**
> void Submit-JobLastBuildStop<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Stop a job

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the job
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-JobLastBuildStop -Name $Name -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-JobLastBuildStop: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the job | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-ViewConfig"></a>
# **Submit-ViewConfig**
> void Submit-ViewConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JenkinsCrumb] <String><br>



Update view configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Name = "MyName" # String | Name of the view
$Body = "MyBody" # String | View configuration in config.xml format
$JenkinsCrumb = "MyJenkinsCrumb" # String | CSRF protection token (optional)

try {
    $Result = Submit-ViewConfig -Name $Name -Body $Body -JenkinsCrumb $JenkinsCrumb
} catch {
    Write-Host ("Exception occurred when calling Submit-ViewConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Name of the view | 
 **Body** | **String**| View configuration in config.xml format | 
 **JenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

