# PipelineBranchesitem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | Pointer to **string** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**WeatherScore** | Pointer to **int32** |  | [optional] 
**LatestRun** | Pointer to [**PipelineBranchesitemlatestRun**](PipelineBranchesitemlatestRun.md) |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**PullRequest** | Pointer to [**PipelineBranchesitempullRequest**](PipelineBranchesitempullRequest.md) |  | [optional] 
**TotalNumberOfPullRequests** | Pointer to **int32** |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 

## Methods

### NewPipelineBranchesitem

`func NewPipelineBranchesitem() *PipelineBranchesitem`

NewPipelineBranchesitem instantiates a new PipelineBranchesitem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineBranchesitemWithDefaults

`func NewPipelineBranchesitemWithDefaults() *PipelineBranchesitem`

NewPipelineBranchesitemWithDefaults instantiates a new PipelineBranchesitem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDisplayName

`func (o *PipelineBranchesitem) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *PipelineBranchesitem) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *PipelineBranchesitem) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *PipelineBranchesitem) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *PipelineBranchesitem) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *PipelineBranchesitem) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *PipelineBranchesitem) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *PipelineBranchesitem) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetName

`func (o *PipelineBranchesitem) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PipelineBranchesitem) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PipelineBranchesitem) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PipelineBranchesitem) HasName() bool`

HasName returns a boolean if a field has been set.

### GetWeatherScore

`func (o *PipelineBranchesitem) GetWeatherScore() int32`

GetWeatherScore returns the WeatherScore field if non-nil, zero value otherwise.

### GetWeatherScoreOk

`func (o *PipelineBranchesitem) GetWeatherScoreOk() (*int32, bool)`

GetWeatherScoreOk returns a tuple with the WeatherScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeatherScore

`func (o *PipelineBranchesitem) SetWeatherScore(v int32)`

SetWeatherScore sets WeatherScore field to given value.

### HasWeatherScore

`func (o *PipelineBranchesitem) HasWeatherScore() bool`

HasWeatherScore returns a boolean if a field has been set.

### GetLatestRun

`func (o *PipelineBranchesitem) GetLatestRun() PipelineBranchesitemlatestRun`

GetLatestRun returns the LatestRun field if non-nil, zero value otherwise.

### GetLatestRunOk

`func (o *PipelineBranchesitem) GetLatestRunOk() (*PipelineBranchesitemlatestRun, bool)`

GetLatestRunOk returns a tuple with the LatestRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatestRun

`func (o *PipelineBranchesitem) SetLatestRun(v PipelineBranchesitemlatestRun)`

SetLatestRun sets LatestRun field to given value.

### HasLatestRun

`func (o *PipelineBranchesitem) HasLatestRun() bool`

HasLatestRun returns a boolean if a field has been set.

### GetOrganization

`func (o *PipelineBranchesitem) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PipelineBranchesitem) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PipelineBranchesitem) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *PipelineBranchesitem) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetPullRequest

`func (o *PipelineBranchesitem) GetPullRequest() PipelineBranchesitempullRequest`

GetPullRequest returns the PullRequest field if non-nil, zero value otherwise.

### GetPullRequestOk

`func (o *PipelineBranchesitem) GetPullRequestOk() (*PipelineBranchesitempullRequest, bool)`

GetPullRequestOk returns a tuple with the PullRequest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPullRequest

`func (o *PipelineBranchesitem) SetPullRequest(v PipelineBranchesitempullRequest)`

SetPullRequest sets PullRequest field to given value.

### HasPullRequest

`func (o *PipelineBranchesitem) HasPullRequest() bool`

HasPullRequest returns a boolean if a field has been set.

### GetTotalNumberOfPullRequests

`func (o *PipelineBranchesitem) GetTotalNumberOfPullRequests() int32`

GetTotalNumberOfPullRequests returns the TotalNumberOfPullRequests field if non-nil, zero value otherwise.

### GetTotalNumberOfPullRequestsOk

`func (o *PipelineBranchesitem) GetTotalNumberOfPullRequestsOk() (*int32, bool)`

GetTotalNumberOfPullRequestsOk returns a tuple with the TotalNumberOfPullRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalNumberOfPullRequests

`func (o *PipelineBranchesitem) SetTotalNumberOfPullRequests(v int32)`

SetTotalNumberOfPullRequests sets TotalNumberOfPullRequests field to given value.

### HasTotalNumberOfPullRequests

`func (o *PipelineBranchesitem) HasTotalNumberOfPullRequests() bool`

HasTotalNumberOfPullRequests returns a boolean if a field has been set.

### GetClass

`func (o *PipelineBranchesitem) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelineBranchesitem) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelineBranchesitem) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelineBranchesitem) HasClass() bool`

HasClass returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


