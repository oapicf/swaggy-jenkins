/*
Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

API version: 1.1.2-pre.0
Contact: blah@cliffano.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// HudsonassignedLabels struct for HudsonassignedLabels
type HudsonassignedLabels struct {
	Class *string `json:"_class,omitempty"`
}

// NewHudsonassignedLabels instantiates a new HudsonassignedLabels object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewHudsonassignedLabels() *HudsonassignedLabels {
	this := HudsonassignedLabels{}
	return &this
}

// NewHudsonassignedLabelsWithDefaults instantiates a new HudsonassignedLabels object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewHudsonassignedLabelsWithDefaults() *HudsonassignedLabels {
	this := HudsonassignedLabels{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *HudsonassignedLabels) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *HudsonassignedLabels) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *HudsonassignedLabels) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *HudsonassignedLabels) SetClass(v string) {
	o.Class = &v
}

func (o HudsonassignedLabels) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableHudsonassignedLabels struct {
	value *HudsonassignedLabels
	isSet bool
}

func (v NullableHudsonassignedLabels) Get() *HudsonassignedLabels {
	return v.value
}

func (v *NullableHudsonassignedLabels) Set(val *HudsonassignedLabels) {
	v.value = val
	v.isSet = true
}

func (v NullableHudsonassignedLabels) IsSet() bool {
	return v.isSet
}

func (v *NullableHudsonassignedLabels) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableHudsonassignedLabels(val *HudsonassignedLabels) *NullableHudsonassignedLabels {
	return &NullableHudsonassignedLabels{value: val, isSet: true}
}

func (v NullableHudsonassignedLabels) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableHudsonassignedLabels) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


