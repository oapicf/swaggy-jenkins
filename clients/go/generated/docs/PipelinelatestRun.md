# PipelinelatestRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Artifacts** | Pointer to [**[]PipelinelatestRunartifacts**](PipelinelatestRunartifacts.md) |  | [optional] 
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
**Class** | Pointer to **string** |  | [optional] 

## Methods

### NewPipelinelatestRun

`func NewPipelinelatestRun() *PipelinelatestRun`

NewPipelinelatestRun instantiates a new PipelinelatestRun object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelinelatestRunWithDefaults

`func NewPipelinelatestRunWithDefaults() *PipelinelatestRun`

NewPipelinelatestRunWithDefaults instantiates a new PipelinelatestRun object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetArtifacts

`func (o *PipelinelatestRun) GetArtifacts() []PipelinelatestRunartifacts`

GetArtifacts returns the Artifacts field if non-nil, zero value otherwise.

### GetArtifactsOk

`func (o *PipelinelatestRun) GetArtifactsOk() (*[]PipelinelatestRunartifacts, bool)`

GetArtifactsOk returns a tuple with the Artifacts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArtifacts

`func (o *PipelinelatestRun) SetArtifacts(v []PipelinelatestRunartifacts)`

SetArtifacts sets Artifacts field to given value.

### HasArtifacts

`func (o *PipelinelatestRun) HasArtifacts() bool`

HasArtifacts returns a boolean if a field has been set.

### GetDurationInMillis

`func (o *PipelinelatestRun) GetDurationInMillis() int32`

GetDurationInMillis returns the DurationInMillis field if non-nil, zero value otherwise.

### GetDurationInMillisOk

`func (o *PipelinelatestRun) GetDurationInMillisOk() (*int32, bool)`

GetDurationInMillisOk returns a tuple with the DurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationInMillis

`func (o *PipelinelatestRun) SetDurationInMillis(v int32)`

SetDurationInMillis sets DurationInMillis field to given value.

### HasDurationInMillis

`func (o *PipelinelatestRun) HasDurationInMillis() bool`

HasDurationInMillis returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *PipelinelatestRun) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *PipelinelatestRun) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *PipelinelatestRun) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *PipelinelatestRun) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetEnQueueTime

`func (o *PipelinelatestRun) GetEnQueueTime() string`

GetEnQueueTime returns the EnQueueTime field if non-nil, zero value otherwise.

### GetEnQueueTimeOk

`func (o *PipelinelatestRun) GetEnQueueTimeOk() (*string, bool)`

GetEnQueueTimeOk returns a tuple with the EnQueueTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnQueueTime

`func (o *PipelinelatestRun) SetEnQueueTime(v string)`

SetEnQueueTime sets EnQueueTime field to given value.

### HasEnQueueTime

`func (o *PipelinelatestRun) HasEnQueueTime() bool`

HasEnQueueTime returns a boolean if a field has been set.

### GetEndTime

`func (o *PipelinelatestRun) GetEndTime() string`

GetEndTime returns the EndTime field if non-nil, zero value otherwise.

### GetEndTimeOk

`func (o *PipelinelatestRun) GetEndTimeOk() (*string, bool)`

GetEndTimeOk returns a tuple with the EndTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndTime

`func (o *PipelinelatestRun) SetEndTime(v string)`

SetEndTime sets EndTime field to given value.

### HasEndTime

`func (o *PipelinelatestRun) HasEndTime() bool`

HasEndTime returns a boolean if a field has been set.

### GetId

`func (o *PipelinelatestRun) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PipelinelatestRun) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PipelinelatestRun) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PipelinelatestRun) HasId() bool`

HasId returns a boolean if a field has been set.

### GetOrganization

`func (o *PipelinelatestRun) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PipelinelatestRun) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PipelinelatestRun) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *PipelinelatestRun) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetPipeline

`func (o *PipelinelatestRun) GetPipeline() string`

GetPipeline returns the Pipeline field if non-nil, zero value otherwise.

### GetPipelineOk

`func (o *PipelinelatestRun) GetPipelineOk() (*string, bool)`

GetPipelineOk returns a tuple with the Pipeline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPipeline

`func (o *PipelinelatestRun) SetPipeline(v string)`

SetPipeline sets Pipeline field to given value.

### HasPipeline

`func (o *PipelinelatestRun) HasPipeline() bool`

HasPipeline returns a boolean if a field has been set.

### GetResult

`func (o *PipelinelatestRun) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *PipelinelatestRun) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *PipelinelatestRun) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *PipelinelatestRun) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetRunSummary

`func (o *PipelinelatestRun) GetRunSummary() string`

GetRunSummary returns the RunSummary field if non-nil, zero value otherwise.

### GetRunSummaryOk

`func (o *PipelinelatestRun) GetRunSummaryOk() (*string, bool)`

GetRunSummaryOk returns a tuple with the RunSummary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunSummary

`func (o *PipelinelatestRun) SetRunSummary(v string)`

SetRunSummary sets RunSummary field to given value.

### HasRunSummary

`func (o *PipelinelatestRun) HasRunSummary() bool`

HasRunSummary returns a boolean if a field has been set.

### GetStartTime

`func (o *PipelinelatestRun) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *PipelinelatestRun) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *PipelinelatestRun) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *PipelinelatestRun) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetState

`func (o *PipelinelatestRun) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PipelinelatestRun) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PipelinelatestRun) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PipelinelatestRun) HasState() bool`

HasState returns a boolean if a field has been set.

### GetType

`func (o *PipelinelatestRun) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PipelinelatestRun) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PipelinelatestRun) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PipelinelatestRun) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCommitId

`func (o *PipelinelatestRun) GetCommitId() string`

GetCommitId returns the CommitId field if non-nil, zero value otherwise.

### GetCommitIdOk

`func (o *PipelinelatestRun) GetCommitIdOk() (*string, bool)`

GetCommitIdOk returns a tuple with the CommitId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitId

`func (o *PipelinelatestRun) SetCommitId(v string)`

SetCommitId sets CommitId field to given value.

### HasCommitId

`func (o *PipelinelatestRun) HasCommitId() bool`

HasCommitId returns a boolean if a field has been set.

### GetClass

`func (o *PipelinelatestRun) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelinelatestRun) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelinelatestRun) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelinelatestRun) HasClass() bool`

HasClass returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


