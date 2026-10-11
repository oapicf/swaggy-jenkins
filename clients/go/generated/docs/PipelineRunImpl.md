# PipelineRunImpl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**PipelineRunImpllinks**](PipelineRunImpllinks.md) |  | [optional] 
**DurationInMillis** | Pointer to **int32** |  | [optional] 
**EnQueueTime** | Pointer to **string** |  | [optional] 
**EndTime** | Pointer to **string** |  | [optional] 
**EstimatedDurationInMillis** | Pointer to **int32** |  | [optional] 
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

### NewPipelineRunImpl

`func NewPipelineRunImpl() *PipelineRunImpl`

NewPipelineRunImpl instantiates a new PipelineRunImpl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPipelineRunImplWithDefaults

`func NewPipelineRunImplWithDefaults() *PipelineRunImpl`

NewPipelineRunImplWithDefaults instantiates a new PipelineRunImpl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *PipelineRunImpl) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *PipelineRunImpl) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *PipelineRunImpl) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *PipelineRunImpl) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *PipelineRunImpl) GetLinks() PipelineRunImpllinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *PipelineRunImpl) GetLinksOk() (*PipelineRunImpllinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *PipelineRunImpl) SetLinks(v PipelineRunImpllinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *PipelineRunImpl) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDurationInMillis

`func (o *PipelineRunImpl) GetDurationInMillis() int32`

GetDurationInMillis returns the DurationInMillis field if non-nil, zero value otherwise.

### GetDurationInMillisOk

`func (o *PipelineRunImpl) GetDurationInMillisOk() (*int32, bool)`

GetDurationInMillisOk returns a tuple with the DurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDurationInMillis

`func (o *PipelineRunImpl) SetDurationInMillis(v int32)`

SetDurationInMillis sets DurationInMillis field to given value.

### HasDurationInMillis

`func (o *PipelineRunImpl) HasDurationInMillis() bool`

HasDurationInMillis returns a boolean if a field has been set.

### GetEnQueueTime

`func (o *PipelineRunImpl) GetEnQueueTime() string`

GetEnQueueTime returns the EnQueueTime field if non-nil, zero value otherwise.

### GetEnQueueTimeOk

`func (o *PipelineRunImpl) GetEnQueueTimeOk() (*string, bool)`

GetEnQueueTimeOk returns a tuple with the EnQueueTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnQueueTime

`func (o *PipelineRunImpl) SetEnQueueTime(v string)`

SetEnQueueTime sets EnQueueTime field to given value.

### HasEnQueueTime

`func (o *PipelineRunImpl) HasEnQueueTime() bool`

HasEnQueueTime returns a boolean if a field has been set.

### GetEndTime

`func (o *PipelineRunImpl) GetEndTime() string`

GetEndTime returns the EndTime field if non-nil, zero value otherwise.

### GetEndTimeOk

`func (o *PipelineRunImpl) GetEndTimeOk() (*string, bool)`

GetEndTimeOk returns a tuple with the EndTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndTime

`func (o *PipelineRunImpl) SetEndTime(v string)`

SetEndTime sets EndTime field to given value.

### HasEndTime

`func (o *PipelineRunImpl) HasEndTime() bool`

HasEndTime returns a boolean if a field has been set.

### GetEstimatedDurationInMillis

`func (o *PipelineRunImpl) GetEstimatedDurationInMillis() int32`

GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field if non-nil, zero value otherwise.

### GetEstimatedDurationInMillisOk

`func (o *PipelineRunImpl) GetEstimatedDurationInMillisOk() (*int32, bool)`

GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedDurationInMillis

`func (o *PipelineRunImpl) SetEstimatedDurationInMillis(v int32)`

SetEstimatedDurationInMillis sets EstimatedDurationInMillis field to given value.

### HasEstimatedDurationInMillis

`func (o *PipelineRunImpl) HasEstimatedDurationInMillis() bool`

HasEstimatedDurationInMillis returns a boolean if a field has been set.

### GetId

`func (o *PipelineRunImpl) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PipelineRunImpl) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PipelineRunImpl) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PipelineRunImpl) HasId() bool`

HasId returns a boolean if a field has been set.

### GetOrganization

`func (o *PipelineRunImpl) GetOrganization() string`

GetOrganization returns the Organization field if non-nil, zero value otherwise.

### GetOrganizationOk

`func (o *PipelineRunImpl) GetOrganizationOk() (*string, bool)`

GetOrganizationOk returns a tuple with the Organization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrganization

`func (o *PipelineRunImpl) SetOrganization(v string)`

SetOrganization sets Organization field to given value.

### HasOrganization

`func (o *PipelineRunImpl) HasOrganization() bool`

HasOrganization returns a boolean if a field has been set.

### GetPipeline

`func (o *PipelineRunImpl) GetPipeline() string`

GetPipeline returns the Pipeline field if non-nil, zero value otherwise.

### GetPipelineOk

`func (o *PipelineRunImpl) GetPipelineOk() (*string, bool)`

GetPipelineOk returns a tuple with the Pipeline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPipeline

`func (o *PipelineRunImpl) SetPipeline(v string)`

SetPipeline sets Pipeline field to given value.

### HasPipeline

`func (o *PipelineRunImpl) HasPipeline() bool`

HasPipeline returns a boolean if a field has been set.

### GetResult

`func (o *PipelineRunImpl) GetResult() string`

GetResult returns the Result field if non-nil, zero value otherwise.

### GetResultOk

`func (o *PipelineRunImpl) GetResultOk() (*string, bool)`

GetResultOk returns a tuple with the Result field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResult

`func (o *PipelineRunImpl) SetResult(v string)`

SetResult sets Result field to given value.

### HasResult

`func (o *PipelineRunImpl) HasResult() bool`

HasResult returns a boolean if a field has been set.

### GetRunSummary

`func (o *PipelineRunImpl) GetRunSummary() string`

GetRunSummary returns the RunSummary field if non-nil, zero value otherwise.

### GetRunSummaryOk

`func (o *PipelineRunImpl) GetRunSummaryOk() (*string, bool)`

GetRunSummaryOk returns a tuple with the RunSummary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunSummary

`func (o *PipelineRunImpl) SetRunSummary(v string)`

SetRunSummary sets RunSummary field to given value.

### HasRunSummary

`func (o *PipelineRunImpl) HasRunSummary() bool`

HasRunSummary returns a boolean if a field has been set.

### GetStartTime

`func (o *PipelineRunImpl) GetStartTime() string`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *PipelineRunImpl) GetStartTimeOk() (*string, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *PipelineRunImpl) SetStartTime(v string)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *PipelineRunImpl) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetState

`func (o *PipelineRunImpl) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *PipelineRunImpl) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *PipelineRunImpl) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *PipelineRunImpl) HasState() bool`

HasState returns a boolean if a field has been set.

### GetType

`func (o *PipelineRunImpl) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PipelineRunImpl) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PipelineRunImpl) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PipelineRunImpl) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCommitId

`func (o *PipelineRunImpl) GetCommitId() string`

GetCommitId returns the CommitId field if non-nil, zero value otherwise.

### GetCommitIdOk

`func (o *PipelineRunImpl) GetCommitIdOk() (*string, bool)`

GetCommitIdOk returns a tuple with the CommitId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitId

`func (o *PipelineRunImpl) SetCommitId(v string)`

SetCommitId sets CommitId field to given value.

### HasCommitId

`func (o *PipelineRunImpl) HasCommitId() bool`

HasCommitId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


