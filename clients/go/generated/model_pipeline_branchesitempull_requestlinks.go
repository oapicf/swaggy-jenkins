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

// PipelineBranchesitempullRequestlinks struct for PipelineBranchesitempullRequestlinks
type PipelineBranchesitempullRequestlinks struct {
	Self *string `json:"self,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineBranchesitempullRequestlinks instantiates a new PipelineBranchesitempullRequestlinks object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineBranchesitempullRequestlinks() *PipelineBranchesitempullRequestlinks {
	this := PipelineBranchesitempullRequestlinks{}
	return &this
}

// NewPipelineBranchesitempullRequestlinksWithDefaults instantiates a new PipelineBranchesitempullRequestlinks object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineBranchesitempullRequestlinksWithDefaults() *PipelineBranchesitempullRequestlinks {
	this := PipelineBranchesitempullRequestlinks{}
	return &this
}

// GetSelf returns the Self field value if set, zero value otherwise.
func (o *PipelineBranchesitempullRequestlinks) GetSelf() string {
	if o == nil || o.Self == nil {
		var ret string
		return ret
	}
	return *o.Self
}

// GetSelfOk returns a tuple with the Self field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitempullRequestlinks) GetSelfOk() (*string, bool) {
	if o == nil || o.Self == nil {
		return nil, false
	}
	return o.Self, true
}

// HasSelf returns a boolean if a field has been set.
func (o *PipelineBranchesitempullRequestlinks) HasSelf() bool {
	if o != nil && o.Self != nil {
		return true
	}

	return false
}

// SetSelf gets a reference to the given string and assigns it to the Self field.
func (o *PipelineBranchesitempullRequestlinks) SetSelf(v string) {
	o.Self = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineBranchesitempullRequestlinks) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitempullRequestlinks) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineBranchesitempullRequestlinks) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineBranchesitempullRequestlinks) SetClass(v string) {
	o.Class = &v
}

func (o PipelineBranchesitempullRequestlinks) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Self != nil {
		toSerialize["self"] = o.Self
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullablePipelineBranchesitempullRequestlinks struct {
	value *PipelineBranchesitempullRequestlinks
	isSet bool
}

func (v NullablePipelineBranchesitempullRequestlinks) Get() *PipelineBranchesitempullRequestlinks {
	return v.value
}

func (v *NullablePipelineBranchesitempullRequestlinks) Set(val *PipelineBranchesitempullRequestlinks) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineBranchesitempullRequestlinks) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineBranchesitempullRequestlinks) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineBranchesitempullRequestlinks(val *PipelineBranchesitempullRequestlinks) *NullablePipelineBranchesitempullRequestlinks {
	return &NullablePipelineBranchesitempullRequestlinks{value: val, isSet: true}
}

func (v NullablePipelineBranchesitempullRequestlinks) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineBranchesitempullRequestlinks) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


