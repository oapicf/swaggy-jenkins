# FreeStyleBuild

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Number** | Pointer to **int32** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Actions** | Pointer to [**[]CauseAction**](CauseAction.md) |  | [optional] 
**Building** | Pointer to **bool** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**Duration** | Pointer to **int32** |  | [optional] 
**EstimatedDuration** | Pointer to **int32** |  | [optional] 
**Executor** | Pointer to **string** |  | [optional] 
**FullDisplayName** | Pointer to **string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] 
**KeepLog** | Pointer to **bool** |  | [optional] 
**QueueId** | Pointer to **int32** |  | [optional] 
**Result** | Pointer to **string** |  | [optional] 
**Timestamp** | Pointer to **int32** |  | [optional] 
**BuiltOn** | Pointer to **string** |  | [optional] 
**ChangeSet** | Pointer to [**EmptyChangeLogSet**](EmptyChangeLogSet.md) |  | [optional] 

## Methods

### NewFreeStyleBuild

`func NewFreeStyleBuild() *FreeStyleBuild`

NewFreeStyleBuild instantiates a new FreeStyleBuild object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFreeStyleBuildWithDefaults

`func NewFreeStyleBuildWithDefaults() *FreeStyleBuild`

NewFreeStyleBuildWithDefaults instantiates a new FreeStyleBuild object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *FreeStyleBuild) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *FreeStyleBuild) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *FreeStyleBuild) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *FreeStyleBuild) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetNumber

`func (o *FreeStyleBuild) GetNumber() int32`

GetNumber returns the Number field if non-nil, zero value otherwise.

### GetNumberOk

`func (o *FreeStyleBuild) GetNumberOk() (*int32, bool)`

GetNumberOk returns a tuple with the Number field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumber

`func (o *FreeStyleBuild) SetNumber(v int32)`

SetNumber sets Number field to given value.

### HasNumber

`func (o *FreeStyleBuild) HasNumber() bool`

HasNumber returns a boolean if a field has been set.

### GetUrl

`func (o *FreeStyleBuild) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *FreeStyleBuild) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *FreeStyleBuild) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *FreeStyleBuild) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetActions

`func (o *FreeStyleBuild) GetActions() []CauseAction`

GetActions returns the Actions field if non-nil, zero value otherwise.

### GetActionsOk

`func (o *FreeStyleBuild) GetActionsOk() (*[]CauseAction, bool)`

GetActionsOk returns a tuple with the Actions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActions

`func (o *FreeStyleBuild) SetActions(v []CauseAction)`

SetActions sets Actions field to given value.

### HasActions

`func (o *FreeStyleBuild) HasActions() bool`

HasActions returns a boolean if a field has been set.

### GetBuilding

`func (o *FreeStyleBuild) GetBuilding() bool`

GetBuilding returns the Building field if non-nil, zero value otherwise.

### GetBuildingOk

`func (o *FreeStyleBuild) GetBuildingOk() (*bool, bool)`

GetBuildingOk returns a tuple with the Building field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuilding

`func (o *FreeStyleBuild) SetBuilding(v bool)`

SetBuilding sets Building field to given value.

### HasBuilding

`func (o *FreeStyleBuild) HasBuilding() bool`

HasBuilding returns a boolean if a field has been set.

### GetDescription

`func (o *FreeStyleBuild) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *FreeStyleBuild) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *FreeStyleBuild) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *FreeStyleBuild) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetDisplayName

