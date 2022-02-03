# CauseAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Causes** | Pointer to [**[]CauseUserIdCause**](CauseUserIdCause.md) |  | [optional] 

## Methods

### NewCauseAction

`func NewCauseAction() *CauseAction`

NewCauseAction instantiates a new CauseAction object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCauseActionWithDefaults

`func NewCauseActionWithDefaults() *CauseAction`

NewCauseActionWithDefaults instantiates a new CauseAction object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *CauseAction) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *CauseAction) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *CauseAction) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *CauseAction) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetCauses

`func (o *CauseAction) GetCauses() []CauseUserIdCause`

GetCauses returns the Causes field if non-nil, zero value otherwise.

### GetCausesOk

`func (o *CauseAction) GetCausesOk() (*[]CauseUserIdCause, bool)`

GetCausesOk returns a tuple with the Causes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCauses

`func (o *CauseAction) SetCauses(v []CauseUserIdCause)`

SetCauses sets Causes field to given value.

### HasCauses

`func (o *CauseAction) HasCauses() bool`

HasCauses returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


