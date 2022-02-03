# QueueLeftItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Actions** | Pointer to [**[]CauseAction**](CauseAction.md) |  | [optional] 
**Blocked** | Pointer to **bool** |  | [optional] 
**Buildable** | Pointer to **bool** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**InQueueSince** | Pointer to **int32** |  | [optional] 
**Params** | Pointer to **string** |  | [optional] 
**Stuck** | Pointer to **bool** |  | [optional] 
**Task** | Pointer to [**FreeStyleProject**](FreeStyleProject.md) |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 
**Why** | Pointer to **string** |  | [optional] 
**Cancelled** | Pointer to **bool** |  | [optional] 
**Executable** | Pointer to [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 

## Methods

### NewQueueLeftItem

`func NewQueueLeftItem() *QueueLeftItem`

NewQueueLeftItem instantiates a new QueueLeftItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueueLeftItemWithDefaults

`func NewQueueLeftItemWithDefaults() *QueueLeftItem`

NewQueueLeftItemWithDefaults instantiates a new QueueLeftItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *QueueLeftItem) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *QueueLeftItem) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *QueueLeftItem) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *QueueLeftItem) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetActions

`func (o *QueueLeftItem) GetActions() []CauseAction`

GetActions returns the Actions field if non-nil, zero value otherwise.

### GetActionsOk

`func (o *QueueLeftItem) GetActionsOk() (*[]CauseAction, bool)`

GetActionsOk returns a tuple with the Actions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActions

`func (o *QueueLeftItem) SetActions(v []CauseAction)`

SetActions sets Actions field to given value.

### HasActions

`func (o *QueueLeftItem) HasActions() bool`

HasActions returns a boolean if a field has been set.

### GetBlocked

`func (o *QueueLeftItem) GetBlocked() bool`

GetBlocked returns the Blocked field if non-nil, zero value otherwise.

### GetBlockedOk

`func (o *QueueLeftItem) GetBlockedOk() (*bool, bool)`

GetBlockedOk returns a tuple with the Blocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlocked

`func (o *QueueLeftItem) SetBlocked(v bool)`

SetBlocked sets Blocked field to given value.

### HasBlocked

`func (o *QueueLeftItem) HasBlocked() bool`

HasBlocked returns a boolean if a field has been set.

### GetBuildable

`func (o *QueueLeftItem) GetBuildable() bool`

GetBuildable returns the Buildable field if non-nil, zero value otherwise.

### GetBuildableOk

`func (o *QueueLeftItem) GetBuildableOk() (*bool, bool)`

GetBuildableOk returns a tuple with the Buildable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildable

`func (o *QueueLeftItem) SetBuildable(v bool)`

SetBuildable sets Buildable field to given value.

### HasBuildable

`func (o *QueueLeftItem) HasBuildable() bool`

HasBuildable returns a boolean if a field has been set.

### GetId

`func (o *QueueLeftItem) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *QueueLeftItem) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *QueueLeftItem) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *QueueLeftItem) HasId() bool`

HasId returns a boolean if a field has been set.

### GetInQueueSince

`func (o *QueueLeftItem) GetInQueueSince() int32`

GetInQueueSince returns the InQueueSince field if non-nil, zero value otherwise.

### GetInQueueSinceOk

`func (o *QueueLeftItem) GetInQueueSinceOk() (*int32, bool)`

GetInQueueSinceOk returns a tuple with the InQueueSince field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInQueueSince

`func (o *QueueLeftItem) SetInQueueSince(v int32)`

SetInQueueSince sets InQueueSince field to given value.

### HasInQueueSince

`func (o *QueueLeftItem) HasInQueueSince() bool`

HasInQueueSince returns a boolean if a field has been set.

### GetParams

`func (o *QueueLeftItem) GetParams() string`

GetParams returns the Params field if non-nil, zero value otherwise.

### GetParamsOk

`func (o *QueueLeftItem) GetParamsOk() (*string, bool)`

GetParamsOk returns a tuple with the Params field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParams

`func (o *QueueLeftItem) SetParams(v string)`

SetParams sets Params field to given value.

### HasParams

`func (o *QueueLeftItem) HasParams() bool`

HasParams returns a boolean if a field has been set.

### GetStuck

`func (o *QueueLeftItem) GetStuck() bool`

GetStuck returns the Stuck field if non-nil, zero value otherwise.

### GetStuckOk

`func (o *QueueLeftItem) GetStuckOk() (*bool, bool)`

GetStuckOk returns a tuple with the Stuck field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStuck

`func (o *QueueLeftItem) SetStuck(v bool)`

SetStuck sets Stuck field to given value.

### HasStuck

`func (o *QueueLeftItem) HasStuck() bool`

HasStuck returns a boolean if a field has been set.

### GetTask

`func (o *QueueLeftItem) GetTask() FreeStyleProject`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *QueueLeftItem) GetTaskOk() (*FreeStyleProject, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *QueueLeftItem) SetTask(v FreeStyleProject)`

SetTask sets Task field to given value.

### HasTask

`func (o *QueueLeftItem) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetUrl

`func (o *QueueLeftItem) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *QueueLeftItem) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *QueueLeftItem) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *QueueLeftItem) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetWhy

`func (o *QueueLeftItem) GetWhy() string`

GetWhy returns the Why field if non-nil, zero value otherwise.

### GetWhyOk

`func (o *QueueLeftItem) GetWhyOk() (*string, bool)`

GetWhyOk returns a tuple with the Why field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhy

`func (o *QueueLeftItem) SetWhy(v string)`

SetWhy sets Why field to given value.

### HasWhy

`func (o *QueueLeftItem) HasWhy() bool`

HasWhy returns a boolean if a field has been set.

### GetCancelled

`func (o *QueueLeftItem) GetCancelled() bool`

GetCancelled returns the Cancelled field if non-nil, zero value otherwise.

### GetCancelledOk

`func (o *QueueLeftItem) GetCancelledOk() (*bool, bool)`

GetCancelledOk returns a tuple with the Cancelled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCancelled

`func (o *QueueLeftItem) SetCancelled(v bool)`

SetCancelled sets Cancelled field to given value.

### HasCancelled

`func (o *QueueLeftItem) HasCancelled() bool`

HasCancelled returns a boolean if a field has been set.

### GetExecutable

`func (o *QueueLeftItem) GetExecutable() FreeStyleBuild`

GetExecutable returns the Executable field if non-nil, zero value otherwise.

### GetExecutableOk

`func (o *QueueLeftItem) GetExecutableOk() (*FreeStyleBuild, bool)`

GetExecutableOk returns a tuple with the Executable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutable

`func (o *QueueLeftItem) SetExecutable(v FreeStyleBuild)`

SetExecutable sets Executable field to given value.

### HasExecutable

`func (o *QueueLeftItem) HasExecutable() bool`

HasExecutable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


