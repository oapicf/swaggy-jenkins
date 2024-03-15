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

// checks if the PipelineStepImpl type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PipelineStepImpl{}

// PipelineStepImpl struct for PipelineStepImpl
type PipelineStepImpl struct {
	Class *string `json:"_class,omitempty"`
	Links *PipelineStepImpllinks `json:"_links,omitempty"`
	DisplayName *string `json:"displayName,omitempty"`
	DurationInMillis *int32 `json:"durationInMillis,omitempty"`
	Id *string `json:"id,omitempty"`
	Input *InputStepImpl `json:"input,omitempty"`
	Result *string `json:"result,omitempty"`
	StartTime *string `json:"startTime,omitempty"`
	State *string `json:"state,omitempty"`
}

// NewPipelineStepImpl instantiates a new PipelineStepImpl object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineStepImpl() *PipelineStepImpl {
	this := PipelineStepImpl{}
	return &this
}

// NewPipelineStepImplWithDefaults instantiates a new PipelineStepImpl object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineStepImplWithDefaults() *PipelineStepImpl {
	this := PipelineStepImpl{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineStepImpl) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetLinks() PipelineStepImpllinks {
	if o == nil || IsNil(o.Links) {
		var ret PipelineStepImpllinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetLinksOk() (*PipelineStepImpllinks, bool) {
	if o == nil || IsNil(o.Links) {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasLinks() bool {
	if o != nil && !IsNil(o.Links) {
		return true
	}

	return false
}

// SetLinks gets a reference to the given PipelineStepImpllinks and assigns it to the Links field.
func (o *PipelineStepImpl) SetLinks(v PipelineStepImpllinks) {
	o.Links = &v
}

// GetDisplayName returns the DisplayName field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetDisplayName() string {
	if o == nil || IsNil(o.DisplayName) {
		var ret string
		return ret
	}
	return *o.DisplayName
}

// GetDisplayNameOk returns a tuple with the DisplayName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetDisplayNameOk() (*string, bool) {
	if o == nil || IsNil(o.DisplayName) {
		return nil, false
	}
	return o.DisplayName, true
}

// HasDisplayName returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasDisplayName() bool {
	if o != nil && !IsNil(o.DisplayName) {
		return true
	}

	return false
}

// SetDisplayName gets a reference to the given string and assigns it to the DisplayName field.
func (o *PipelineStepImpl) SetDisplayName(v string) {
	o.DisplayName = &v
}

// GetDurationInMillis returns the DurationInMillis field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetDurationInMillis() int32 {
	if o == nil || IsNil(o.DurationInMillis) {
		var ret int32
		return ret
	}
	return *o.DurationInMillis
}

// GetDurationInMillisOk returns a tuple with the DurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.DurationInMillis) {
		return nil, false
	}
	return o.DurationInMillis, true
}

// HasDurationInMillis returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasDurationInMillis() bool {
	if o != nil && !IsNil(o.DurationInMillis) {
		return true
	}

	return false
}

// SetDurationInMillis gets a reference to the given int32 and assigns it to the DurationInMillis field.
func (o *PipelineStepImpl) SetDurationInMillis(v int32) {
	o.DurationInMillis = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetId() string {
	if o == nil || IsNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetIdOk() (*string, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *PipelineStepImpl) SetId(v string) {
	o.Id = &v
}

// GetInput returns the Input field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetInput() InputStepImpl {
	if o == nil || IsNil(o.Input) {
		var ret InputStepImpl
		return ret
	}
	return *o.Input
}

// GetInputOk returns a tuple with the Input field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetInputOk() (*InputStepImpl, bool) {
	if o == nil || IsNil(o.Input) {
		return nil, false
	}
	return o.Input, true
}

// HasInput returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasInput() bool {
	if o != nil && !IsNil(o.Input) {
		return true
	}

	return false
}

// SetInput gets a reference to the given InputStepImpl and assigns it to the Input field.
func (o *PipelineStepImpl) SetInput(v InputStepImpl) {
	o.Input = &v
}

// GetResult returns the Result field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetResult() string {
	if o == nil || IsNil(o.Result) {
		var ret string
		return ret
	}
	return *o.Result
}

// GetResultOk returns a tuple with the Result field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetResultOk() (*string, bool) {
	if o == nil || IsNil(o.Result) {
		return nil, false
	}
	return o.Result, true
}

// HasResult returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasResult() bool {
	if o != nil && !IsNil(o.Result) {
		return true
	}

	return false
}

// SetResult gets a reference to the given string and assigns it to the Result field.
func (o *PipelineStepImpl) SetResult(v string) {
	o.Result = &v
}

// GetStartTime returns the StartTime field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetStartTime() string {
	if o == nil || IsNil(o.StartTime) {
		var ret string
		return ret
	}
	return *o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetStartTimeOk() (*string, bool) {
	if o == nil || IsNil(o.StartTime) {
		return nil, false
	}
	return o.StartTime, true
}

// HasStartTime returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasStartTime() bool {
	if o != nil && !IsNil(o.StartTime) {
		return true
	}

	return false
}

// SetStartTime gets a reference to the given string and assigns it to the StartTime field.
func (o *PipelineStepImpl) SetStartTime(v string) {
	o.StartTime = &v
}

// GetState returns the State field value if set, zero value otherwise.
func (o *PipelineStepImpl) GetState() string {
	if o == nil || IsNil(o.State) {
		var ret string
		return ret
	}
	return *o.State
}

// GetStateOk returns a tuple with the State field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpl) GetStateOk() (*string, bool) {
	if o == nil || IsNil(o.State) {
		return nil, false
	}
	return o.State, true
}

// HasState returns a boolean if a field has been set.
func (o *PipelineStepImpl) HasState() bool {
	if o != nil && !IsNil(o.State) {
		return true
	}

	return false
}

// SetState gets a reference to the given string and assigns it to the State field.
func (o *PipelineStepImpl) SetState(v string) {
	o.State = &v
}

func (o PipelineStepImpl) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PipelineStepImpl) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Links) {
		toSerialize["_links"] = o.Links
	}
	if !IsNil(o.DisplayName) {
		toSerialize["displayName"] = o.DisplayName
	}
	if !IsNil(o.DurationInMillis) {
		toSerialize["durationInMillis"] = o.DurationInMillis
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !IsNil(o.Input) {
		toSerialize["input"] = o.Input
	}
	if !IsNil(o.Result) {
		toSerialize["result"] = o.Result
	}
	if !IsNil(o.StartTime) {
		toSerialize["startTime"] = o.StartTime
	}
	if !IsNil(o.State) {
		toSerialize["state"] = o.State
	}
	return toSerialize, nil
}

type NullablePipelineStepImpl struct {
	value *PipelineStepImpl
	isSet bool
}

func (v NullablePipelineStepImpl) Get() *PipelineStepImpl {
	return v.value
}

func (v *NullablePipelineStepImpl) Set(val *PipelineStepImpl) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineStepImpl) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineStepImpl) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineStepImpl(val *PipelineStepImpl) *NullablePipelineStepImpl {
	return &NullablePipelineStepImpl{value: val, isSet: true}
}

func (v NullablePipelineStepImpl) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineStepImpl) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


