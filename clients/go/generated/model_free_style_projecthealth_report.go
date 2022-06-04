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

// FreeStyleProjecthealthReport struct for FreeStyleProjecthealthReport
type FreeStyleProjecthealthReport struct {
	Description *string `json:"description,omitempty"`
	IconClassName *string `json:"iconClassName,omitempty"`
	IconUrl *string `json:"iconUrl,omitempty"`
	Score *int32 `json:"score,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewFreeStyleProjecthealthReport instantiates a new FreeStyleProjecthealthReport object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFreeStyleProjecthealthReport() *FreeStyleProjecthealthReport {
	this := FreeStyleProjecthealthReport{}
	return &this
}

// NewFreeStyleProjecthealthReportWithDefaults instantiates a new FreeStyleProjecthealthReport object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFreeStyleProjecthealthReportWithDefaults() *FreeStyleProjecthealthReport {
	this := FreeStyleProjecthealthReport{}
	return &this
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *FreeStyleProjecthealthReport) GetDescription() string {
	if o == nil || o.Description == nil {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjecthealthReport) GetDescriptionOk() (*string, bool) {
	if o == nil || o.Description == nil {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *FreeStyleProjecthealthReport) HasDescription() bool {
	if o != nil && o.Description != nil {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *FreeStyleProjecthealthReport) SetDescription(v string) {
	o.Description = &v
}

// GetIconClassName returns the IconClassName field value if set, zero value otherwise.
func (o *FreeStyleProjecthealthReport) GetIconClassName() string {
	if o == nil || o.IconClassName == nil {
		var ret string
		return ret
	}
	return *o.IconClassName
}

// GetIconClassNameOk returns a tuple with the IconClassName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjecthealthReport) GetIconClassNameOk() (*string, bool) {
	if o == nil || o.IconClassName == nil {
		return nil, false
	}
	return o.IconClassName, true
}

// HasIconClassName returns a boolean if a field has been set.
func (o *FreeStyleProjecthealthReport) HasIconClassName() bool {
	if o != nil && o.IconClassName != nil {
		return true
	}

	return false
}

// SetIconClassName gets a reference to the given string and assigns it to the IconClassName field.
func (o *FreeStyleProjecthealthReport) SetIconClassName(v string) {
	o.IconClassName = &v
}

// GetIconUrl returns the IconUrl field value if set, zero value otherwise.
func (o *FreeStyleProjecthealthReport) GetIconUrl() string {
	if o == nil || o.IconUrl == nil {
		var ret string
		return ret
	}
	return *o.IconUrl
}

// GetIconUrlOk returns a tuple with the IconUrl field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjecthealthReport) GetIconUrlOk() (*string, bool) {
	if o == nil || o.IconUrl == nil {
		return nil, false
	}
	return o.IconUrl, true
}

// HasIconUrl returns a boolean if a field has been set.
func (o *FreeStyleProjecthealthReport) HasIconUrl() bool {
	if o != nil && o.IconUrl != nil {
		return true
	}

	return false
}

// SetIconUrl gets a reference to the given string and assigns it to the IconUrl field.
func (o *FreeStyleProjecthealthReport) SetIconUrl(v string) {
	o.IconUrl = &v
}

// GetScore returns the Score field value if set, zero value otherwise.
func (o *FreeStyleProjecthealthReport) GetScore() int32 {
	if o == nil || o.Score == nil {
		var ret int32
		return ret
	}
	return *o.Score
}

// GetScoreOk returns a tuple with the Score field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjecthealthReport) GetScoreOk() (*int32, bool) {
	if o == nil || o.Score == nil {
		return nil, false
	}
	return o.Score, true
}

// HasScore returns a boolean if a field has been set.
func (o *FreeStyleProjecthealthReport) HasScore() bool {
	if o != nil && o.Score != nil {
		return true
	}

	return false
}

// SetScore gets a reference to the given int32 and assigns it to the Score field.
func (o *FreeStyleProjecthealthReport) SetScore(v int32) {
	o.Score = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *FreeStyleProjecthealthReport) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleProjecthealthReport) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *FreeStyleProjecthealthReport) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *FreeStyleProjecthealthReport) SetClass(v string) {
	o.Class = &v
}

func (o FreeStyleProjecthealthReport) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Description != nil {
		toSerialize["description"] = o.Description
	}
	if o.IconClassName != nil {
		toSerialize["iconClassName"] = o.IconClassName
	}
	if o.IconUrl != nil {
		toSerialize["iconUrl"] = o.IconUrl
	}
	if o.Score != nil {
		toSerialize["score"] = o.Score
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableFreeStyleProjecthealthReport struct {
	value *FreeStyleProjecthealthReport
	isSet bool
}

func (v NullableFreeStyleProjecthealthReport) Get() *FreeStyleProjecthealthReport {
	return v.value
}

func (v *NullableFreeStyleProjecthealthReport) Set(val *FreeStyleProjecthealthReport) {
	v.value = val
	v.isSet = true
}

func (v NullableFreeStyleProjecthealthReport) IsSet() bool {
	return v.isSet
}

func (v *NullableFreeStyleProjecthealthReport) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFreeStyleProjecthealthReport(val *FreeStyleProjecthealthReport) *NullableFreeStyleProjecthealthReport {
	return &NullableFreeStyleProjecthealthReport{value: val, isSet: true}
}

func (v NullableFreeStyleProjecthealthReport) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFreeStyleProjecthealthReport) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


