# WWW::OpenAPIClient::Object::FreeStyleProject

## Load the model package
```perl
use WWW::OpenAPIClient::Object::FreeStyleProject;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] 
**name** | **string** |  | [optional] 
**url** | **string** |  | [optional] 
**color** | **string** |  | [optional] 
**actions** | [**ARRAY[FreeStyleProjectactions]**](FreeStyleProjectactions.md) |  | [optional] 
**description** | **string** |  | [optional] 
**display_name** | **string** |  | [optional] 
**display_name_or_null** | **string** |  | [optional] 
**full_display_name** | **string** |  | [optional] 
**full_name** | **string** |  | [optional] 
**buildable** | **boolean** |  | [optional] 
**builds** | [**ARRAY[FreeStyleBuild]**](FreeStyleBuild.md) |  | [optional] 
**first_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**health_report** | [**ARRAY[FreeStyleProjecthealthReport]**](FreeStyleProjecthealthReport.md) |  | [optional] 
**in_queue** | **boolean** |  | [optional] 
**keep_dependencies** | **boolean** |  | [optional] 
**last_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_completed_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_failed_build** | **string** |  | [optional] 
**last_stable_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_successful_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_unstable_build** | **string** |  | [optional] 
**last_unsuccessful_build** | **string** |  | [optional] 
**next_build_number** | **int** |  | [optional] 
**queue_item** | **string** |  | [optional] 
**concurrent_build** | **boolean** |  | [optional] 
**scm** | [**NullSCM**](NullSCM.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


