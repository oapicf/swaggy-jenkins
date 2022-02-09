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

// GithubRepositorypermissions struct for GithubRepositorypermissions
type GithubRepositorypermissions struct {
	Admin *bool `json:"admin,omitempty"`
	Push *bool `json:"push,omitempty"`
	Pull *bool `json:"pull,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewGithubRepositorypermissions instantiates a new GithubRepositorypermissions object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubRepositorypermissions() *GithubRepositorypermissions {
	this := GithubRepositorypermissions{}
	return &this
}

// NewGithubRepositorypermissionsWithDefaults instantiates a new GithubRepositorypermissions object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubRepositorypermissionsWithDefaults() *GithubRepositorypermissions {
	this := GithubRepositorypermissions{}
	return &this
}

// GetAdmin returns the Admin field value if set, zero value otherwise.
func (o *GithubRepositorypermissions) GetAdmin() bool {
	if o == nil || o.Admin == nil {
		var ret bool
		return ret
	}
	return *o.Admin
}

// GetAdminOk returns a tuple with the Admin field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepositorypermissions) GetAdminOk() (*bool, bool) {
	if o == nil || o.Admin == nil {
		return nil, false
	}
	return o.Admin, true
}

// HasAdmin returns a boolean if a field has been set.
func (o *GithubRepositorypermissions) HasAdmin() bool {
	if o != nil && o.Admin != nil {
		return true
	}

	return false
}

// SetAdmin gets a reference to the given bool and assigns it to the Admin field.
func (o *GithubRepositorypermissions) SetAdmin(v bool) {
	o.Admin = &v
}

// GetPush returns the Push field value if set, zero value otherwise.
func (o *GithubRepositorypermissions) GetPush() bool {
	if o == nil || o.Push == nil {
		var ret bool
		return ret
	}
	return *o.Push
}

// GetPushOk returns a tuple with the Push field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepositorypermissions) GetPushOk() (*bool, bool) {
	if o == nil || o.Push == nil {
		return nil, false
	}
	return o.Push, true
}

// HasPush returns a boolean if a field has been set.
func (o *GithubRepositorypermissions) HasPush() bool {
	if o != nil && o.Push != nil {
		return true
	}

	return false
}

// SetPush gets a reference to the given bool and assigns it to the Push field.
func (o *GithubRepositorypermissions) SetPush(v bool) {
	o.Push = &v
}

// GetPull returns the Pull field value if set, zero value otherwise.
func (o *GithubRepositorypermissions) GetPull() bool {
	if o == nil || o.Pull == nil {
		var ret bool
		return ret
	}
	return *o.Pull
}

// GetPullOk returns a tuple with the Pull field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepositorypermissions) GetPullOk() (*bool, bool) {
	if o == nil || o.Pull == nil {
		return nil, false
	}
	return o.Pull, true
}

// HasPull returns a boolean if a field has been set.
func (o *GithubRepositorypermissions) HasPull() bool {
	if o != nil && o.Pull != nil {
		return true
	}

	return false
}

// SetPull gets a reference to the given bool and assigns it to the Pull field.
func (o *GithubRepositorypermissions) SetPull(v bool) {
	o.Pull = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *GithubRepositorypermissions) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepositorypermissions) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *GithubRepositorypermissions) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *GithubRepositorypermissions) SetClass(v string) {
	o.Class = &v
}

func (o GithubRepositorypermissions) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Admin != nil {
		toSerialize["admin"] = o.Admin
	}
	if o.Push != nil {
		toSerialize["push"] = o.Push
	}
	if o.Pull != nil {
		toSerialize["pull"] = o.Pull
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableGithubRepositorypermissions struct {
	value *GithubRepositorypermissions
	isSet bool
}

func (v NullableGithubRepositorypermissions) Get() *GithubRepositorypermissions {
	return v.value
}

func (v *NullableGithubRepositorypermissions) Set(val *GithubRepositorypermissions) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubRepositorypermissions) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubRepositorypermissions) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubRepositorypermissions(val *GithubRepositorypermissions) *NullableGithubRepositorypermissions {
	return &NullableGithubRepositorypermissions{value: val, isSet: true}
}

func (v NullableGithubRepositorypermissions) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubRepositorypermissions) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


