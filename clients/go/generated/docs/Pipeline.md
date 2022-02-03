# Pipeline

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**FullName** | Pointer to **string** |  | [optional] 
**WeatherScore** | Pointer to **int32** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**LatestRun** | Pointer to [**PipelinelatestRun**](PipelinelatestRun.md) |  | [optional] 

## Methods

### NewPipeline

`func NewPipeline() *Pipeline`

NewPipeline instantiates a new Pipeline object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineWithDefaults

`func NewPipelineWithDefaults() *Pipeline`

NewPipelineWithDefaults instantiates a new Pipeline object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *Pipeline) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *Pipeline) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *Pipeline) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *Pipeline) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetOrganization

`func (o *Pipeline) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *Pipeline) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *Pipeline) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *Pipeline) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetName

`func (o *Pipeline) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Pipeline) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Pipeline) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Pipeline) HasName() bool`

HasName returns a boolean if a field has been set.

### GetDisplayName

`func (o *Pipeline) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *Pipeline) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *Pipeline) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *Pipeline) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetFullName

`func (o *Pipeline) GetFullName() string`

GetFullName returns the FullName field if non-nil, zero value otherwise.

### GetFullNameOk

`func (o *Pipeline) GetFullNameOk() (*string, bool)`

GetFullNameOk returns a tuple with the FullName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullName

`func (o *Pipeline) SetFullName(v string)`

SetFullName sets FullName field to given value.

### HasFullName

`func (o *Pipeline) HasFullName() bool`

HasFullName returns a boolean if a field has been set.

### GetWeatherScore

`func (o *Pipeline) GetWeatherScore() int32`

GetWeatherScore returns the WeatherScore field if non-nil, zero value otherwise.

### GetWeatherScoreOk

`func (o *Pipeline) GetWeatherScoreOk() (*int32, bool)`

GetWeatherScoreOk returns a tuple with the WeatherScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeatherScore

`func (o *Pipeline) SetWeatherScore(v int32)`

SetWeatherScore sets WeatherScore field to given value.

### HasWeatherScore

`func (o *Pipeline) HasWeatherScore() bool`

HasWeatherScore returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *Pipeline) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *Pipeline) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *Pipeline) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *Pipeline) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetLatestRun

`func (o *Pipeline) GetLatestRun() PipelinelatestRun`

GetLatestRun returns the LatestRun field if non-nil, zero value otherwise.

### GetLatestRunOk

`func (o *Pipeline) GetLatestRunOk() (*PipelinelatestRun, bool)`

GetLatestRunOk returns a tuple with the LatestRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatestRun

`func (o *Pipeline) SetLatestRun(v PipelinelatestRun)`

SetLatestRun sets LatestRun field to given value.

### HasLatestRun

`func (o *Pipeline) HasLatestRun() bool`

HasLatestRun returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


