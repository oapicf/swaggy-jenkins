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

// checks if the PipelineStepImpllinks type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PipelineStepImpllinks{}

// PipelineStepImpllinks struct for PipelineStepImpllinks
type PipelineStepImpllinks struct {
	Self *Link `json:"self,omitempty"`
	Actions *Link `json:"actions,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineStepImpllinks instantiates a new PipelineStepImpllinks object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineStepImpllinks() *PipelineStepImpllinks {
	this := PipelineStepImpllinks{}
	return &this
}

// NewPipelineStepImpllinksWithDefaults instantiates a new PipelineStepImpllinks object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineStepImpllinksWithDefaults() *PipelineStepImpllinks {
	this := PipelineStepImpllinks{}
	return &this
}

// GetSelf returns the Self field value if set, zero value otherwise.
func (o *PipelineStepImpllinks) GetSelf() Link {
	if o == nil || IsNil(o.Self) {
		var ret Link
		return ret
	}
	return *o.Self
}

// GetSelfOk returns a tuple with the Self field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpllinks) GetSelfOk() (*Link, bool) {
	if o == nil || IsNil(o.Self) {
		return nil, false
	}
	return o.Self, true
}

// HasSelf returns a boolean if a field has been set.
func (o *PipelineStepImpllinks) HasSelf() bool {
	if o != nil && !IsNil(o.Self) {
		return true
	}

	return false
}

// SetSelf gets a reference to the given Link and assigns it to the Self field.
func (o *PipelineStepImpllinks) SetSelf(v Link) {
	o.Self = &v
}

// GetActions returns the Actions field value if set, zero value otherwise.
func (o *PipelineStepImpllinks) GetActions() Link {
	if o == nil || IsNil(o.Actions) {
		var ret Link
		return ret
	}
	return *o.Actions
}

// GetActionsOk returns a tuple with the Actions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpllinks) GetActionsOk() (*Link, bool) {
	if o == nil || IsNil(o.Actions) {
		return nil, false
	}
	return o.Actions, true
}

// HasActions returns a boolean if a field has been set.
func (o *PipelineStepImpllinks) HasActions() bool {
	if o != nil && !IsNil(o.Actions) {
		return true
	}

	return false
}

// SetActions gets a reference to the given Link and assigns it to the Actions field.
func (o *PipelineStepImpllinks) SetActions(v Link) {
	o.Actions = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineStepImpllinks) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineStepImpllinks) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineStepImpllinks) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineStepImpllinks) SetClass(v string) {
	o.Class = &v
}

func (o PipelineStepImpllinks) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PipelineStepImpllinks) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Self) {
		toSerialize["self"] = o.Self
	}
	if !IsNil(o.Actions) {
		toSerialize["actions"] = o.Actions
	}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	return toSerialize, nil
}

type NullablePipelineStepImpllinks struct {
	value *PipelineStepImpllinks
	isSet bool
}

func (v NullablePipelineStepImpllinks) Get() *PipelineStepImpllinks {
	return v.value
}

func (v *NullablePipelineStepImpllinks) Set(val *PipelineStepImpllinks) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineStepImpllinks) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineStepImpllinks) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineStepImpllinks(val *PipelineStepImpllinks) *NullablePipelineStepImpllinks {
	return &NullablePipelineStepImpllinks{value: val, isSet: true}
}

func (v NullablePipelineStepImpllinks) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineStepImpllinks) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


