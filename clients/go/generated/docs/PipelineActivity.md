# PipelineActivity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Artifacts** | Pointer to [**[]PipelineActivityartifacts**](PipelineActivityartifacts.md) |  | [optional] 
**DurationInMillis** | Pointer to **int32** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
**EnQueueTime** | Pointer to **string** |  | [optional] 
**EndTime** | Pointer to **string** |  | [optional] 
**Id** | Pointer to **string** |  | [optional] 
**Organization** | Pointer to **string** |  | [optional] 
**Pipeline** | Pointer to **string** |  | [optional] 
**Result** | Pointer to **string** |  | [optional] 
**RunSummary** | Pointer to **string** |  | [optional] 
**StartTime** | Pointer to **string** |  | [optional] 
**State** | Pointer to **string** |  | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**CommitId** | Pointer to **string** |  | [optional] 

## Methods

### NewPipelineActivity

`func NewPipelineActivity() *PipelineActivity`

NewPipelineActivity instantiates a new PipelineActivity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineActivityWithDefaults

`func NewPipelineActivityWithDefaults() *PipelineActivity`

NewPipelineActivityWithDefaults instantiates a new PipelineActivity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *PipelineActivity) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelineActivity) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelineActivity) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelineActivity) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetArtifacts

`func (o *PipelineActivity) GetArtifacts() []PipelineActivityartifacts`

GetArtifacts returns the Artifacts field if non-nil, zero value otherwise.

### GetArtifactsOk

`func (o *PipelineActivity) GetArtifactsOk() (*[]PipelineActivityartifacts, bool)`

GetArtifactsOk returns a tuple with the Artifacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArtifacts

`func (o *PipelineActivity) SetArtifacts(v []PipelineActivityartifacts)`

SetArtifacts sets Artifacts field to given value.

### HasArtifacts

`func (o *PipelineActivity) HasArtifacts() bool`

HasArtifacts returns a boolean if a field has been set.

### GetDurationInMillis

`func (o *PipelineActivity) GetDurationInMillis() int32`

GetDurationInMillis returns the DurationInMillis field if non-nil, zero value otherwise.

### GetDurationInMillisOk

`func (o *PipelineActivity) GetDurationInMillisOk() (*int32, bool)`

GetDurationInMillisOk returns a tuple with the DurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationInMillis

`func (o *PipelineActivity) SetDurationInMillis(v int32)`

SetDurationInMillis sets DurationInMillis field to given value.

### HasDurationInMillis

`func (o *PipelineActivity) HasDurationInMillis() bool`

HasDurationInMillis returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *PipelineActivity) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *PipelineActivity) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *PipelineActivity) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *PipelineActivity) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetEnQueueTime

`func (o *PipelineActivity) GetEnQueueTime() string`

GetEnQueueTime returns the EnQueueTime field if non-nil, zero value otherwise.

### GetEnQueueTimeOk

`func (o *PipelineActivity) GetEnQueueTimeOk() (*string, bool)`

GetEnQueueTimeOk returns a tuple with the EnQueueTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnQueueTime

`func (o *PipelineActivity) SetEnQueueTime(v string)`

SetEnQueueTime sets EnQueueTime field to given value.

### HasEnQueueTime

`func (o *PipelineActivity) HasEnQueueTime() bool`

HasEnQueueTime returns a boolean if a field has been set.

### GetEndTime

`func (o *PipelineActivity) GetEndTime() string`

GetEndTime returns the EndTime field if non-nil, zero value otherwise.

### GetEndTimeOk

`func (o *PipelineActivity) GetEndTimeOk() (*string, bool)`

GetEndTimeOk returns a tuple with the EndTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndTime

`func (o *PipelineActivity) SetEndTime(v string)`

SetEndTime sets EndTime field to given value.

### HasEndTime

`func (o *PipelineActivity) HasEndTime() bool`

HasEndTime returns a boolean if a field has been set.

### GetId

`func (o *PipelineActivity) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PipelineActivity) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PipelineActivity) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PipelineActivity) HasId() bool`

HasId returns a boolean if a field has been set.

### GetOrganization

`func (o *PipelineActivity) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PipelineActivity) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PipelineActivity) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *PipelineActivity) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetPipeline

`func (o *PipelineActivity) GetPipeline() string`

GetPipeline returns the Pipeline field if non-nil, zero value otherwise.

### GetPipelineOk

`func (o *PipelineActivity) GetPipelineOk() (*string, bool)`

GetPipelineOk returns a tuple with the Pipeline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPipeline

`func (o *PipelineActivity) SetPipeline(v string)`

SetPipeline sets Pipeline field to given value.

### HasPipeline

`func (o *PipelineActivity) HasPipeline() bool`

HasPipeline returns a boolean if a field has been set.

### GetResult

`func (o *PipelineActivity) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *PipelineActivity) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *PipelineActivity) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *PipelineActivity) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetRunSummary

`func (o *PipelineActivity) GetRunSummary() string`

GetRunSummary returns the RunSummary field if non-nil, zero value otherwise.

### GetRunSummaryOk

`func (o *PipelineActivity) GetRunSummaryOk() (*string, bool)`

GetRunSummaryOk returns a tuple with the RunSummary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunSummary

`func (o *PipelineActivity) SetRunSummary(v string)`

SetRunSummary sets RunSummary field to given value.

### HasRunSummary

`func (o *PipelineActivity) HasRunSummary() bool`

HasRunSummary returns a boolean if a field has been set.

### GetStartTime

`func (o *PipelineActivity) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *PipelineActivity) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *PipelineActivity) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *PipelineActivity) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetState

`func (o *PipelineActivity) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PipelineActivity) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PipelineActivity) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PipelineActivity) HasState() bool`

HasState returns a boolean if a field has been set.

### GetType

`func (o *PipelineActivity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PipelineActivity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PipelineActivity) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PipelineActivity) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCommitId

`func (o *PipelineActivity) GetCommitId() string`

GetCommitId returns the CommitId field if non-nil, zero value otherwise.

### GetCommitIdOk

`func (o *PipelineActivity) GetCommitIdOk() (*string, bool)`

GetCommitIdOk returns a tuple with the CommitId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitId

`func (o *PipelineActivity) SetCommitId(v string)`

SetCommitId sets CommitId field to given value.

### HasCommitId

`func (o *PipelineActivity) HasCommitId() bool`

HasCommitId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


