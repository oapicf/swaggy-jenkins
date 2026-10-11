# MultibranchPipeline

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | Pointer to **string** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**LatestRun** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**WeatherScore** | Pointer to **int32** |  | [optional] 
**BranchNames** | Pointer to **[]string** |  | [optional] 
**NumberOfFailingBranches** | Pointer to **int32** |  | [optional] 
**NumberOfFailingPullRequests** | Pointer to **int32** |  | [optional] 
**NumberOfSuccessfulBranches** | Pointer to **int32** |  | [optional] 
**NumberOfSuccessfulPullRequests** | Pointer to **int32** |  | [optional] 
**TotalNumberOfBranches** | Pointer to **int32** |  | [optional] 
**TotalNumberOfPullRequests** | Pointer to **int32** |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 

## Methods

### NewMultibranchPipeline

`func NewMultibranchPipeline() *MultibranchPipeline`

NewMultibranchPipeline instantiates a new MultibranchPipeline object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMultibranchPipelineWithDefaults

`func NewMultibranchPipelineWithDefaults() *MultibranchPipeline`

NewMultibranchPipelineWithDefaults instantiates a new MultibranchPipeline object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDisplayName

`func (o *MultibranchPipeline) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *MultibranchPipeline) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *MultibranchPipeline) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *MultibranchPipeline) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *MultibranchPipeline) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *MultibranchPipeline) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *MultibranchPipeline) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *MultibranchPipeline) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetLatestRun

`func (o *MultibranchPipeline) GetLatestRun() string`

GetLatestRun returns the LatestRun field if non-nil, zero value otherwise.

### GetLatestRunOk

`func (o *MultibranchPipeline) GetLatestRunOk() (*string, bool)`

GetLatestRunOk returns a tuple with the LatestRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLatestRun

`func (o *MultibranchPipeline) SetLatestRun(v string)`

SetLatestRun sets LatestRun field to given value.

### HasLatestRun

`func (o *MultibranchPipeline) HasLatestRun() bool`

HasLatestRun returns a boolean if a field has been set.

### GetName

`func (o *MultibranchPipeline) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *MultibranchPipeline) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *MultibranchPipeline) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *MultibranchPipeline) HasName() bool`

HasName returns a boolean if a field has been set.

### GetOrganization

`func (o *MultibranchPipeline) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *MultibranchPipeline) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *MultibranchPipeline) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *MultibranchPipeline) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetWeatherScore

`func (o *MultibranchPipeline) GetWeatherScore() int32`

GetWeatherScore returns the WeatherScore field if non-nil, zero value otherwise.

### GetWeatherScoreOk

`func (o *MultibranchPipeline) GetWeatherScoreOk() (*int32, bool)`

GetWeatherScoreOk returns a tuple with the WeatherScore field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWeatherScore

`func (o *MultibranchPipeline) SetWeatherScore(v int32)`

SetWeatherScore sets WeatherScore field to given value.

### HasWeatherScore

`func (o *MultibranchPipeline) HasWeatherScore() bool`

HasWeatherScore returns a boolean if a field has been set.

### GetBranchNames

`func (o *MultibranchPipeline) GetBranchNames() []string`

GetBranchNames returns the BranchNames field if non-nil, zero value otherwise.

### GetBranchNamesOk

`func (o *MultibranchPipeline) GetBranchNamesOk() (*[]string, bool)`

GetBranchNamesOk returns a tuple with the BranchNames field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBranchNames

`func (o *MultibranchPipeline) SetBranchNames(v []string)`

SetBranchNames sets BranchNames field to given value.

### HasBranchNames

`func (o *MultibranchPipeline) HasBranchNames() bool`

HasBranchNames returns a boolean if a field has been set.

### GetNumberOfFailingBranches

`func (o *MultibranchPipeline) GetNumberOfFailingBranches() int32`

GetNumberOfFailingBranches returns the NumberOfFailingBranches field if non-nil, zero value otherwise.

### GetNumberOfFailingBranchesOk

`func (o *MultibranchPipeline) GetNumberOfFailingBranchesOk() (*int32, bool)`

GetNumberOfFailingBranchesOk returns a tuple with the NumberOfFailingBranches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfFailingBranches

`func (o *MultibranchPipeline) SetNumberOfFailingBranches(v int32)`

SetNumberOfFailingBranches sets NumberOfFailingBranches field to given value.

### HasNumberOfFailingBranches

`func (o *MultibranchPipeline) HasNumberOfFailingBranches() bool`

HasNumberOfFailingBranches returns a boolean if a field has been set.

### GetNumberOfFailingPullRequests

`func (o *MultibranchPipeline) GetNumberOfFailingPullRequests() int32`

