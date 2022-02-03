# openapi.model.FreeStyleProject

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**class_** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**url** | **String** |  | [optional] 
**color** | **String** |  | [optional] 
**actions** | [**List<FreeStyleProjectactions>**](FreeStyleProjectactions.md) |  | [optional] [default to const []]
**description** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**displayNameOrNull** | **String** |  | [optional] 
**fullDisplayName** | **String** |  | [optional] 
**fullName** | **String** |  | [optional] 
**buildable** | **bool** |  | [optional] 
**builds** | [**List<FreeStyleBuild>**](FreeStyleBuild.md) |  | [optional] [default to const []]
**firstBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**healthReport** | [**List<FreeStyleProjecthealthReport>**](FreeStyleProjecthealthReport.md) |  | [optional] [default to const []]
**inQueue** | **bool** |  | [optional] 
**keepDependencies** | **bool** |  | [optional] 
**lastBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**lastCompletedBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**lastFailedBuild** | **String** |  | [optional] 
**lastStableBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**lastSuccessfulBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**lastUnstableBuild** | **String** |  | [optional] 
**lastUnsuccessfulBuild** | **String** |  | [optional] 
**nextBuildNumber** | **int** |  | [optional] 
**queueItem** | **String** |  | [optional] 
**concurrentBuild** | **bool** |  | [optional] 
**scm** | [**NullSCM**](NullSCM.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


