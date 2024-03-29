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

// checks if the PipelineRun type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PipelineRun{}

// PipelineRun struct for PipelineRun
type PipelineRun struct {
	Class *string `json:"_class,omitempty"`
	Artifacts []PipelineRunartifacts `json:"artifacts,omitempty"`
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
}

// NewPipelineRun instantiates a new PipelineRun object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineRun() *PipelineRun {
	this := PipelineRun{}
	return &this
}

// NewPipelineRunWithDefaults instantiates a new PipelineRun object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineRunWithDefaults() *PipelineRun {
	this := PipelineRun{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineRun) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineRun) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineRun) SetClass(v string) {
	o.Class = &v
}

// GetArtifacts returns the Artifacts field value if set, zero value otherwise.
func (o *PipelineRun) GetArtifacts() []PipelineRunartifacts {
	if o == nil || IsNil(o.Artifacts) {
		var ret []PipelineRunartifacts
		return ret
	}
	return o.Artifacts
}

// GetArtifactsOk returns a tuple with the Artifacts field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetArtifactsOk() ([]PipelineRunartifacts, bool) {
	if o == nil || IsNil(o.Artifacts) {
		return nil, false
	}
	return o.Artifacts, true
}

// HasArtifacts returns a boolean if a field has been set.
func (o *PipelineRun) HasArtifacts() bool {
	if o != nil && !IsNil(o.Artifacts) {
		return true
	}

	return false
}

// SetArtifacts gets a reference to the given []PipelineRunartifacts and assigns it to the Artifacts field.
func (o *PipelineRun) SetArtifacts(v []PipelineRunartifacts) {
	o.Artifacts = v
}

// GetDurationInMillis returns the DurationInMillis field value if set, zero value otherwise.
func (o *PipelineRun) GetDurationInMillis() int32 {
	if o == nil || IsNil(o.DurationInMillis) {
		var ret int32
		return ret
	}
	return *o.DurationInMillis
}

// GetDurationInMillisOk returns a tuple with the DurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.DurationInMillis) {
		return nil, false
	}
	return o.DurationInMillis, true
}

// HasDurationInMillis returns a boolean if a field has been set.
func (o *PipelineRun) HasDurationInMillis() bool {
	if o != nil && !IsNil(o.DurationInMillis) {
		return true
	}

	return false
}

// SetDurationInMillis gets a reference to the given int32 and assigns it to the DurationInMillis field.
func (o *PipelineRun) SetDurationInMillis(v int32) {
	o.DurationInMillis = &v
}

// GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field value if set, zero value otherwise.
func (o *PipelineRun) GetEstimatedDurationInMillis() int32 {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		var ret int32
		return ret
	}
	return *o.EstimatedDurationInMillis
}

// GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetEstimatedDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		return nil, false
	}
	return o.EstimatedDurationInMillis, true
}

// HasEstimatedDurationInMillis returns a boolean if a field has been set.
func (o *PipelineRun) HasEstimatedDurationInMillis() bool {
	if o != nil && !IsNil(o.EstimatedDurationInMillis) {
		return true
	}

	return false
}

// SetEstimatedDurationInMillis gets a reference to the given int32 and assigns it to the EstimatedDurationInMillis field.
func (o *PipelineRun) SetEstimatedDurationInMillis(v int32) {
	o.EstimatedDurationInMillis = &v
}

// GetEnQueueTime returns the EnQueueTime field value if set, zero value otherwise.
func (o *PipelineRun) GetEnQueueTime() string {
	if o == nil || IsNil(o.EnQueueTime) {
		var ret string
		return ret
	}
	return *o.EnQueueTime
}

// GetEnQueueTimeOk returns a tuple with the EnQueueTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetEnQueueTimeOk() (*string, bool) {
	if o == nil || IsNil(o.EnQueueTime) {
		return nil, false
	}
	return o.EnQueueTime, true
}

