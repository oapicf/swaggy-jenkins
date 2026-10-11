# PipelineImpl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**FullName** | Pointer to **string** |  | [optional] 
**LatestRun** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**WeatherScore** | Pointer to **int32** |  | [optional] 
**Links** | Pointer to [**PipelineImpllinks**](PipelineImpllinks.md) |  | [optional] 

## Methods

### NewPipelineImpl

`func NewPipelineImpl() *PipelineImpl`

NewPipelineImpl instantiates a new PipelineImpl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineImplWithDefaults

`func NewPipelineImplWithDefaults() *PipelineImpl`

NewPipelineImplWithDefaults instantiates a new PipelineImpl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *PipelineImpl) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelineImpl) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelineImpl) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelineImpl) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetDisplayName

`func (o *PipelineImpl) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *PipelineImpl) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *PipelineImpl) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *PipelineImpl) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *PipelineImpl) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *PipelineImpl) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *PipelineImpl) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *PipelineImpl) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetFullName

`func (o *PipelineImpl) GetFullName() string`

GetFullName returns the FullName field if non-nil, zero value otherwise.

### GetFullNameOk

`func (o *PipelineImpl) GetFullNameOk() (*string, bool)`

GetFullNameOk returns a tuple with the FullName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullName

`func (o *PipelineImpl) SetFullName(v string)`

SetFullName sets FullName field to given value.

### HasFullName

`func (o *PipelineImpl) HasFullName() bool`

HasFullName returns a boolean if a field has been set.

### GetLatestRun

`func (o *PipelineImpl) GetLatestRun() string`

GetLatestRun returns the LatestRun field if non-nil, zero value otherwise.

### GetLatestRunOk

`func (o *PipelineImpl) GetLatestRunOk() (*string, bool)`

GetLatestRunOk returns a tuple with the LatestRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatestRun

`func (o *PipelineImpl) SetLatestRun(v string)`

SetLatestRun sets LatestRun field to given value.

### HasLatestRun

`func (o *PipelineImpl) HasLatestRun() bool`

HasLatestRun returns a boolean if a field has been set.

### GetName

`func (o *PipelineImpl) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PipelineImpl) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PipelineImpl) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PipelineImpl) HasName() bool`

HasName returns a boolean if a field has been set.

### GetOrganization

`func (o *PipelineImpl) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PipelineImpl) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PipelineImpl) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *PipelineImpl) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetWeatherScore

`func (o *PipelineImpl) GetWeatherScore() int32`

GetWeatherScore returns the WeatherScore field if non-nil, zero value otherwise.

### GetWeatherScoreOk

`func (o *PipelineImpl) GetWeatherScoreOk() (*int32, bool)`

GetWeatherScoreOk returns a tuple with the WeatherScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeatherScore

`func (o *PipelineImpl) SetWeatherScore(v int32)`

SetWeatherScore sets WeatherScore field to given value.

### HasWeatherScore

`func (o *PipelineImpl) HasWeatherScore() bool`

HasWeatherScore returns a boolean if a field has been set.

### GetLinks

`func (o *PipelineImpl) GetLinks() PipelineImpllinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *PipelineImpl) GetLinksOk() (*PipelineImpllinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *PipelineImpl) SetLinks(v PipelineImpllinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *PipelineImpl) HasLinks() bool`

HasLinks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