GetNumberOfFailingPullRequests returns the NumberOfFailingPullRequests field if non-nil, zero value otherwise.

### GetNumberOfFailingPullRequestsOk

`func (o *MultibranchPipeline) GetNumberOfFailingPullRequestsOk() (*int32, bool)`

GetNumberOfFailingPullRequestsOk returns a tuple with the NumberOfFailingPullRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfFailingPullRequests

`func (o *MultibranchPipeline) SetNumberOfFailingPullRequests(v int32)`

SetNumberOfFailingPullRequests sets NumberOfFailingPullRequests field to given value.

### HasNumberOfFailingPullRequests

`func (o *MultibranchPipeline) HasNumberOfFailingPullRequests() bool`

HasNumberOfFailingPullRequests returns a boolean if a field has been set.

### GetNumberOfSuccessfulBranches

`func (o *MultibranchPipeline) GetNumberOfSuccessfulBranches() int32`

GetNumberOfSuccessfulBranches returns the NumberOfSuccessfulBranches field if non-nil, zero value otherwise.

### GetNumberOfSuccessfulBranchesOk

`func (o *MultibranchPipeline) GetNumberOfSuccessfulBranchesOk() (*int32, bool)`

GetNumberOfSuccessfulBranchesOk returns a tuple with the NumberOfSuccessfulBranches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfSuccessfulBranches

`func (o *MultibranchPipeline) SetNumberOfSuccessfulBranches(v int32)`

SetNumberOfSuccessfulBranches sets NumberOfSuccessfulBranches field to given value.

### HasNumberOfSuccessfulBranches

`func (o *MultibranchPipeline) HasNumberOfSuccessfulBranches() bool`

HasNumberOfSuccessfulBranches returns a boolean if a field has been set.

### GetNumberOfSuccessfulPullRequests

`func (o *MultibranchPipeline) GetNumberOfSuccessfulPullRequests() int32`

GetNumberOfSuccessfulPullRequests returns the NumberOfSuccessfulPullRequests field if non-nil, zero value otherwise.

### GetNumberOfSuccessfulPullRequestsOk

`func (o *MultibranchPipeline) GetNumberOfSuccessfulPullRequestsOk() (*int32, bool)`

GetNumberOfSuccessfulPullRequestsOk returns a tuple with the NumberOfSuccessfulPullRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfSuccessfulPullRequests

`func (o *MultibranchPipeline) SetNumberOfSuccessfulPullRequests(v int32)`

SetNumberOfSuccessfulPullRequests sets NumberOfSuccessfulPullRequests field to given value.

### HasNumberOfSuccessfulPullRequests

`func (o *MultibranchPipeline) HasNumberOfSuccessfulPullRequests() bool`

HasNumberOfSuccessfulPullRequests returns a boolean if a field has been set.

### GetTotalNumberOfBranches

`func (o *MultibranchPipeline) GetTotalNumberOfBranches() int32`

GetTotalNumberOfBranches returns the TotalNumberOfBranches field if non-nil, zero value otherwise.

### GetTotalNumberOfBranchesOk

`func (o *MultibranchPipeline) GetTotalNumberOfBranchesOk() (*int32, bool)`

GetTotalNumberOfBranchesOk returns a tuple with the TotalNumberOfBranches field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalNumberOfBranches

`func (o *MultibranchPipeline) SetTotalNumberOfBranches(v int32)`

SetTotalNumberOfBranches sets TotalNumberOfBranches field to given value.

### HasTotalNumberOfBranches

`func (o *MultibranchPipeline) HasTotalNumberOfBranches() bool`

HasTotalNumberOfBranches returns a boolean if a field has been set.

### GetTotalNumberOfPullRequests

`func (o *MultibranchPipeline) GetTotalNumberOfPullRequests() int32`

GetTotalNumberOfPullRequests returns the TotalNumberOfPullRequests field if non-nil, zero value otherwise.

### GetTotalNumberOfPullRequestsOk

`func (o *MultibranchPipeline) GetTotalNumberOfPullRequestsOk() (*int32, bool)`

GetTotalNumberOfPullRequestsOk returns a tuple with the TotalNumberOfPullRequests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalNumberOfPullRequests

`func (o *MultibranchPipeline) SetTotalNumberOfPullRequests(v int32)`

SetTotalNumberOfPullRequests sets TotalNumberOfPullRequests field to given value.

### HasTotalNumberOfPullRequests

`func (o *MultibranchPipeline) HasTotalNumberOfPullRequests() bool`

HasTotalNumberOfPullRequests returns a boolean if a field has been set.

### GetClass

`func (o *MultibranchPipeline) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *MultibranchPipeline) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *MultibranchPipeline) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *MultibranchPipeline) HasClass() bool`

HasClass returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


