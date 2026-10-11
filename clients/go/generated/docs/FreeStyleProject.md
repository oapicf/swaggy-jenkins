# FreeStyleProject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Color** | Pointer to **string** |  | [optional] 
**Actions** | Pointer to [**[]FreeStyleProjectactions**](FreeStyleProjectactions.md) |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**DisplayNameOrNull** | Pointer to **string** |  | [optional] 
**FullDisplayName** | Pointer to **string** |  | [optional] 
**FullName** | Pointer to **string** |  | [optional] 
**Buildable** | Pointer to **bool** |  | [optional] 
**Builds** | Pointer to [**[]FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**FirstBuild** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**HealthReport** | Pointer to [**[]FreeStyleProjecthealthReport**](FreeStyleProjecthealthReport.md) |  | [optional] 
**InQueue** | Pointer to **bool** |  | [optional] 
**KeepDependencies** | Pointer to **bool** |  | [optional] 
**LastBuild** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastCompletedBuild** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastFailedBuild** | Pointer to **string** |  | [optional] 
**LastStableBuild** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastSuccessfulBuild** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastUnstableBuild** | Pointer to **string** |  | [optional] 
**LastUnsuccessfulBuild** | Pointer to **string** |  | [optional] 
**NextBuildNumber** | Pointer to **int32** |  | [optional] 
**QueueItem** | Pointer to **string** |  | [optional] 
**ConcurrentBuild** | Pointer to **bool** |  | [optional] 
**Scm** | Pointer to [**NullSCM**](NullSCM.md) |  | [optional] 

## Methods

### NewFreeStyleProject

`func NewFreeStyleProject() *FreeStyleProject`

NewFreeStyleProject instantiates a new FreeStyleProject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFreeStyleProjectWithDefaults

`func NewFreeStyleProjectWithDefaults() *FreeStyleProject`

NewFreeStyleProjectWithDefaults instantiates a new FreeStyleProject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *FreeStyleProject) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *FreeStyleProject) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *FreeStyleProject) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *FreeStyleProject) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetName

`func (o *FreeStyleProject) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *FreeStyleProject) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *FreeStyleProject) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *FreeStyleProject) HasName() bool`

HasName returns a boolean if a field has been set.

### GetUrl

`func (o *FreeStyleProject) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *FreeStyleProject) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *FreeStyleProject) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *FreeStyleProject) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetColor

`func (o *FreeStyleProject) GetColor() string`

GetColor returns the Color field if non-nil, zero value otherwise.

### GetColorOk

`func (o *FreeStyleProject) GetColorOk() (*string, bool)`

GetColorOk returns a tuple with the Color field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetColor

`func (o *FreeStyleProject) SetColor(v string)`

SetColor sets Color field to given value.

### HasColor

`func (o *FreeStyleProject) HasColor() bool`

HasColor returns a boolean if a field has been set.

### GetActions

`func (o *FreeStyleProject) GetActions() []FreeStyleProjectactions`

GetActions returns the Actions field if non-nil, zero value otherwise.

### GetActionsOk

`func (o *FreeStyleProject) GetActionsOk() (*[]FreeStyleProjectactions, bool)`

GetActionsOk returns a tuple with the Actions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActions

`func (o *FreeStyleProject) SetActions(v []FreeStyleProjectactions)`

SetActions sets Actions field to given value.

### HasActions

`func (o *FreeStyleProject) HasActions() bool`

HasActions returns a boolean if a field has been set.

### GetDescription

`func (o *FreeStyleProject) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *FreeStyleProject) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *FreeStyleProject) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *FreeStyleProject) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDisplayName

