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

// EmptyChangeLogSet struct for EmptyChangeLogSet
type EmptyChangeLogSet struct {
	Class *string `json:"_class,omitempty"`
	Kind *string `json:"kind,omitempty"`
}

// NewEmptyChangeLogSet instantiates a new EmptyChangeLogSet object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewEmptyChangeLogSet() *EmptyChangeLogSet {
	this := EmptyChangeLogSet{}
	return &this
}

// NewEmptyChangeLogSetWithDefaults instantiates a new EmptyChangeLogSet object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewEmptyChangeLogSetWithDefaults() *EmptyChangeLogSet {
	this := EmptyChangeLogSet{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *EmptyChangeLogSet) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EmptyChangeLogSet) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *EmptyChangeLogSet) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *EmptyChangeLogSet) SetClass(v string) {
	o.Class = &v
}

// GetKind returns the Kind field value if set, zero value otherwise.
func (o *EmptyChangeLogSet) GetKind() string {
	if o == nil || o.Kind == nil {
		var ret string
		return ret
	}
	return *o.Kind
}

// GetKindOk returns a tuple with the Kind field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EmptyChangeLogSet) GetKindOk() (*string, bool) {
	if o == nil || o.Kind == nil {
		return nil, false
	}
	return o.Kind, true
}

// HasKind returns a boolean if a field has been set.
func (o *EmptyChangeLogSet) HasKind() bool {
	if o != nil && o.Kind != nil {
		return true
	}

	return false
}

// SetKind gets a reference to the given string and assigns it to the Kind field.
func (o *EmptyChangeLogSet) SetKind(v string) {
	o.Kind = &v
}

func (o EmptyChangeLogSet) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Kind != nil {
		toSerialize["kind"] = o.Kind
	}
	return json.Marshal(toSerialize)
}

type NullableEmptyChangeLogSet struct {
	value *EmptyChangeLogSet
	isSet bool
}

func (v NullableEmptyChangeLogSet) Get() *EmptyChangeLogSet {
	return v.value
}

func (v *NullableEmptyChangeLogSet) Set(val *EmptyChangeLogSet) {
	v.value = val
	v.isSet = true
}

func (v NullableEmptyChangeLogSet) IsSet() bool {
	return v.isSet
}

func (v *NullableEmptyChangeLogSet) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableEmptyChangeLogSet(val *EmptyChangeLogSet) *NullableEmptyChangeLogSet {
	return &NullableEmptyChangeLogSet{value: val, isSet: true}
}

func (v NullableEmptyChangeLogSet) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableEmptyChangeLogSet) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


