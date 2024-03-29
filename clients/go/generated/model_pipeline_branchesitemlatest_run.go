/*
Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

API version: 2.0.1-pre.0
Contact: blah+oapicf@cliffano.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// checks if the PipelineBranchesitemlatestRun type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PipelineBranchesitemlatestRun{}

// PipelineBranchesitemlatestRun struct for PipelineBranchesitemlatestRun
type PipelineBranchesitemlatestRun struct {
	DurationInMillis *int32 `json:"durationInMillis,omitempty"`
	EstimatedDurationInMillis *int32 `json:"estimatedDurationInMillis,omitempty"`
	EnQueueTime *string `json:"enQueueTime,omitempty"`
	EndTime *string `json:"endTime,omitempty"`
	Id *string `json:"id,omitempty"`
	Organization *string `json:"organization,omitempty"`
	Pipeline *string `json:"pipeline,omitempty"`
	Result *string `json:"result,omitempty"`
	RunSummary *string `json:"runSummary,omitempty"`
	StartTime *string `json:"startTime,omitempty"`
	State *string `json:"state,omitempty"`
	Type *string `json:"type,omitempty"`
	CommitId *string `json:"commitId,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineBranchesitemlatestRun instantiates a new PipelineBranchesitemlatestRun object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineBranchesitemlatestRun() *PipelineBranchesitemlatestRun {
	this := PipelineBranchesitemlatestRun{}
	return &this
}

// NewPipelineBranchesitemlatestRunWithDefaults instantiates a new PipelineBranchesitemlatestRun object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineBranchesitemlatestRunWithDefaults() *PipelineBranchesitemlatestRun {
	this := PipelineBranchesitemlatestRun{}
	return &this
}

// GetDurationInMillis returns the DurationInMillis field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetDurationInMillis() int32 {
	if o == nil || IsNil(o.DurationInMillis) {
		var ret int32
		return ret
	}
	return *o.DurationInMillis
}

// GetDurationInMillisOk returns a tuple with the DurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.DurationInMillis) {
		return nil, false
	}
	return o.DurationInMillis, true
}

// HasDurationInMillis returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasDurationInMillis() bool {
	if o != nil && !IsNil(o.DurationInMillis) {
		return true
	}

	return false
}

// SetDurationInMillis gets a reference to the given int32 and assigns it to the DurationInMillis field.
func (o *PipelineBranchesitemlatestRun) SetDurationInMillis(v int32) {
	o.DurationInMillis = &v
}

// GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetEstimatedDurationInMillis() int32 {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		var ret int32
		return ret
	}
	return *o.EstimatedDurationInMillis
}

// GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetEstimatedDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		return nil, false
	}
	return o.EstimatedDurationInMillis, true
}

// HasEstimatedDurationInMillis returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasEstimatedDurationInMillis() bool {
	if o != nil && !IsNil(o.EstimatedDurationInMillis) {
		return true
	}

	return false
}

// SetEstimatedDurationInMillis gets a reference to the given int32 and assigns it to the EstimatedDurationInMillis field.
func (o *PipelineBranchesitemlatestRun) SetEstimatedDurationInMillis(v int32) {
	o.EstimatedDurationInMillis = &v
}

// GetEnQueueTime returns the EnQueueTime field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetEnQueueTime() string {
	if o == nil || IsNil(o.EnQueueTime) {
		var ret string
		return ret
	}
	return *o.EnQueueTime
}

// GetEnQueueTimeOk returns a tuple with the EnQueueTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetEnQueueTimeOk() (*string, bool) {
	if o == nil || IsNil(o.EnQueueTime) {
		return nil, false
	}
	return o.EnQueueTime, true
}

// HasEnQueueTime returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasEnQueueTime() bool {
	if o != nil && !IsNil(o.EnQueueTime) {
		return true
	}

	return false
}

// SetEnQueueTime gets a reference to the given string and assigns it to the EnQueueTime field.
func (o *PipelineBranchesitemlatestRun) SetEnQueueTime(v string) {
	o.EnQueueTime = &v
}

// GetEndTime returns the EndTime field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetEndTime() string {
	if o == nil || IsNil(o.EndTime) {
		var ret string
		return ret
	}
	return *o.EndTime
}

// GetEndTimeOk returns a tuple with the EndTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetEndTimeOk() (*string, bool) {
	if o == nil || IsNil(o.EndTime) {
		return nil, false
	}
	return o.EndTime, true
}

// HasEndTime returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasEndTime() bool {
	if o != nil && !IsNil(o.EndTime) {
		return true
	}

	return false
}

// SetEndTime gets a reference to the given string and assigns it to the EndTime field.
func (o *PipelineBranchesitemlatestRun) SetEndTime(v string) {
	o.EndTime = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetId() string {
	if o == nil || IsNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetIdOk() (*string, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *PipelineBranchesitemlatestRun) SetId(v string) {
	o.Id = &v
}

// GetOrganization returns the Organization field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetOrganization() string {
	if o == nil || IsNil(o.Organization) {
		var ret string
		return ret
	}
	return *o.Organization
}

// GetOrganizationOk returns a tuple with the Organization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetOrganizationOk() (*string, bool) {
	if o == nil || IsNil(o.Organization) {
		return nil, false
	}
	return o.Organization, true
}

// HasOrganization returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasOrganization() bool {
	if o != nil && !IsNil(o.Organization) {
		return true
	}

	return false
}

// SetOrganization gets a reference to the given string and assigns it to the Organization field.
func (o *PipelineBranchesitemlatestRun) SetOrganization(v string) {
	o.Organization = &v
}

// GetPipeline returns the Pipeline field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetPipeline() string {
	if o == nil || IsNil(o.Pipeline) {
		var ret string
		return ret
	}
	return *o.Pipeline
}

// GetPipelineOk returns a tuple with the Pipeline field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetPipelineOk() (*string, bool) {
	if o == nil || IsNil(o.Pipeline) {
		return nil, false
	}
	return o.Pipeline, true
}

// HasPipeline returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasPipeline() bool {
	if o != nil && !IsNil(o.Pipeline) {
		return true
	}

	return false
}

// SetPipeline gets a reference to the given string and assigns it to the Pipeline field.
func (o *PipelineBranchesitemlatestRun) SetPipeline(v string) {
	o.Pipeline = &v
}

// GetResult returns the Result field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetResult() string {
	if o == nil || IsNil(o.Result) {
		var ret string
		return ret
	}
	return *o.Result
}

// GetResultOk returns a tuple with the Result field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetResultOk() (*string, bool) {
	if o == nil || IsNil(o.Result) {
		return nil, false
	}
	return o.Result, true
}

// HasResult returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasResult() bool {
	if o != nil && !IsNil(o.Result) {
		return true
	}

	return false
}

// SetResult gets a reference to the given string and assigns it to the Result field.
func (o *PipelineBranchesitemlatestRun) SetResult(v string) {
	o.Result = &v
}

// GetRunSummary returns the RunSummary field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetRunSummary() string {
	if o == nil || IsNil(o.RunSummary) {
		var ret string
		return ret
	}
	return *o.RunSummary
}

// GetRunSummaryOk returns a tuple with the RunSummary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetRunSummaryOk() (*string, bool) {
	if o == nil || IsNil(o.RunSummary) {
		return nil, false
	}
	return o.RunSummary, true
}

// HasRunSummary returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasRunSummary() bool {
	if o != nil && !IsNil(o.RunSummary) {
		return true
	}

	return false
}

// SetRunSummary gets a reference to the given string and assigns it to the RunSummary field.
func (o *PipelineBranchesitemlatestRun) SetRunSummary(v string) {
	o.RunSummary = &v
}

// GetStartTime returns the StartTime field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetStartTime() string {
	if o == nil || IsNil(o.StartTime) {
		var ret string
		return ret
	}
	return *o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetStartTimeOk() (*string, bool) {
	if o == nil || IsNil(o.StartTime) {
		return nil, false
	}
	return o.StartTime, true
}

// HasStartTime returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasStartTime() bool {
	if o != nil && !IsNil(o.StartTime) {
		return true
	}

	return false
}

// SetStartTime gets a reference to the given string and assigns it to the StartTime field.
func (o *PipelineBranchesitemlatestRun) SetStartTime(v string) {
	o.StartTime = &v
}

// GetState returns the State field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetState() string {
	if o == nil || IsNil(o.State) {
		var ret string
		return ret
	}
	return *o.State
}

// GetStateOk returns a tuple with the State field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetStateOk() (*string, bool) {
	if o == nil || IsNil(o.State) {
		return nil, false
	}
	return o.State, true
}

// HasState returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasState() bool {
	if o != nil && !IsNil(o.State) {
		return true
	}

	return false
}

// SetState gets a reference to the given string and assigns it to the State field.
func (o *PipelineBranchesitemlatestRun) SetState(v string) {
	o.State = &v
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetType() string {
	if o == nil || IsNil(o.Type) {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetTypeOk() (*string, bool) {
	if o == nil || IsNil(o.Type) {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasType() bool {
	if o != nil && !IsNil(o.Type) {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *PipelineBranchesitemlatestRun) SetType(v string) {
	o.Type = &v
}

// GetCommitId returns the CommitId field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetCommitId() string {
	if o == nil || IsNil(o.CommitId) {
		var ret string
		return ret
	}
	return *o.CommitId
}

// GetCommitIdOk returns a tuple with the CommitId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetCommitIdOk() (*string, bool) {
	if o == nil || IsNil(o.CommitId) {
		return nil, false
	}
	return o.CommitId, true
}

// HasCommitId returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasCommitId() bool {
	if o != nil && !IsNil(o.CommitId) {
		return true
	}

	return false
}

// SetCommitId gets a reference to the given string and assigns it to the CommitId field.
func (o *PipelineBranchesitemlatestRun) SetCommitId(v string) {
	o.CommitId = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineBranchesitemlatestRun) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitemlatestRun) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineBranchesitemlatestRun) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineBranchesitemlatestRun) SetClass(v string) {
	o.Class = &v
}

func (o PipelineBranchesitemlatestRun) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PipelineBranchesitemlatestRun) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.DurationInMillis) {
		toSerialize["durationInMillis"] = o.DurationInMillis
	}
	if !IsNil(o.EstimatedDurationInMillis) {
		toSerialize["estimatedDurationInMillis"] = o.EstimatedDurationInMillis
	}
	if !IsNil(o.EnQueueTime) {
		toSerialize["enQueueTime"] = o.EnQueueTime
	}
	if !IsNil(o.EndTime) {
		toSerialize["endTime"] = o.EndTime
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !IsNil(o.Organization) {
		toSerialize["organization"] = o.Organization
	}
	if !IsNil(o.Pipeline) {
		toSerialize["pipeline"] = o.Pipeline
	}
	if !IsNil(o.Result) {
		toSerialize["result"] = o.Result
	}
	if !IsNil(o.RunSummary) {
		toSerialize["runSummary"] = o.RunSummary
	}
	if !IsNil(o.StartTime) {
		toSerialize["startTime"] = o.StartTime
	}
	if !IsNil(o.State) {
		toSerialize["state"] = o.State
	}
	if !IsNil(o.Type) {
		toSerialize["type"] = o.Type
	}
	if !IsNil(o.CommitId) {
		toSerialize["commitId"] = o.CommitId
	}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	return toSerialize, nil
}

type NullablePipelineBranchesitemlatestRun struct {
	value *PipelineBranchesitemlatestRun
	isSet bool
}

func (v NullablePipelineBranchesitemlatestRun) Get() *PipelineBranchesitemlatestRun {
	return v.value
}

func (v *NullablePipelineBranchesitemlatestRun) Set(val *PipelineBranchesitemlatestRun) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineBranchesitemlatestRun) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineBranchesitemlatestRun) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineBranchesitemlatestRun(val *PipelineBranchesitemlatestRun) *NullablePipelineBranchesitemlatestRun {
	return &NullablePipelineBranchesitemlatestRun{value: val, isSet: true}
}

func (v NullablePipelineBranchesitemlatestRun) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineBranchesitemlatestRun) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