`func (o *FreeStyleProject) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *FreeStyleProject) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *FreeStyleProject) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *FreeStyleProject) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetDisplayNameOrNull

`func (o *FreeStyleProject) GetDisplayNameOrNull() string`

GetDisplayNameOrNull returns the DisplayNameOrNull field if non-nil, zero value otherwise.

### GetDisplayNameOrNullOk

`func (o *FreeStyleProject) GetDisplayNameOrNullOk() (*string, bool)`

GetDisplayNameOrNullOk returns a tuple with the DisplayNameOrNull field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayNameOrNull

`func (o *FreeStyleProject) SetDisplayNameOrNull(v string)`

SetDisplayNameOrNull sets DisplayNameOrNull field to given value.

### HasDisplayNameOrNull

`func (o *FreeStyleProject) HasDisplayNameOrNull() bool`

HasDisplayNameOrNull returns a boolean if a field has been set.

### GetFullDisplayName

`func (o *FreeStyleProject) GetFullDisplayName() string`

GetFullDisplayName returns the FullDisplayName field if non-nil, zero value otherwise.

### GetFullDisplayNameOk

`func (o *FreeStyleProject) GetFullDisplayNameOk() (*string, bool)`

GetFullDisplayNameOk returns a tuple with the FullDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullDisplayName

`func (o *FreeStyleProject) SetFullDisplayName(v string)`

SetFullDisplayName sets FullDisplayName field to given value.

### HasFullDisplayName

`func (o *FreeStyleProject) HasFullDisplayName() bool`

HasFullDisplayName returns a boolean if a field has been set.

### GetFullName

`func (o *FreeStyleProject) GetFullName() string`

GetFullName returns the FullName field if non-nil, zero value otherwise.

### GetFullNameOk

`func (o *FreeStyleProject) GetFullNameOk() (*string, bool)`

GetFullNameOk returns a tuple with the FullName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullName

`func (o *FreeStyleProject) SetFullName(v string)`

SetFullName sets FullName field to given value.

### HasFullName

`func (o *FreeStyleProject) HasFullName() bool`

HasFullName returns a boolean if a field has been set.

### GetBuildable

`func (o *FreeStyleProject) GetBuildable() bool`

GetBuildable returns the Buildable field if non-nil, zero value otherwise.

### GetBuildableOk

`func (o *FreeStyleProject) GetBuildableOk() (*bool, bool)`

GetBuildableOk returns a tuple with the Buildable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildable

`func (o *FreeStyleProject) SetBuildable(v bool)`

SetBuildable sets Buildable field to given value.

### HasBuildable

`func (o *FreeStyleProject) HasBuildable() bool`

HasBuildable returns a boolean if a field has been set.

### GetBuilds

`func (o *FreeStyleProject) GetBuilds() []FreeStyleBuild`

GetBuilds returns the Builds field if non-nil, zero value otherwise.

### GetBuildsOk

`func (o *FreeStyleProject) GetBuildsOk() (*[]FreeStyleBuild, bool)`

GetBuildsOk returns a tuple with the Builds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuilds

`func (o *FreeStyleProject) SetBuilds(v []FreeStyleBuild)`

SetBuilds sets Builds field to given value.

### HasBuilds

`func (o *FreeStyleProject) HasBuilds() bool`

HasBuilds returns a boolean if a field has been set.

### GetFirstBuild

`func (o *FreeStyleProject) GetFirstBuild() FreeStyleBuild`

GetFirstBuild returns the FirstBuild field if non-nil, zero value otherwise.

### GetFirstBuildOk

`func (o *FreeStyleProject) GetFirstBuildOk() (*FreeStyleBuild, bool)`

GetFirstBuildOk returns a tuple with the FirstBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstBuild

`func (o *FreeStyleProject) SetFirstBuild(v FreeStyleBuild)`

SetFirstBuild sets FirstBuild field to given value.

### HasFirstBuild

`func (o *FreeStyleProject) HasFirstBuild() bool`

HasFirstBuild returns a boolean if a field has been set.

### GetHealthReport

`func (o *FreeStyleProject) GetHealthReport() []FreeStyleProjecthealthReport`

GetHealthReport returns the HealthReport field if non-nil, zero value otherwise.

### GetHealthReportOk

`func (o *FreeStyleProject) GetHealthReportOk() (*[]FreeStyleProjecthealthReport, bool)`

GetHealthReportOk returns a tuple with the HealthReport field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthReport

`func (o *FreeStyleProject) SetHealthReport(v []FreeStyleProjecthealthReport)`

SetHealthReport sets HealthReport field to given value.

### HasHealthReport

`func (o *FreeStyleProject) HasHealthReport() bool`

HasHealthReport returns a boolean if a field has been set.

### GetInQueue

`func (o *FreeStyleProject) GetInQueue() bool`

GetInQueue returns the InQueue field if non-nil, zero value otherwise.

### GetInQueueOk

`func (o *FreeStyleProject) GetInQueueOk() (*bool, bool)`

GetInQueueOk returns a tuple with the InQueue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInQueue

`func (o *FreeStyleProject) SetInQueue(v bool)`

SetInQueue sets InQueue field to given value.

### HasInQueue

`func (o *FreeStyleProject) HasInQueue() bool`

HasInQueue returns a boolean if a field has been set.

### GetKeepDependencies

`func (o *FreeStyleProject) GetKeepDependencies() bool`

GetKeepDependencies returns the KeepDependencies field if non-nil, zero value otherwise.

### GetKeepDependenciesOk

`func (o *FreeStyleProject) GetKeepDependenciesOk() (*bool, bool)`

GetKeepDependenciesOk returns a tuple with the KeepDependencies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeepDependencies

`func (o *FreeStyleProject) SetKeepDependencies(v bool)`

SetKeepDependencies sets KeepDependencies field to given value.

### HasKeepDependencies

`func (o *FreeStyleProject) HasKeepDependencies() bool`

HasKeepDependencies returns a boolean if a field has been set.

### GetLastBuild

`func (o *FreeStyleProject) GetLastBuild() FreeStyleBuild`

GetLastBuild returns the LastBuild field if non-nil, zero value otherwise.

### GetLastBuildOk

`func (o *FreeStyleProject) GetLastBuildOk() (*FreeStyleBuild, bool)`

GetLastBuildOk returns a tuple with the LastBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastBuild

`func (o *FreeStyleProject) SetLastBuild(v FreeStyleBuild)`

SetLastBuild sets LastBuild field to given value.

### HasLastBuild

`func (o *FreeStyleProject) HasLastBuild() bool`

HasLastBuild returns a boolean if a field has been set.

### GetLastCompletedBuild

`func (o *FreeStyleProject) GetLastCompletedBuild() FreeStyleBuild`

GetLastCompletedBuild returns the LastCompletedBuild field if non-nil, zero value otherwise.

### GetLastCompletedBuildOk

`func (o *FreeStyleProject) GetLastCompletedBuildOk() (*FreeStyleBuild, bool)`

GetLastCompletedBuildOk returns a tuple with the LastCompletedBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastCompletedBuild

`func (o *FreeStyleProject) SetLastCompletedBuild(v FreeStyleBuild)`

SetLastCompletedBuild sets LastCompletedBuild field to given value.

### HasLastCompletedBuild

`func (o *FreeStyleProject) HasLastCompletedBuild() bool`

HasLastCompletedBuild returns a boolean if a field has been set.

### GetLastFailedBuild

`func (o *FreeStyleProject) GetLastFailedBuild() string`

GetLastFailedBuild returns the LastFailedBuild field if non-nil, zero value otherwise.

### GetLastFailedBuildOk

`func (o *FreeStyleProject) GetLastFailedBuildOk() (*string, bool)`

GetLastFailedBuildOk returns a tuple with the LastFailedBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastFailedBuild

`func (o *FreeStyleProject) SetLastFailedBuild(v string)`

SetLastFailedBuild sets LastFailedBuild field to given value.

### HasLastFailedBuild

`func (o *FreeStyleProject) HasLastFailedBuild() bool`

HasLastFailedBuild returns a boolean if a field has been set.

### GetLastStableBuild

`func (o *FreeStyleProject) GetLastStableBuild() FreeStyleBuild`

GetLastStableBuild returns the LastStableBuild field if non-nil, zero value otherwise.

### GetLastStableBuildOk

`func (o *FreeStyleProject) GetLastStableBuildOk() (*FreeStyleBuild, bool)`

GetLastStableBuildOk returns a tuple with the LastStableBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastStableBuild

`func (o *FreeStyleProject) SetLastStableBuild(v FreeStyleBuild)`

SetLastStableBuild sets LastStableBuild field to given value.

### HasLastStableBuild

`func (o *FreeStyleProject) HasLastStableBuild() bool`

HasLastStableBuild returns a boolean if a field has been set.

### GetLastSuccessfulBuild

`func (o *FreeStyleProject) GetLastSuccessfulBuild() FreeStyleBuild`

GetLastSuccessfulBuild returns the LastSuccessfulBuild field if non-nil, zero value otherwise.

### GetLastSuccessfulBuildOk

`func (o *FreeStyleProject) GetLastSuccessfulBuildOk() (*FreeStyleBuild, bool)`

GetLastSuccessfulBuildOk returns a tuple with the LastSuccessfulBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSuccessfulBuild

`func (o *FreeStyleProject) SetLastSuccessfulBuild(v FreeStyleBuild)`

SetLastSuccessfulBuild sets LastSuccessfulBuild field to given value.

### HasLastSuccessfulBuild

`func (o *FreeStyleProject) HasLastSuccessfulBuild() bool`

HasLastSuccessfulBuild returns a boolean if a field has been set.

### GetLastUnstableBuild

`func (o *FreeStyleProject) GetLastUnstableBuild() string`

GetLastUnstableBuild returns the LastUnstableBuild field if non-nil, zero value otherwise.

### GetLastUnstableBuildOk

`func (o *FreeStyleProject) GetLastUnstableBuildOk() (*string, bool)`

GetLastUnstableBuildOk returns a tuple with the LastUnstableBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUnstableBuild

`func (o *FreeStyleProject) SetLastUnstableBuild(v string)`

SetLastUnstableBuild sets LastUnstableBuild field to given value.

### HasLastUnstableBuild

`func (o *FreeStyleProject) HasLastUnstableBuild() bool`

HasLastUnstableBuild returns a boolean if a field has been set.

### GetLastUnsuccessfulBuild

`func (o *FreeStyleProject) GetLastUnsuccessfulBuild() string`

GetLastUnsuccessfulBuild returns the LastUnsuccessfulBuild field if non-nil, zero value otherwise.

### GetLastUnsuccessfulBuildOk

`func (o *FreeStyleProject) GetLastUnsuccessfulBuildOk() (*string, bool)`

GetLastUnsuccessfulBuildOk returns a tuple with the LastUnsuccessfulBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastUnsuccessfulBuild

`func (o *FreeStyleProject) SetLastUnsuccessfulBuild(v string)`

SetLastUnsuccessfulBuild sets LastUnsuccessfulBuild field to given value.

### HasLastUnsuccessfulBuild

`func (o *FreeStyleProject) HasLastUnsuccessfulBuild() bool`

HasLastUnsuccessfulBuild returns a boolean if a field has been set.

### GetNextBuildNumber

`func (o *FreeStyleProject) GetNextBuildNumber() int32`

GetNextBuildNumber returns the NextBuildNumber field if non-nil, zero value otherwise.

### GetNextBuildNumberOk

`func (o *FreeStyleProject) GetNextBuildNumberOk() (*int32, bool)`

GetNextBuildNumberOk returns a tuple with the NextBuildNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextBuildNumber

`func (o *FreeStyleProject) SetNextBuildNumber(v int32)`

SetNextBuildNumber sets NextBuildNumber field to given value.

### HasNextBuildNumber

`func (o *FreeStyleProject) HasNextBuildNumber() bool`

HasNextBuildNumber returns a boolean if a field has been set.

### GetQueueItem

`func (o *FreeStyleProject) GetQueueItem() string`

GetQueueItem returns the QueueItem field if non-nil, zero value otherwise.

### GetQueueItemOk

`func (o *FreeStyleProject) GetQueueItemOk() (*string, bool)`

GetQueueItemOk returns a tuple with the QueueItem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueueItem

`func (o *FreeStyleProject) SetQueueItem(v string)`

SetQueueItem sets QueueItem field to given value.

### HasQueueItem

`func (o *FreeStyleProject) HasQueueItem() bool`

HasQueueItem returns a boolean if a field has been set.

### GetConcurrentBuild

`func (o *FreeStyleProject) GetConcurrentBuild() bool`

GetConcurrentBuild returns the ConcurrentBuild field if non-nil, zero value otherwise.

### GetConcurrentBuildOk

`func (o *FreeStyleProject) GetConcurrentBuildOk() (*bool, bool)`

GetConcurrentBuildOk returns a tuple with the ConcurrentBuild field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConcurrentBuild

`func (o *FreeStyleProject) SetConcurrentBuild(v bool)`

SetConcurrentBuild sets ConcurrentBuild field to given value.

### HasConcurrentBuild

`func (o *FreeStyleProject) HasConcurrentBuild() bool`

HasConcurrentBuild returns a boolean if a field has been set.

### GetScm

`func (o *FreeStyleProject) GetScm() NullSCM`

GetScm returns the Scm field if non-nil, zero value otherwise.

### GetScmOk

`func (o *FreeStyleProject) GetScmOk() (*NullSCM, bool)`

GetScmOk returns a tuple with the Scm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScm

`func (o *FreeStyleProject) SetScm(v NullSCM)`

SetScm sets Scm field to given value.

### HasScm

`func (o *FreeStyleProject) HasScm() bool`

HasScm returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


