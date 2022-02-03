/*
Swaggy Jenkins

Jenkins API clients generated from Swagger / Open API specification

API version: 1.1.1
Contact: blah@cliffano.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// FreeStyleProjectactions struct for FreeStyleProjectactions
type FreeStyleProjectactions struct {
	Class *string `json:"_class,omitempty"`
}

// NewFreeStyleProjectactions instantiates a new FreeStyleProjectactions object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFreeStyleProjectactions() *FreeStyleProjectactions {
	this := FreeStyleProjectactions{}
	return &this
}

// NewFreeStyleProjectactionsWithDefaults instantiates a new FreeStyleProjectactions object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFreeStyleProjectactionsWithDefaults() *FreeStyleProjectactions {
	this := FreeStyleProjectactions{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *FreeStyleProjectactions) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjectactions) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *FreeStyleProjectactions) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *FreeStyleProjectactions) SetClass(v string) {
	o.Class = &v
}

func (o FreeStyleProjectactions) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableFreeStyleProjectactions struct {
	value *FreeStyleProjectactions
	isSet bool
}

func (v NullableFreeStyleProjectactions) Get() *FreeStyleProjectactions {
	return v.value
}

func (v *NullableFreeStyleProjectactions) Set(val *FreeStyleProjectactions) {
	v.value = val
	v.isSet = true
}

func (v NullableFreeStyleProjectactions) IsSet() bool {
	return v.isSet
}

func (v *NullableFreeStyleProjectactions) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFreeStyleProjectactions(val *FreeStyleProjectactions) *NullableFreeStyleProjectactions {
	return &NullableFreeStyleProjectactions{value: val, isSet: true}
}

func (v NullableFreeStyleProjectactions) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFreeStyleProjectactions) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