`func (o *FreeStyleBuild) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *FreeStyleBuild) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *FreeStyleBuild) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *FreeStyleBuild) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetDuration

`func (o *FreeStyleBuild) GetDuration() int32`

GetDuration returns the Duration field if non-nil, zero value otherwise.

### GetDurationOk

`func (o *FreeStyleBuild) GetDurationOk() (*int32, bool)`

GetDurationOk returns a tuple with the Duration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDuration

`func (o *FreeStyleBuild) SetDuration(v int32)`

SetDuration sets Duration field to given value.

### HasDuration

`func (o *FreeStyleBuild) HasDuration() bool`

HasDuration returns a boolean if a field has been set.

### GetEstimatedDuration

`func (o *FreeStyleBuild) GetEstimatedDuration() int32`

GetEstimatedDuration returns the EstimatedDuration field if non-nil, zero value otherwise.

### GetEstimatedDurationOk

`func (o *FreeStyleBuild) GetEstimatedDurationOk() (*int32, bool)`

GetEstimatedDurationOk returns a tuple with the EstimatedDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDuration

`func (o *FreeStyleBuild) SetEstimatedDuration(v int32)`

SetEstimatedDuration sets EstimatedDuration field to given value.

### HasEstimatedDuration

`func (o *FreeStyleBuild) HasEstimatedDuration() bool`

HasEstimatedDuration returns a boolean if a field has been set.

### GetExecutor

`func (o *FreeStyleBuild) GetExecutor() string`

GetExecutor returns the Executor field if non-nil, zero value otherwise.

### GetExecutorOk

`func (o *FreeStyleBuild) GetExecutorOk() (*string, bool)`

GetExecutorOk returns a tuple with the Executor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutor

`func (o *FreeStyleBuild) SetExecutor(v string)`

SetExecutor sets Executor field to given value.

### HasExecutor

`func (o *FreeStyleBuild) HasExecutor() bool`

HasExecutor returns a boolean if a field has been set.

### GetFullDisplayName

`func (o *FreeStyleBuild) GetFullDisplayName() string`

GetFullDisplayName returns the FullDisplayName field if non-nil, zero value otherwise.

### GetFullDisplayNameOk

`func (o *FreeStyleBuild) GetFullDisplayNameOk() (*string, bool)`

GetFullDisplayNameOk returns a tuple with the FullDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullDisplayName

`func (o *FreeStyleBuild) SetFullDisplayName(v string)`

SetFullDisplayName sets FullDisplayName field to given value.

### HasFullDisplayName

`func (o *FreeStyleBuild) HasFullDisplayName() bool`

HasFullDisplayName returns a boolean if a field has been set.

### GetId

`func (o *FreeStyleBuild) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *FreeStyleBuild) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *FreeStyleBuild) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *FreeStyleBuild) HasId() bool`

HasId returns a boolean if a field has been set.

### GetKeepLog

`func (o *FreeStyleBuild) GetKeepLog() bool`

GetKeepLog returns the KeepLog field if non-nil, zero value otherwise.

### GetKeepLogOk

`func (o *FreeStyleBuild) GetKeepLogOk() (*bool, bool)`

GetKeepLogOk returns a tuple with the KeepLog field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKeepLog

`func (o *FreeStyleBuild) SetKeepLog(v bool)`

SetKeepLog sets KeepLog field to given value.

### HasKeepLog

`func (o *FreeStyleBuild) HasKeepLog() bool`

HasKeepLog returns a boolean if a field has been set.

### GetQueueId

`func (o *FreeStyleBuild) GetQueueId() int32`

GetQueueId returns the QueueId field if non-nil, zero value otherwise.

### GetQueueIdOk

`func (o *FreeStyleBuild) GetQueueIdOk() (*int32, bool)`

GetQueueIdOk returns a tuple with the QueueId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQueueId

`func (o *FreeStyleBuild) SetQueueId(v int32)`

SetQueueId sets QueueId field to given value.

### HasQueueId

`func (o *FreeStyleBuild) HasQueueId() bool`

HasQueueId returns a boolean if a field has been set.

### GetResult

`func (o *FreeStyleBuild) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *FreeStyleBuild) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *FreeStyleBuild) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *FreeStyleBuild) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetTimestamp

`func (o *FreeStyleBuild) GetTimestamp() int32`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *FreeStyleBuild) GetTimestampOk() (*int32, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *FreeStyleBuild) SetTimestamp(v int32)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *FreeStyleBuild) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetBuiltOn

`func (o *FreeStyleBuild) GetBuiltOn() string`

GetBuiltOn returns the BuiltOn field if non-nil, zero value otherwise.

### GetBuiltOnOk

`func (o *FreeStyleBuild) GetBuiltOnOk() (*string, bool)`

GetBuiltOnOk returns a tuple with the BuiltOn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuiltOn

`func (o *FreeStyleBuild) SetBuiltOn(v string)`

SetBuiltOn sets BuiltOn field to given value.

### HasBuiltOn

`func (o *FreeStyleBuild) HasBuiltOn() bool`

HasBuiltOn returns a boolean if a field has been set.

### GetChangeSet

`func (o *FreeStyleBuild) GetChangeSet() EmptyChangeLogSet`

GetChangeSet returns the ChangeSet field if non-nil, zero value otherwise.

### GetChangeSetOk

`func (o *FreeStyleBuild) GetChangeSetOk() (*EmptyChangeLogSet, bool)`

GetChangeSetOk returns a tuple with the ChangeSet field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChangeSet

`func (o *FreeStyleBuild) SetChangeSet(v EmptyChangeLogSet)`

SetChangeSet sets ChangeSet field to given value.

### HasChangeSet

`func (o *FreeStyleBuild) HasChangeSet() bool`

HasChangeSet returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


