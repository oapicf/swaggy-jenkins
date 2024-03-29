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

// checks if the DefaultCrumbIssuer type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DefaultCrumbIssuer{}

// DefaultCrumbIssuer struct for DefaultCrumbIssuer
type DefaultCrumbIssuer struct {
	Class *string `json:"_class,omitempty"`
	Crumb *string `json:"crumb,omitempty"`
	CrumbRequestField *string `json:"crumbRequestField,omitempty"`
}

// NewDefaultCrumbIssuer instantiates a new DefaultCrumbIssuer object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDefaultCrumbIssuer() *DefaultCrumbIssuer {
	this := DefaultCrumbIssuer{}
	return &this
}

// NewDefaultCrumbIssuerWithDefaults instantiates a new DefaultCrumbIssuer object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDefaultCrumbIssuerWithDefaults() *DefaultCrumbIssuer {
	this := DefaultCrumbIssuer{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *DefaultCrumbIssuer) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DefaultCrumbIssuer) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *DefaultCrumbIssuer) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *DefaultCrumbIssuer) SetClass(v string) {
	o.Class = &v
}

// GetCrumb returns the Crumb field value if set, zero value otherwise.
func (o *DefaultCrumbIssuer) GetCrumb() string {
	if o == nil || IsNil(o.Crumb) {
		var ret string
		return ret
	}
	return *o.Crumb
}

// GetCrumbOk returns a tuple with the Crumb field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DefaultCrumbIssuer) GetCrumbOk() (*string, bool) {
	if o == nil || IsNil(o.Crumb) {
		return nil, false
	}
	return o.Crumb, true
}

// HasCrumb returns a boolean if a field has been set.
func (o *DefaultCrumbIssuer) HasCrumb() bool {
	if o != nil && !IsNil(o.Crumb) {
		return true
	}

	return false
}

// SetCrumb gets a reference to the given string and assigns it to the Crumb field.
func (o *DefaultCrumbIssuer) SetCrumb(v string) {
	o.Crumb = &v
}

// GetCrumbRequestField returns the CrumbRequestField field value if set, zero value otherwise.
func (o *DefaultCrumbIssuer) GetCrumbRequestField() string {
	if o == nil || IsNil(o.CrumbRequestField) {
		var ret string
		return ret
	}
	return *o.CrumbRequestField
}

// GetCrumbRequestFieldOk returns a tuple with the CrumbRequestField field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DefaultCrumbIssuer) GetCrumbRequestFieldOk() (*string, bool) {
	if o == nil || IsNil(o.CrumbRequestField) {
		return nil, false
	}
	return o.CrumbRequestField, true
}

// HasCrumbRequestField returns a boolean if a field has been set.
func (o *DefaultCrumbIssuer) HasCrumbRequestField() bool {
	if o != nil && !IsNil(o.CrumbRequestField) {
		return true
	}

	return false
}

// SetCrumbRequestField gets a reference to the given string and assigns it to the CrumbRequestField field.
func (o *DefaultCrumbIssuer) SetCrumbRequestField(v string) {
	o.CrumbRequestField = &v
}

func (o DefaultCrumbIssuer) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DefaultCrumbIssuer) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Crumb) {
		toSerialize["crumb"] = o.Crumb
	}
	if !IsNil(o.CrumbRequestField) {
		toSerialize["crumbRequestField"] = o.CrumbRequestField
	}
	return toSerialize, nil
}

type NullableDefaultCrumbIssuer struct {
	value *DefaultCrumbIssuer
	isSet bool
}

func (v NullableDefaultCrumbIssuer) Get() *DefaultCrumbIssuer {
	return v.value
}

func (v *NullableDefaultCrumbIssuer) Set(val *DefaultCrumbIssuer) {
	v.value = val
	v.isSet = true
}

func (v NullableDefaultCrumbIssuer) IsSet() bool {
	return v.isSet
}

func (v *NullableDefaultCrumbIssuer) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDefaultCrumbIssuer(val *DefaultCrumbIssuer) *NullableDefaultCrumbIssuer {
	return &NullableDefaultCrumbIssuer{value: val, isSet: true}
}

func (v NullableDefaultCrumbIssuer) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDefaultCrumbIssuer) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


