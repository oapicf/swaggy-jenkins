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

// checks if the CauseUserIdCause type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &CauseUserIdCause{}

// CauseUserIdCause struct for CauseUserIdCause
type CauseUserIdCause struct {
	Class *string `json:"_class,omitempty"`
	ShortDescription *string `json:"shortDescription,omitempty"`
	UserId *string `json:"userId,omitempty"`
	UserName *string `json:"userName,omitempty"`
}

// NewCauseUserIdCause instantiates a new CauseUserIdCause object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewCauseUserIdCause() *CauseUserIdCause {
	this := CauseUserIdCause{}
	return &this
}

// NewCauseUserIdCauseWithDefaults instantiates a new CauseUserIdCause object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewCauseUserIdCauseWithDefaults() *CauseUserIdCause {
	this := CauseUserIdCause{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *CauseUserIdCause) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CauseUserIdCause) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *CauseUserIdCause) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *CauseUserIdCause) SetClass(v string) {
	o.Class = &v
}

// GetShortDescription returns the ShortDescription field value if set, zero value otherwise.
func (o *CauseUserIdCause) GetShortDescription() string {
	if o == nil || IsNil(o.ShortDescription) {
		var ret string
		return ret
	}
	return *o.ShortDescription
}

// GetShortDescriptionOk returns a tuple with the ShortDescription field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CauseUserIdCause) GetShortDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.ShortDescription) {
		return nil, false
	}
	return o.ShortDescription, true
}

// HasShortDescription returns a boolean if a field has been set.
func (o *CauseUserIdCause) HasShortDescription() bool {
	if o != nil && !IsNil(o.ShortDescription) {
		return true
	}

	return false
}

// SetShortDescription gets a reference to the given string and assigns it to the ShortDescription field.
func (o *CauseUserIdCause) SetShortDescription(v string) {
	o.ShortDescription = &v
}

// GetUserId returns the UserId field value if set, zero value otherwise.
func (o *CauseUserIdCause) GetUserId() string {
	if o == nil || IsNil(o.UserId) {
		var ret string
		return ret
	}
	return *o.UserId
}

// GetUserIdOk returns a tuple with the UserId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CauseUserIdCause) GetUserIdOk() (*string, bool) {
	if o == nil || IsNil(o.UserId) {
		return nil, false
	}
	return o.UserId, true
}

// HasUserId returns a boolean if a field has been set.
func (o *CauseUserIdCause) HasUserId() bool {
	if o != nil && !IsNil(o.UserId) {
		return true
	}

	return false
}

// SetUserId gets a reference to the given string and assigns it to the UserId field.
func (o *CauseUserIdCause) SetUserId(v string) {
	o.UserId = &v
}

// GetUserName returns the UserName field value if set, zero value otherwise.
func (o *CauseUserIdCause) GetUserName() string {
	if o == nil || IsNil(o.UserName) {
		var ret string
		return ret
	}
	return *o.UserName
}

// GetUserNameOk returns a tuple with the UserName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *CauseUserIdCause) GetUserNameOk() (*string, bool) {
	if o == nil || IsNil(o.UserName) {
		return nil, false
	}
	return o.UserName, true
}

// HasUserName returns a boolean if a field has been set.
func (o *CauseUserIdCause) HasUserName() bool {
	if o != nil && !IsNil(o.UserName) {
		return true
	}

	return false
}

// SetUserName gets a reference to the given string and assigns it to the UserName field.
func (o *CauseUserIdCause) SetUserName(v string) {
	o.UserName = &v
}

func (o CauseUserIdCause) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o CauseUserIdCause) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.ShortDescription) {
		toSerialize["shortDescription"] = o.ShortDescription
	}
	if !IsNil(o.UserId) {
		toSerialize["userId"] = o.UserId
	}
	if !IsNil(o.UserName) {
		toSerialize["userName"] = o.UserName
	}
	return toSerialize, nil
}

type NullableCauseUserIdCause struct {
	value *CauseUserIdCause
	isSet bool
}

func (v NullableCauseUserIdCause) Get() *CauseUserIdCause {
	return v.value
}

func (v *NullableCauseUserIdCause) Set(val *CauseUserIdCause) {
	v.value = val
	v.isSet = true
}

func (v NullableCauseUserIdCause) IsSet() bool {
	return v.isSet
}

func (v *NullableCauseUserIdCause) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableCauseUserIdCause(val *CauseUserIdCause) *NullableCauseUserIdCause {
	return &NullableCauseUserIdCause{value: val, isSet: true}
}

func (v NullableCauseUserIdCause) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableCauseUserIdCause) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


