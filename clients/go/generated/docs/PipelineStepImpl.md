# PipelineStepImpl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**PipelineStepImpllinks**](PipelineStepImpllinks.md) |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**DurationInMillis** | Pointer to **int32** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] 
**Input** | Pointer to [**InputStepImpl**](InputStepImpl.md) |  | [optional] 
**Result** | Pointer to **string** |  | [optional] 
**StartTime** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 

## Methods

### NewPipelineStepImpl

`func NewPipelineStepImpl() *PipelineStepImpl`

NewPipelineStepImpl instantiates a new PipelineStepImpl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineStepImplWithDefaults

`func NewPipelineStepImplWithDefaults() *PipelineStepImpl`

NewPipelineStepImplWithDefaults instantiates a new PipelineStepImpl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *PipelineStepImpl) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelineStepImpl) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelineStepImpl) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelineStepImpl) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *PipelineStepImpl) GetLinks() PipelineStepImpllinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *PipelineStepImpl) GetLinksOk() (*PipelineStepImpllinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *PipelineStepImpl) SetLinks(v PipelineStepImpllinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *PipelineStepImpl) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDisplayName

`func (o *PipelineStepImpl) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *PipelineStepImpl) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *PipelineStepImpl) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *PipelineStepImpl) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetDurationInMillis

`func (o *PipelineStepImpl) GetDurationInMillis() int32`

GetDurationInMillis returns the DurationInMillis field if non-nil, zero value otherwise.

### GetDurationInMillisOk

`func (o *PipelineStepImpl) GetDurationInMillisOk() (*int32, bool)`

GetDurationInMillisOk returns a tuple with the DurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationInMillis

`func (o *PipelineStepImpl) SetDurationInMillis(v int32)`

SetDurationInMillis sets DurationInMillis field to given value.

### HasDurationInMillis

`func (o *PipelineStepImpl) HasDurationInMillis() bool`

HasDurationInMillis returns a boolean if a field has been set.

### GetId

`func (o *PipelineStepImpl) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PipelineStepImpl) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PipelineStepImpl) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PipelineStepImpl) HasId() bool`

HasId returns a boolean if a field has been set.

### GetInput

`func (o *PipelineStepImpl) GetInput() InputStepImpl`

GetInput returns the Input field if non-nil, zero value otherwise.

### GetInputOk

`func (o *PipelineStepImpl) GetInputOk() (*InputStepImpl, bool)`

GetInputOk returns a tuple with the Input field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInput

`func (o *PipelineStepImpl) SetInput(v InputStepImpl)`

SetInput sets Input field to given value.

### HasInput

`func (o *PipelineStepImpl) HasInput() bool`

HasInput returns a boolean if a field has been set.

### GetResult

`func (o *PipelineStepImpl) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *PipelineStepImpl) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *PipelineStepImpl) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *PipelineStepImpl) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetStartTime

`func (o *PipelineStepImpl) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *PipelineStepImpl) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *PipelineStepImpl) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *PipelineStepImpl) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetState

`func (o *PipelineStepImpl) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PipelineStepImpl) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PipelineStepImpl) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PipelineStepImpl) HasState() bool`

HasState returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


