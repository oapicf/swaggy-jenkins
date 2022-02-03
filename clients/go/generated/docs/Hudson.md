# Hudson

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**AssignedLabels** | Pointer to [**[]HudsonassignedLabels**](HudsonassignedLabels.md) |  | [optional] 
**Mode** | Pointer to **string** |  | [optional] 
**NodeDescription** | Pointer to **string** |  | [optional] 
**NodeName** | Pointer to **string** |  | [optional] 
**NumExecutors** | Pointer to **int32** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Jobs** | Pointer to [**[]FreeStyleProject**](FreeStyleProject.md) |  | [optional] 
**PrimaryView** | Pointer to [**AllView**](AllView.md) |  | [optional] 
**QuietingDown** | Pointer to **bool** |  | [optional] 
**SlaveAgentPort** | Pointer to **int32** |  | [optional] 
**UnlabeledLoad** | Pointer to [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  | [optional] 
**UseCrumbs** | Pointer to **bool** |  | [optional] 
**UseSecurity** | Pointer to **bool** |  | [optional] 
**Views** | Pointer to [**[]AllView**](AllView.md) |  | [optional] 

## Methods

### NewHudson

`func NewHudson() *Hudson`

NewHudson instantiates a new Hudson object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHudsonWithDefaults

`func NewHudsonWithDefaults() *Hudson`

NewHudsonWithDefaults instantiates a new Hudson object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *Hudson) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *Hudson) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *Hudson) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *Hudson) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetAssignedLabels

`func (o *Hudson) GetAssignedLabels() []HudsonassignedLabels`

GetAssignedLabels returns the AssignedLabels field if non-nil, zero value otherwise.

### GetAssignedLabelsOk

`func (o *Hudson) GetAssignedLabelsOk() (*[]HudsonassignedLabels, bool)`

GetAssignedLabelsOk returns a tuple with the AssignedLabels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssignedLabels

`func (o *Hudson) SetAssignedLabels(v []HudsonassignedLabels)`

SetAssignedLabels sets AssignedLabels field to given value.

### HasAssignedLabels

`func (o *Hudson) HasAssignedLabels() bool`

HasAssignedLabels returns a boolean if a field has been set.

### GetMode

`func (o *Hudson) GetMode() string`

GetMode returns the Mode field if non-nil, zero value otherwise.

### GetModeOk

`func (o *Hudson) GetModeOk() (*string, bool)`

GetModeOk returns a tuple with the Mode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMode

`func (o *Hudson) SetMode(v string)`

SetMode sets Mode field to given value.

### HasMode

`func (o *Hudson) HasMode() bool`

HasMode returns a boolean if a field has been set.

### GetNodeDescription

`func (o *Hudson) GetNodeDescription() string`

GetNodeDescription returns the NodeDescription field if non-nil, zero value otherwise.

### GetNodeDescriptionOk

`func (o *Hudson) GetNodeDescriptionOk() (*string, bool)`

GetNodeDescriptionOk returns a tuple with the NodeDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNodeDescription

`func (o *Hudson) SetNodeDescription(v string)`

SetNodeDescription sets NodeDescription field to given value.

### HasNodeDescription

`func (o *Hudson) HasNodeDescription() bool`

HasNodeDescription returns a boolean if a field has been set.

### GetNodeName

`func (o *Hudson) GetNodeName() string`

GetNodeName returns the NodeName field if non-nil, zero value otherwise.

### GetNodeNameOk

`func (o *Hudson) GetNodeNameOk() (*string, bool)`

GetNodeNameOk returns a tuple with the NodeName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNodeName

`func (o *Hudson) SetNodeName(v string)`

SetNodeName sets NodeName field to given value.

### HasNodeName

`func (o *Hudson) HasNodeName() bool`

HasNodeName returns a boolean if a field has been set.

### GetNumExecutors

`func (o *Hudson) GetNumExecutors() int32`

GetNumExecutors returns the NumExecutors field if non-nil, zero value otherwise.

### GetNumExecutorsOk

`func (o *Hudson) GetNumExecutorsOk() (*int32, bool)`

GetNumExecutorsOk returns a tuple with the NumExecutors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumExecutors

`func (o *Hudson) SetNumExecutors(v int32)`

SetNumExecutors sets NumExecutors field to given value.

### HasNumExecutors

`func (o *Hudson) HasNumExecutors() bool`

HasNumExecutors returns a boolean if a field has been set.

### GetDescription

