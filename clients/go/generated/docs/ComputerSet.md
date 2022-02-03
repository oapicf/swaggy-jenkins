# ComputerSet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**BusyExecutors** | Pointer to **int32** |  | [optional] 
**Computer** | Pointer to [**[]HudsonMasterComputer**](HudsonMasterComputer.md) |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**TotalExecutors** | Pointer to **int32** |  | [optional] 

## Methods

### NewComputerSet

`func NewComputerSet() *ComputerSet`

NewComputerSet instantiates a new ComputerSet object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewComputerSetWithDefaults

`func NewComputerSetWithDefaults() *ComputerSet`

NewComputerSetWithDefaults instantiates a new ComputerSet object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *ComputerSet) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *ComputerSet) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *ComputerSet) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *ComputerSet) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetBusyExecutors

`func (o *ComputerSet) GetBusyExecutors() int32`

GetBusyExecutors returns the BusyExecutors field if non-nil, zero value otherwise.

### GetBusyExecutorsOk

`func (o *ComputerSet) GetBusyExecutorsOk() (*int32, bool)`

GetBusyExecutorsOk returns a tuple with the BusyExecutors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBusyExecutors

`func (o *ComputerSet) SetBusyExecutors(v int32)`

SetBusyExecutors sets BusyExecutors field to given value.

### HasBusyExecutors

`func (o *ComputerSet) HasBusyExecutors() bool`

HasBusyExecutors returns a boolean if a field has been set.

### GetComputer

`func (o *ComputerSet) GetComputer() []HudsonMasterComputer`

GetComputer returns the Computer field if non-nil, zero value otherwise.

### GetComputerOk

`func (o *ComputerSet) GetComputerOk() (*[]HudsonMasterComputer, bool)`

GetComputerOk returns a tuple with the Computer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComputer

`func (o *ComputerSet) SetComputer(v []HudsonMasterComputer)`

SetComputer sets Computer field to given value.

### HasComputer

`func (o *ComputerSet) HasComputer() bool`

HasComputer returns a boolean if a field has been set.

### GetDisplayName

`func (o *ComputerSet) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *ComputerSet) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *ComputerSet) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *ComputerSet) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetTotalExecutors

`func (o *ComputerSet) GetTotalExecutors() int32`

GetTotalExecutors returns the TotalExecutors field if non-nil, zero value otherwise.

### GetTotalExecutorsOk

`func (o *ComputerSet) GetTotalExecutorsOk() (*int32, bool)`

GetTotalExecutorsOk returns a tuple with the TotalExecutors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalExecutors

`func (o *ComputerSet) SetTotalExecutors(v int32)`

SetTotalExecutors sets TotalExecutors field to given value.

### HasTotalExecutors

`func (o *ComputerSet) HasTotalExecutors() bool`

HasTotalExecutors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


