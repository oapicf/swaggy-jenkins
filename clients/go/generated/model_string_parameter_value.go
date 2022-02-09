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

// StringParameterValue struct for StringParameterValue
type StringParameterValue struct {
	Class *string `json:"_class,omitempty"`
	Name *string `json:"name,omitempty"`
	Value *string `json:"value,omitempty"`
}

// NewStringParameterValue instantiates a new StringParameterValue object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewStringParameterValue() *StringParameterValue {
	this := StringParameterValue{}
	return &this
}

// NewStringParameterValueWithDefaults instantiates a new StringParameterValue object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewStringParameterValueWithDefaults() *StringParameterValue {
	this := StringParameterValue{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *StringParameterValue) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterValue) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *StringParameterValue) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *StringParameterValue) SetClass(v string) {
	o.Class = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *StringParameterValue) GetName() string {
	if o == nil || o.Name == nil {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterValue) GetNameOk() (*string, bool) {
	if o == nil || o.Name == nil {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *StringParameterValue) HasName() bool {
	if o != nil && o.Name != nil {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *StringParameterValue) SetName(v string) {
	o.Name = &v
}

// GetValue returns the Value field value if set, zero value otherwise.
func (o *StringParameterValue) GetValue() string {
	if o == nil || o.Value == nil {
		var ret string
		return ret
	}
	return *o.Value
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterValue) GetValueOk() (*string, bool) {
	if o == nil || o.Value == nil {
		return nil, false
	}
	return o.Value, true
}

// HasValue returns a boolean if a field has been set.
func (o *StringParameterValue) HasValue() bool {
	if o != nil && o.Value != nil {
		return true
	}

	return false
}

// SetValue gets a reference to the given string and assigns it to the Value field.
func (o *StringParameterValue) SetValue(v string) {
	o.Value = &v
}

func (o StringParameterValue) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Name != nil {
		toSerialize["name"] = o.Name
	}
	if o.Value != nil {
		toSerialize["value"] = o.Value
	}
	return json.Marshal(toSerialize)
}

type NullableStringParameterValue struct {
	value *StringParameterValue
	isSet bool
}

func (v NullableStringParameterValue) Get() *StringParameterValue {
	return v.value
}

func (v *NullableStringParameterValue) Set(val *StringParameterValue) {
	v.value = val
	v.isSet = true
}

func (v NullableStringParameterValue) IsSet() bool {
	return v.isSet
}

func (v *NullableStringParameterValue) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableStringParameterValue(val *StringParameterValue) *NullableStringParameterValue {
	return &NullableStringParameterValue{value: val, isSet: true}
}

func (v NullableStringParameterValue) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableStringParameterValue) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