`func (o *Hudson) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Hudson) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Hudson) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Hudson) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetJobs

`func (o *Hudson) GetJobs() []FreeStyleProject`

GetJobs returns the Jobs field if non-nil, zero value otherwise.

### GetJobsOk

`func (o *Hudson) GetJobsOk() (*[]FreeStyleProject, bool)`

GetJobsOk returns a tuple with the Jobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobs

`func (o *Hudson) SetJobs(v []FreeStyleProject)`

SetJobs sets Jobs field to given value.

### HasJobs

`func (o *Hudson) HasJobs() bool`

HasJobs returns a boolean if a field has been set.

### GetPrimaryView

`func (o *Hudson) GetPrimaryView() AllView`

GetPrimaryView returns the PrimaryView field if non-nil, zero value otherwise.

### GetPrimaryViewOk

`func (o *Hudson) GetPrimaryViewOk() (*AllView, bool)`

GetPrimaryViewOk returns a tuple with the PrimaryView field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryView

`func (o *Hudson) SetPrimaryView(v AllView)`

SetPrimaryView sets PrimaryView field to given value.

### HasPrimaryView

`func (o *Hudson) HasPrimaryView() bool`

HasPrimaryView returns a boolean if a field has been set.

### GetQuietingDown

`func (o *Hudson) GetQuietingDown() bool`

GetQuietingDown returns the QuietingDown field if non-nil, zero value otherwise.

### GetQuietingDownOk

`func (o *Hudson) GetQuietingDownOk() (*bool, bool)`

GetQuietingDownOk returns a tuple with the QuietingDown field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuietingDown

`func (o *Hudson) SetQuietingDown(v bool)`

SetQuietingDown sets QuietingDown field to given value.

### HasQuietingDown

`func (o *Hudson) HasQuietingDown() bool`

HasQuietingDown returns a boolean if a field has been set.

### GetSlaveAgentPort

`func (o *Hudson) GetSlaveAgentPort() int32`

GetSlaveAgentPort returns the SlaveAgentPort field if non-nil, zero value otherwise.

### GetSlaveAgentPortOk

`func (o *Hudson) GetSlaveAgentPortOk() (*int32, bool)`

GetSlaveAgentPortOk returns a tuple with the SlaveAgentPort field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSlaveAgentPort

`func (o *Hudson) SetSlaveAgentPort(v int32)`

SetSlaveAgentPort sets SlaveAgentPort field to given value.

### HasSlaveAgentPort

`func (o *Hudson) HasSlaveAgentPort() bool`

HasSlaveAgentPort returns a boolean if a field has been set.

### GetUnlabeledLoad

`func (o *Hudson) GetUnlabeledLoad() UnlabeledLoadStatistics`

GetUnlabeledLoad returns the UnlabeledLoad field if non-nil, zero value otherwise.

### GetUnlabeledLoadOk

`func (o *Hudson) GetUnlabeledLoadOk() (*UnlabeledLoadStatistics, bool)`

GetUnlabeledLoadOk returns a tuple with the UnlabeledLoad field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnlabeledLoad

`func (o *Hudson) SetUnlabeledLoad(v UnlabeledLoadStatistics)`

SetUnlabeledLoad sets UnlabeledLoad field to given value.

### HasUnlabeledLoad

`func (o *Hudson) HasUnlabeledLoad() bool`

HasUnlabeledLoad returns a boolean if a field has been set.

### GetUseCrumbs

`func (o *Hudson) GetUseCrumbs() bool`

GetUseCrumbs returns the UseCrumbs field if non-nil, zero value otherwise.

### GetUseCrumbsOk

`func (o *Hudson) GetUseCrumbsOk() (*bool, bool)`

GetUseCrumbsOk returns a tuple with the UseCrumbs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUseCrumbs

`func (o *Hudson) SetUseCrumbs(v bool)`

SetUseCrumbs sets UseCrumbs field to given value.

### HasUseCrumbs

`func (o *Hudson) HasUseCrumbs() bool`

HasUseCrumbs returns a boolean if a field has been set.

### GetUseSecurity

`func (o *Hudson) GetUseSecurity() bool`

GetUseSecurity returns the UseSecurity field if non-nil, zero value otherwise.

### GetUseSecurityOk

`func (o *Hudson) GetUseSecurityOk() (*bool, bool)`

GetUseSecurityOk returns a tuple with the UseSecurity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUseSecurity

`func (o *Hudson) SetUseSecurity(v bool)`

SetUseSecurity sets UseSecurity field to given value.

### HasUseSecurity

`func (o *Hudson) HasUseSecurity() bool`

HasUseSecurity returns a boolean if a field has been set.

### GetViews

`func (o *Hudson) GetViews() []AllView`

GetViews returns the Views field if non-nil, zero value otherwise.

### GetViewsOk

`func (o *Hudson) GetViewsOk() (*[]AllView, bool)`

GetViewsOk returns a tuple with the Views field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetViews

`func (o *Hudson) SetViews(v []AllView)`

SetViews sets Views field to given value.

### HasViews

`func (o *Hudson) HasViews() bool`

HasViews returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


