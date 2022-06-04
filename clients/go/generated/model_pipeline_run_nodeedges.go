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

// PipelineRunNodeedges struct for PipelineRunNodeedges
type PipelineRunNodeedges struct {
	Id *string `json:"id,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineRunNodeedges instantiates a new PipelineRunNodeedges object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineRunNodeedges() *PipelineRunNodeedges {
	this := PipelineRunNodeedges{}
	return &this
}

// NewPipelineRunNodeedgesWithDefaults instantiates a new PipelineRunNodeedges object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineRunNodeedgesWithDefaults() *PipelineRunNodeedges {
	this := PipelineRunNodeedges{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *PipelineRunNodeedges) GetId() string {
	if o == nil || o.Id == nil {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunNodeedges) GetIdOk() (*string, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *PipelineRunNodeedges) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *PipelineRunNodeedges) SetId(v string) {
	o.Id = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineRunNodeedges) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunNodeedges) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineRunNodeedges) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineRunNodeedges) SetClass(v string) {
	o.Class = &v
}

func (o PipelineRunNodeedges) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullablePipelineRunNodeedges struct {
	value *PipelineRunNodeedges
	isSet bool
}

func (v NullablePipelineRunNodeedges) Get() *PipelineRunNodeedges {
	return v.value
}

func (v *NullablePipelineRunNodeedges) Set(val *PipelineRunNodeedges) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineRunNodeedges) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineRunNodeedges) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineRunNodeedges(val *PipelineRunNodeedges) *NullablePipelineRunNodeedges {
	return &NullablePipelineRunNodeedges{value: val, isSet: true}
}

func (v NullablePipelineRunNodeedges) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineRunNodeedges) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


