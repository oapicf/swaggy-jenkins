# QueueBlockedItem

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
**BuildableStartMilliseconds** | Pointer to **int32** |  | [optional] 

## Methods

### NewQueueBlockedItem

`func NewQueueBlockedItem() *QueueBlockedItem`

NewQueueBlockedItem instantiates a new QueueBlockedItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueueBlockedItemWithDefaults

`func NewQueueBlockedItemWithDefaults() *QueueBlockedItem`

NewQueueBlockedItemWithDefaults instantiates a new QueueBlockedItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *QueueBlockedItem) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *QueueBlockedItem) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *QueueBlockedItem) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *QueueBlockedItem) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetActions

`func (o *QueueBlockedItem) GetActions() []CauseAction`

GetActions returns the Actions field if non-nil, zero value otherwise.

### GetActionsOk

`func (o *QueueBlockedItem) GetActionsOk() (*[]CauseAction, bool)`

GetActionsOk returns a tuple with the Actions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActions

`func (o *QueueBlockedItem) SetActions(v []CauseAction)`

SetActions sets Actions field to given value.

### HasActions

`func (o *QueueBlockedItem) HasActions() bool`

HasActions returns a boolean if a field has been set.

### GetBlocked

`func (o *QueueBlockedItem) GetBlocked() bool`

GetBlocked returns the Blocked field if non-nil, zero value otherwise.

### GetBlockedOk

`func (o *QueueBlockedItem) GetBlockedOk() (*bool, bool)`

GetBlockedOk returns a tuple with the Blocked field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBlocked

`func (o *QueueBlockedItem) SetBlocked(v bool)`

SetBlocked sets Blocked field to given value.

### HasBlocked

`func (o *QueueBlockedItem) HasBlocked() bool`

HasBlocked returns a boolean if a field has been set.

### GetBuildable

`func (o *QueueBlockedItem) GetBuildable() bool`

GetBuildable returns the Buildable field if non-nil, zero value otherwise.

### GetBuildableOk

`func (o *QueueBlockedItem) GetBuildableOk() (*bool, bool)`

GetBuildableOk returns a tuple with the Buildable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildable

`func (o *QueueBlockedItem) SetBuildable(v bool)`

SetBuildable sets Buildable field to given value.

### HasBuildable

`func (o *QueueBlockedItem) HasBuildable() bool`

HasBuildable returns a boolean if a field has been set.

### GetId

`func (o *QueueBlockedItem) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *QueueBlockedItem) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *QueueBlockedItem) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *QueueBlockedItem) HasId() bool`

HasId returns a boolean if a field has been set.

### GetInQueueSince

`func (o *QueueBlockedItem) GetInQueueSince() int32`

GetInQueueSince returns the InQueueSince field if non-nil, zero value otherwise.

### GetInQueueSinceOk

`func (o *QueueBlockedItem) GetInQueueSinceOk() (*int32, bool)`

GetInQueueSinceOk returns a tuple with the InQueueSince field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInQueueSince

`func (o *QueueBlockedItem) SetInQueueSince(v int32)`

SetInQueueSince sets InQueueSince field to given value.

### HasInQueueSince

`func (o *QueueBlockedItem) HasInQueueSince() bool`

HasInQueueSince returns a boolean if a field has been set.

### GetParams

`func (o *QueueBlockedItem) GetParams() string`

GetParams returns the Params field if non-nil, zero value otherwise.

### GetParamsOk

`func (o *QueueBlockedItem) GetParamsOk() (*string, bool)`

GetParamsOk returns a tuple with the Params field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParams

`func (o *QueueBlockedItem) SetParams(v string)`

SetParams sets Params field to given value.

### HasParams

`func (o *QueueBlockedItem) HasParams() bool`

HasParams returns a boolean if a field has been set.

### GetStuck

`func (o *QueueBlockedItem) GetStuck() bool`

GetStuck returns the Stuck field if non-nil, zero value otherwise.

### GetStuckOk

`func (o *QueueBlockedItem) GetStuckOk() (*bool, bool)`

GetStuckOk returns a tuple with the Stuck field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStuck

`func (o *QueueBlockedItem) SetStuck(v bool)`

SetStuck sets Stuck field to given value.

### HasStuck

`func (o *QueueBlockedItem) HasStuck() bool`

HasStuck returns a boolean if a field has been set.

### GetTask

`func (o *QueueBlockedItem) GetTask() FreeStyleProject`

GetTask returns the Task field if non-nil, zero value otherwise.

### GetTaskOk

`func (o *QueueBlockedItem) GetTaskOk() (*FreeStyleProject, bool)`

GetTaskOk returns a tuple with the Task field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTask

`func (o *QueueBlockedItem) SetTask(v FreeStyleProject)`

SetTask sets Task field to given value.

### HasTask

`func (o *QueueBlockedItem) HasTask() bool`

HasTask returns a boolean if a field has been set.

### GetUrl

`func (o *QueueBlockedItem) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *QueueBlockedItem) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *QueueBlockedItem) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *QueueBlockedItem) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### GetWhy

`func (o *QueueBlockedItem) GetWhy() string`

GetWhy returns the Why field if non-nil, zero value otherwise.

### GetWhyOk

`func (o *QueueBlockedItem) GetWhyOk() (*string, bool)`

GetWhyOk returns a tuple with the Why field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWhy

`func (o *QueueBlockedItem) SetWhy(v string)`

SetWhy sets Why field to given value.

### HasWhy

`func (o *QueueBlockedItem) HasWhy() bool`

HasWhy returns a boolean if a field has been set.

### GetBuildableStartMilliseconds

`func (o *QueueBlockedItem) GetBuildableStartMilliseconds() int32`

GetBuildableStartMilliseconds returns the BuildableStartMilliseconds field if non-nil, zero value otherwise.

### GetBuildableStartMillisecondsOk

`func (o *QueueBlockedItem) GetBuildableStartMillisecondsOk() (*int32, bool)`

GetBuildableStartMillisecondsOk returns a tuple with the BuildableStartMilliseconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBuildableStartMilliseconds

`func (o *QueueBlockedItem) SetBuildableStartMilliseconds(v int32)`

SetBuildableStartMilliseconds sets BuildableStartMilliseconds field to given value.

### HasBuildableStartMilliseconds

`func (o *QueueBlockedItem) HasBuildableStartMilliseconds() bool`

HasBuildableStartMilliseconds returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


