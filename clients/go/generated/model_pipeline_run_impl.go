/*
Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

API version: 1.5.1-pre.0
Contact: blah@cliffano.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// PipelineRunImpl struct for PipelineRunImpl
type PipelineRunImpl struct {
	Class *string `json:"_class,omitempty"`
	Links *PipelineRunImpllinks `json:"_links,omitempty"`
	DurationInMillis *int32 `json:"durationInMillis,omitempty"`
	EnQueueTime *string `json:"enQueueTime,omitempty"`
	EndTime *string `json:"endTime,omitempty"`
	EstimatedDurationInMillis *int32 `json:"estimatedDurationInMillis,omitempty"`
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

// NewPipelineRunImpl instantiates a new PipelineRunImpl object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineRunImpl() *PipelineRunImpl {
	this := PipelineRunImpl{}
	return &this
}

// NewPipelineRunImplWithDefaults instantiates a new PipelineRunImpl object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineRunImplWithDefaults() *PipelineRunImpl {
	this := PipelineRunImpl{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineRunImpl) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetLinks() PipelineRunImpllinks {
	if o == nil || o.Links == nil {
		var ret PipelineRunImpllinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetLinksOk() (*PipelineRunImpllinks, bool) {
	if o == nil || o.Links == nil {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasLinks() bool {
	if o != nil && o.Links != nil {
		return true
	}

	return false
}

// SetLinks gets a reference to the given PipelineRunImpllinks and assigns it to the Links field.
func (o *PipelineRunImpl) SetLinks(v PipelineRunImpllinks) {
	o.Links = &v
}

// GetDurationInMillis returns the DurationInMillis field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetDurationInMillis() int32 {
	if o == nil || o.DurationInMillis == nil {
		var ret int32
		return ret
	}
	return *o.DurationInMillis
}

// GetDurationInMillisOk returns a tuple with the DurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetDurationInMillisOk() (*int32, bool) {
	if o == nil || o.DurationInMillis == nil {
		return nil, false
	}
	return o.DurationInMillis, true
}

// HasDurationInMillis returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasDurationInMillis() bool {
	if o != nil && o.DurationInMillis != nil {
		return true
	}

	return false
}

// SetDurationInMillis gets a reference to the given int32 and assigns it to the DurationInMillis field.
func (o *PipelineRunImpl) SetDurationInMillis(v int32) {
	o.DurationInMillis = &v
}

// GetEnQueueTime returns the EnQueueTime field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetEnQueueTime() string {
	if o == nil || o.EnQueueTime == nil {
		var ret string
		return ret
	}
	return *o.EnQueueTime
}

// GetEnQueueTimeOk returns a tuple with the EnQueueTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetEnQueueTimeOk() (*string, bool) {
	if o == nil || o.EnQueueTime == nil {
		return nil, false
	}
	return o.EnQueueTime, true
}

// HasEnQueueTime returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasEnQueueTime() bool {
	if o != nil && o.EnQueueTime != nil {
		return true
	}

	return false
}

// SetEnQueueTime gets a reference to the given string and assigns it to the EnQueueTime field.
func (o *PipelineRunImpl) SetEnQueueTime(v string) {
	o.EnQueueTime = &v
}

// GetEndTime returns the EndTime field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetEndTime() string {
	if o == nil || o.EndTime == nil {
		var ret string
		return ret
	}
	return *o.EndTime
}

// GetEndTimeOk returns a tuple with the EndTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetEndTimeOk() (*string, bool) {
	if o == nil || o.EndTime == nil {
		return nil, false
	}
	return o.EndTime, true
}

// HasEndTime returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasEndTime() bool {
	if o != nil && o.EndTime != nil {
		return true
	}

	return false
}

// SetEndTime gets a reference to the given string and assigns it to the EndTime field.
func (o *PipelineRunImpl) SetEndTime(v string) {
	o.EndTime = &v
}

// GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetEstimatedDurationInMillis() int32 {
	if o == nil || o.EstimatedDurationInMillis == nil {
		var ret int32
		return ret
	}
	return *o.EstimatedDurationInMillis
}

// GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetEstimatedDurationInMillisOk() (*int32, bool) {
	if o == nil || o.EstimatedDurationInMillis == nil {
		return nil, false
	}
	return o.EstimatedDurationInMillis, true
}

// HasEstimatedDurationInMillis returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasEstimatedDurationInMillis() bool {
	if o != nil && o.EstimatedDurationInMillis != nil {
		return true
	}

	return false
}

// SetEstimatedDurationInMillis gets a reference to the given int32 and assigns it to the EstimatedDurationInMillis field.
func (o *PipelineRunImpl) SetEstimatedDurationInMillis(v int32) {
	o.EstimatedDurationInMillis = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetId() string {
	if o == nil || o.Id == nil {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetIdOk() (*string, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *PipelineRunImpl) SetId(v string) {
	o.Id = &v
}

// GetOrganization returns the Organization field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetOrganization() string {
	if o == nil || o.Organization == nil {
		var ret string
		return ret
	}
	return *o.Organization
}

// GetOrganizationOk returns a tuple with the Organization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetOrganizationOk() (*string, bool) {
	if o == nil || o.Organization == nil {
		return nil, false
	}
	return o.Organization, true
}

// HasOrganization returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasOrganization() bool {
	if o != nil && o.Organization != nil {
		return true
	}

	return false
}

// SetOrganization gets a reference to the given string and assigns it to the Organization field.
func (o *PipelineRunImpl) SetOrganization(v string) {
	o.Organization = &v
}

// GetPipeline returns the Pipeline field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetPipeline() string {
	if o == nil || o.Pipeline == nil {
		var ret string
		return ret
	}
	return *o.Pipeline
}

// GetPipelineOk returns a tuple with the Pipeline field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetPipelineOk() (*string, bool) {
	if o == nil || o.Pipeline == nil {
		return nil, false
	}
	return o.Pipeline, true
}

// HasPipeline returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasPipeline() bool {
	if o != nil && o.Pipeline != nil {
		return true
	}

	return false
}

// SetPipeline gets a reference to the given string and assigns it to the Pipeline field.
func (o *PipelineRunImpl) SetPipeline(v string) {
	o.Pipeline = &v
}

// GetResult returns the Result field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetResult() string {
	if o == nil || o.Result == nil {
		var ret string
		return ret
	}
	return *o.Result
}

// GetResultOk returns a tuple with the Result field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetResultOk() (*string, bool) {
	if o == nil || o.Result == nil {
		return nil, false
	}
	return o.Result, true
}

// HasResult returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasResult() bool {
	if o != nil && o.Result != nil {
		return true
	}

	return false
}

// SetResult gets a reference to the given string and assigns it to the Result field.
func (o *PipelineRunImpl) SetResult(v string) {
	o.Result = &v
}

// GetRunSummary returns the RunSummary field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetRunSummary() string {
	if o == nil || o.RunSummary == nil {
		var ret string
		return ret
	}
	return *o.RunSummary
}

// GetRunSummaryOk returns a tuple with the RunSummary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetRunSummaryOk() (*string, bool) {
	if o == nil || o.RunSummary == nil {
		return nil, false
	}
	return o.RunSummary, true
}

// HasRunSummary returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasRunSummary() bool {
	if o != nil && o.RunSummary != nil {
		return true
	}

	return false
}

// SetRunSummary gets a reference to the given string and assigns it to the RunSummary field.
func (o *PipelineRunImpl) SetRunSummary(v string) {
	o.RunSummary = &v
}

// GetStartTime returns the StartTime field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetStartTime() string {
	if o == nil || o.StartTime == nil {
		var ret string
		return ret
	}
	return *o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetStartTimeOk() (*string, bool) {
	if o == nil || o.StartTime == nil {
		return nil, false
	}
	return o.StartTime, true
}

// HasStartTime returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasStartTime() bool {
	if o != nil && o.StartTime != nil {
		return true
	}

	return false
}

// SetStartTime gets a reference to the given string and assigns it to the StartTime field.
func (o *PipelineRunImpl) SetStartTime(v string) {
	o.StartTime = &v
}

// GetState returns the State field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetState() string {
	if o == nil || o.State == nil {
		var ret string
		return ret
	}
	return *o.State
}

// GetStateOk returns a tuple with the State field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetStateOk() (*string, bool) {
	if o == nil || o.State == nil {
		return nil, false
	}
	return o.State, true
}

// HasState returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasState() bool {
	if o != nil && o.State != nil {
		return true
	}

	return false
}

// SetState gets a reference to the given string and assigns it to the State field.
func (o *PipelineRunImpl) SetState(v string) {
	o.State = &v
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetType() string {
	if o == nil || o.Type == nil {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetTypeOk() (*string, bool) {
	if o == nil || o.Type == nil {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasType() bool {
	if o != nil && o.Type != nil {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *PipelineRunImpl) SetType(v string) {
	o.Type = &v
}

// GetCommitId returns the CommitId field value if set, zero value otherwise.
func (o *PipelineRunImpl) GetCommitId() string {
	if o == nil || o.CommitId == nil {
		var ret string
		return ret
	}
	return *o.CommitId
}

// GetCommitIdOk returns a tuple with the CommitId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpl) GetCommitIdOk() (*string, bool) {
	if o == nil || o.CommitId == nil {
		return nil, false
	}
	return o.CommitId, true
}

// HasCommitId returns a boolean if a field has been set.
func (o *PipelineRunImpl) HasCommitId() bool {
	if o != nil && o.CommitId != nil {
		return true
	}

	return false
}

// SetCommitId gets a reference to the given string and assigns it to the CommitId field.
func (o *PipelineRunImpl) SetCommitId(v string) {
	o.CommitId = &v
}

func (o PipelineRunImpl) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Links != nil {
		toSerialize["_links"] = o.Links
	}
	if o.DurationInMillis != nil {
		toSerialize["durationInMillis"] = o.DurationInMillis
	}
	if o.EnQueueTime != nil {
		toSerialize["enQueueTime"] = o.EnQueueTime
	}
	if o.EndTime != nil {
		toSerialize["endTime"] = o.EndTime
	}
	if o.EstimatedDurationInMillis != nil {
		toSerialize["estimatedDurationInMillis"] = o.EstimatedDurationInMillis
	}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Organization != nil {
		toSerialize["organization"] = o.Organization
	}
	if o.Pipeline != nil {
		toSerialize["pipeline"] = o.Pipeline
	}
	if o.Result != nil {
		toSerialize["result"] = o.Result
	}
	if o.RunSummary != nil {
		toSerialize["runSummary"] = o.RunSummary
	}
	if o.StartTime != nil {
		toSerialize["startTime"] = o.StartTime
	}
	if o.State != nil {
		toSerialize["state"] = o.State
	}
	if o.Type != nil {
		toSerialize["type"] = o.Type
	}
	if o.CommitId != nil {
		toSerialize["commitId"] = o.CommitId
	}
	return json.Marshal(toSerialize)
}

type NullablePipelineRunImpl struct {
	value *PipelineRunImpl
	isSet bool
}

func (v NullablePipelineRunImpl) Get() *PipelineRunImpl {
	return v.value
}

func (v *NullablePipelineRunImpl) Set(val *PipelineRunImpl) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineRunImpl) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineRunImpl) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineRunImpl(val *PipelineRunImpl) *NullablePipelineRunImpl {
	return &NullablePipelineRunImpl{value: val, isSet: true}
}

func (v NullablePipelineRunImpl) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineRunImpl) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