// HasEnQueueTime returns a boolean if a field has been set.
func (o *PipelineRun) HasEnQueueTime() bool {
	if o != nil && !IsNil(o.EnQueueTime) {
		return true
	}

	return false
}

// SetEnQueueTime gets a reference to the given string and assigns it to the EnQueueTime field.
func (o *PipelineRun) SetEnQueueTime(v string) {
	o.EnQueueTime = &v
}

// GetEndTime returns the EndTime field value if set, zero value otherwise.
func (o *PipelineRun) GetEndTime() string {
	if o == nil || IsNil(o.EndTime) {
		var ret string
		return ret
	}
	return *o.EndTime
}

// GetEndTimeOk returns a tuple with the EndTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetEndTimeOk() (*string, bool) {
	if o == nil || IsNil(o.EndTime) {
		return nil, false
	}
	return o.EndTime, true
}

// HasEndTime returns a boolean if a field has been set.
func (o *PipelineRun) HasEndTime() bool {
	if o != nil && !IsNil(o.EndTime) {
		return true
	}

	return false
}

// SetEndTime gets a reference to the given string and assigns it to the EndTime field.
func (o *PipelineRun) SetEndTime(v string) {
	o.EndTime = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *PipelineRun) GetId() string {
	if o == nil || IsNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetIdOk() (*string, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *PipelineRun) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *PipelineRun) SetId(v string) {
	o.Id = &v
}

// GetOrganization returns the Organization field value if set, zero value otherwise.
func (o *PipelineRun) GetOrganization() string {
	if o == nil || IsNil(o.Organization) {
		var ret string
		return ret
	}
	return *o.Organization
}

// GetOrganizationOk returns a tuple with the Organization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetOrganizationOk() (*string, bool) {
	if o == nil || IsNil(o.Organization) {
		return nil, false
	}
	return o.Organization, true
}

// HasOrganization returns a boolean if a field has been set.
func (o *PipelineRun) HasOrganization() bool {
	if o != nil && !IsNil(o.Organization) {
		return true
	}

	return false
}

// SetOrganization gets a reference to the given string and assigns it to the Organization field.
func (o *PipelineRun) SetOrganization(v string) {
	o.Organization = &v
}

// GetPipeline returns the Pipeline field value if set, zero value otherwise.
func (o *PipelineRun) GetPipeline() string {
	if o == nil || IsNil(o.Pipeline) {
		var ret string
		return ret
	}
	return *o.Pipeline
}

// GetPipelineOk returns a tuple with the Pipeline field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetPipelineOk() (*string, bool) {
	if o == nil || IsNil(o.Pipeline) {
		return nil, false
	}
	return o.Pipeline, true
}

// HasPipeline returns a boolean if a field has been set.
func (o *PipelineRun) HasPipeline() bool {
	if o != nil && !IsNil(o.Pipeline) {
		return true
	}

	return false
}

// SetPipeline gets a reference to the given string and assigns it to the Pipeline field.
func (o *PipelineRun) SetPipeline(v string) {
	o.Pipeline = &v
}

// GetResult returns the Result field value if set, zero value otherwise.
func (o *PipelineRun) GetResult() string {
	if o == nil || IsNil(o.Result) {
		var ret string
		return ret
	}
	return *o.Result
}

// GetResultOk returns a tuple with the Result field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetResultOk() (*string, bool) {
	if o == nil || IsNil(o.Result) {
		return nil, false
	}
	return o.Result, true
}

// HasResult returns a boolean if a field has been set.
func (o *PipelineRun) HasResult() bool {
	if o != nil && !IsNil(o.Result) {
		return true
	}

	return false
}

// SetResult gets a reference to the given string and assigns it to the Result field.
func (o *PipelineRun) SetResult(v string) {
	o.Result = &v
}

// GetRunSummary returns the RunSummary field value if set, zero value otherwise.
func (o *PipelineRun) GetRunSummary() string {
	if o == nil || IsNil(o.RunSummary) {
		var ret string
		return ret
	}
	return *o.RunSummary
}

