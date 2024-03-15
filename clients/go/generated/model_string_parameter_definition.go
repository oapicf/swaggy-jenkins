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

// checks if the StringParameterDefinition type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &StringParameterDefinition{}

// StringParameterDefinition struct for StringParameterDefinition
type StringParameterDefinition struct {
	Class *string `json:"_class,omitempty"`
	DefaultParameterValue *StringParameterValue `json:"defaultParameterValue,omitempty"`
	Description *string `json:"description,omitempty"`
	Name *string `json:"name,omitempty"`
	Type *string `json:"type,omitempty"`
}

// NewStringParameterDefinition instantiates a new StringParameterDefinition object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewStringParameterDefinition() *StringParameterDefinition {
	this := StringParameterDefinition{}
	return &this
}

// NewStringParameterDefinitionWithDefaults instantiates a new StringParameterDefinition object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewStringParameterDefinitionWithDefaults() *StringParameterDefinition {
	this := StringParameterDefinition{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *StringParameterDefinition) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterDefinition) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *StringParameterDefinition) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *StringParameterDefinition) SetClass(v string) {
	o.Class = &v
}

// GetDefaultParameterValue returns the DefaultParameterValue field value if set, zero value otherwise.
func (o *StringParameterDefinition) GetDefaultParameterValue() StringParameterValue {
	if o == nil || IsNil(o.DefaultParameterValue) {
		var ret StringParameterValue
		return ret
	}
	return *o.DefaultParameterValue
}

// GetDefaultParameterValueOk returns a tuple with the DefaultParameterValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterDefinition) GetDefaultParameterValueOk() (*StringParameterValue, bool) {
	if o == nil || IsNil(o.DefaultParameterValue) {
		return nil, false
	}
	return o.DefaultParameterValue, true
}

// HasDefaultParameterValue returns a boolean if a field has been set.
func (o *StringParameterDefinition) HasDefaultParameterValue() bool {
	if o != nil && !IsNil(o.DefaultParameterValue) {
		return true
	}

	return false
}

// SetDefaultParameterValue gets a reference to the given StringParameterValue and assigns it to the DefaultParameterValue field.
func (o *StringParameterDefinition) SetDefaultParameterValue(v StringParameterValue) {
	o.DefaultParameterValue = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *StringParameterDefinition) GetDescription() string {
	if o == nil || IsNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterDefinition) GetDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *StringParameterDefinition) HasDescription() bool {
	if o != nil && !IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *StringParameterDefinition) SetDescription(v string) {
	o.Description = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *StringParameterDefinition) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterDefinition) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *StringParameterDefinition) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *StringParameterDefinition) SetName(v string) {
	o.Name = &v
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *StringParameterDefinition) GetType() string {
	if o == nil || IsNil(o.Type) {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *StringParameterDefinition) GetTypeOk() (*string, bool) {
	if o == nil || IsNil(o.Type) {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *StringParameterDefinition) HasType() bool {
	if o != nil && !IsNil(o.Type) {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *StringParameterDefinition) SetType(v string) {
	o.Type = &v
}

func (o StringParameterDefinition) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o StringParameterDefinition) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.DefaultParameterValue) {
		toSerialize["defaultParameterValue"] = o.DefaultParameterValue
	}
	if !IsNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !IsNil(o.Type) {
		toSerialize["type"] = o.Type
	}
	return toSerialize, nil
}

type NullableStringParameterDefinition struct {
	value *StringParameterDefinition
	isSet bool
}

func (v NullableStringParameterDefinition) Get() *StringParameterDefinition {
	return v.value
}

func (v *NullableStringParameterDefinition) Set(val *StringParameterDefinition) {
	v.value = val
	v.isSet = true
}

func (v NullableStringParameterDefinition) IsSet() bool {
	return v.isSet
}

func (v *NullableStringParameterDefinition) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableStringParameterDefinition(val *StringParameterDefinition) *NullableStringParameterDefinition {
	return &NullableStringParameterDefinition{value: val, isSet: true}
}

func (v NullableStringParameterDefinition) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableStringParameterDefinition) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


