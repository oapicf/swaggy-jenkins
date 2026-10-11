# BranchImpl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**FullDisplayName** | Pointer to **string** |  | [optional] 
**FullName** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**Parameters** | Pointer to [**[]StringParameterDefinition**](StringParameterDefinition.md) |  | [optional] 
**Permissions** | Pointer to [**BranchImplpermissions**](BranchImplpermissions.md) |  | [optional] 
**WeatherScore** | Pointer to **int32** |  | [optional] 
**PullRequest** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**BranchImpllinks**](BranchImpllinks.md) |  | [optional] 
**LatestRun** | Pointer to [**PipelineRunImpl**](PipelineRunImpl.md) |  | [optional] 

## Methods

### NewBranchImpl

`func NewBranchImpl() *BranchImpl`

NewBranchImpl instantiates a new BranchImpl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBranchImplWithDefaults

`func NewBranchImplWithDefaults() *BranchImpl`

NewBranchImplWithDefaults instantiates a new BranchImpl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *BranchImpl) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *BranchImpl) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *BranchImpl) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *BranchImpl) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetDisplayName

`func (o *BranchImpl) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *BranchImpl) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *BranchImpl) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *BranchImpl) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *BranchImpl) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *BranchImpl) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *BranchImpl) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *BranchImpl) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetFullDisplayName

`func (o *BranchImpl) GetFullDisplayName() string`

GetFullDisplayName returns the FullDisplayName field if non-nil, zero value otherwise.

### GetFullDisplayNameOk

`func (o *BranchImpl) GetFullDisplayNameOk() (*string, bool)`

GetFullDisplayNameOk returns a tuple with the FullDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullDisplayName

`func (o *BranchImpl) SetFullDisplayName(v string)`

SetFullDisplayName sets FullDisplayName field to given value.

### HasFullDisplayName

`func (o *BranchImpl) HasFullDisplayName() bool`

HasFullDisplayName returns a boolean if a field has been set.

### GetFullName

`func (o *BranchImpl) GetFullName() string`

GetFullName returns the FullName field if non-nil, zero value otherwise.

### GetFullNameOk

`func (o *BranchImpl) GetFullNameOk() (*string, bool)`

GetFullNameOk returns a tuple with the FullName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullName

`func (o *BranchImpl) SetFullName(v string)`

SetFullName sets FullName field to given value.

### HasFullName

`func (o *BranchImpl) HasFullName() bool`

HasFullName returns a boolean if a field has been set.

### GetName

`func (o *BranchImpl) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *BranchImpl) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *BranchImpl) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *BranchImpl) HasName() bool`

HasName returns a boolean if a field has been set.

### GetOrganization

`func (o *BranchImpl) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *BranchImpl) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *BranchImpl) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *BranchImpl) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetParameters

`func (o *BranchImpl) GetParameters() []StringParameterDefinition`

GetParameters returns the Parameters field if non-nil, zero value otherwise.

### GetParametersOk

`func (o *BranchImpl) GetParametersOk() (*[]StringParameterDefinition, bool)`

GetParametersOk returns a tuple with the Parameters field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParameters

`func (o *BranchImpl) SetParameters(v []StringParameterDefinition)`

SetParameters sets Parameters field to given value.

### HasParameters

`func (o *BranchImpl) HasParameters() bool`

HasParameters returns a boolean if a field has been set.

### GetPermissions

`func (o *BranchImpl) GetPermissions() BranchImplpermissions`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *BranchImpl) GetPermissionsOk() (*BranchImplpermissions, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *BranchImpl) SetPermissions(v BranchImplpermissions)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *BranchImpl) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetWeatherScore

`func (o *BranchImpl) GetWeatherScore() int32`

GetWeatherScore returns the WeatherScore field if non-nil, zero value otherwise.

### GetWeatherScoreOk

`func (o *BranchImpl) GetWeatherScoreOk() (*int32, bool)`

GetWeatherScoreOk returns a tuple with the WeatherScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeatherScore

`func (o *BranchImpl) SetWeatherScore(v int32)`

SetWeatherScore sets WeatherScore field to given value.

### HasWeatherScore

`func (o *BranchImpl) HasWeatherScore() bool`

HasWeatherScore returns a boolean if a field has been set.

### GetPullRequest

`func (o *BranchImpl) GetPullRequest() string`

GetPullRequest returns the PullRequest field if non-nil, zero value otherwise.

### GetPullRequestOk

`func (o *BranchImpl) GetPullRequestOk() (*string, bool)`

GetPullRequestOk returns a tuple with the PullRequest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPullRequest

`func (o *BranchImpl) SetPullRequest(v string)`

SetPullRequest sets PullRequest field to given value.

### HasPullRequest

`func (o *BranchImpl) HasPullRequest() bool`

HasPullRequest returns a boolean if a field has been set.

### GetLinks

`func (o *BranchImpl) GetLinks() BranchImpllinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *BranchImpl) GetLinksOk() (*BranchImpllinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *BranchImpl) SetLinks(v BranchImpllinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *BranchImpl) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetLatestRun

`func (o *BranchImpl) GetLatestRun() PipelineRunImpl`

GetLatestRun returns the LatestRun field if non-nil, zero value otherwise.

### GetLatestRunOk

`func (o *BranchImpl) GetLatestRunOk() (*PipelineRunImpl, bool)`

GetLatestRunOk returns a tuple with the LatestRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatestRun

`func (o *BranchImpl) SetLatestRun(v PipelineRunImpl)`

SetLatestRun sets LatestRun field to given value.

### HasLatestRun

`func (o *BranchImpl) HasLatestRun() bool`

HasLatestRun returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