// GetRunSummaryOk returns a tuple with the RunSummary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetRunSummaryOk() (*string, bool) {
	if o == nil || IsNil(o.RunSummary) {
		return nil, false
	}
	return o.RunSummary, true
}

// HasRunSummary returns a boolean if a field has been set.
func (o *PipelineRun) HasRunSummary() bool {
	if o != nil && !IsNil(o.RunSummary) {
		return true
	}

	return false
}

// SetRunSummary gets a reference to the given string and assigns it to the RunSummary field.
func (o *PipelineRun) SetRunSummary(v string) {
	o.RunSummary = &v
}

// GetStartTime returns the StartTime field value if set, zero value otherwise.
func (o *PipelineRun) GetStartTime() string {
	if o == nil || IsNil(o.StartTime) {
		var ret string
		return ret
	}
	return *o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetStartTimeOk() (*string, bool) {
	if o == nil || IsNil(o.StartTime) {
		return nil, false
	}
	return o.StartTime, true
}

// HasStartTime returns a boolean if a field has been set.
func (o *PipelineRun) HasStartTime() bool {
	if o != nil && !IsNil(o.StartTime) {
		return true
	}

	return false
}

// SetStartTime gets a reference to the given string and assigns it to the StartTime field.
func (o *PipelineRun) SetStartTime(v string) {
	o.StartTime = &v
}

// GetState returns the State field value if set, zero value otherwise.
func (o *PipelineRun) GetState() string {
	if o == nil || IsNil(o.State) {
		var ret string
		return ret
	}
	return *o.State
}

// GetStateOk returns a tuple with the State field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetStateOk() (*string, bool) {
	if o == nil || IsNil(o.State) {
		return nil, false
	}
	return o.State, true
}

// HasState returns a boolean if a field has been set.
func (o *PipelineRun) HasState() bool {
	if o != nil && !IsNil(o.State) {
		return true
	}

	return false
}

// SetState gets a reference to the given string and assigns it to the State field.
func (o *PipelineRun) SetState(v string) {
	o.State = &v
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *PipelineRun) GetType() string {
	if o == nil || IsNil(o.Type) {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetTypeOk() (*string, bool) {
	if o == nil || IsNil(o.Type) {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *PipelineRun) HasType() bool {
	if o != nil && !IsNil(o.Type) {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *PipelineRun) SetType(v string) {
	o.Type = &v
}

// GetCommitId returns the CommitId field value if set, zero value otherwise.
func (o *PipelineRun) GetCommitId() string {
	if o == nil || IsNil(o.CommitId) {
		var ret string
		return ret
	}
	return *o.CommitId
}

// GetCommitIdOk returns a tuple with the CommitId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRun) GetCommitIdOk() (*string, bool) {
	if o == nil || IsNil(o.CommitId) {
		return nil, false
	}
	return o.CommitId, true
}

// HasCommitId returns a boolean if a field has been set.
func (o *PipelineRun) HasCommitId() bool {
	if o != nil && !IsNil(o.CommitId) {
		return true
	}

	return false
}

// SetCommitId gets a reference to the given string and assigns it to the CommitId field.
func (o *PipelineRun) SetCommitId(v string) {
	o.CommitId = &v
}

func (o PipelineRun) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PipelineRun) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Artifacts) {
		toSerialize["artifacts"] = o.Artifacts
	}
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
	return toSerialize, nil
}

type NullablePipelineRun struct {
	value *PipelineRun
	isSet bool
}

func (v NullablePipelineRun) Get() *PipelineRun {
	return v.value
}

func (v *NullablePipelineRun) Set(val *PipelineRun) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineRun) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineRun) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineRun(val *PipelineRun) *NullablePipelineRun {
	return &NullablePipelineRun{value: val, isSet: true}
}

func (v NullablePipelineRun) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineRun) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


