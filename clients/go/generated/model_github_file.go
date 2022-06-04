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

// GithubFile struct for GithubFile
type GithubFile struct {
	Content *GithubContent `json:"content,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewGithubFile instantiates a new GithubFile object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubFile() *GithubFile {
	this := GithubFile{}
	return &this
}

// NewGithubFileWithDefaults instantiates a new GithubFile object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubFileWithDefaults() *GithubFile {
	this := GithubFile{}
	return &this
}

// GetContent returns the Content field value if set, zero value otherwise.
func (o *GithubFile) GetContent() GithubContent {
	if o == nil || o.Content == nil {
		var ret GithubContent
		return ret
	}
	return *o.Content
}

// GetContentOk returns a tuple with the Content field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubFile) GetContentOk() (*GithubContent, bool) {
	if o == nil || o.Content == nil {
		return nil, false
	}
	return o.Content, true
}

// HasContent returns a boolean if a field has been set.
func (o *GithubFile) HasContent() bool {
	if o != nil && o.Content != nil {
		return true
	}

	return false
}

// SetContent gets a reference to the given GithubContent and assigns it to the Content field.
func (o *GithubFile) SetContent(v GithubContent) {
	o.Content = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *GithubFile) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubFile) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *GithubFile) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *GithubFile) SetClass(v string) {
	o.Class = &v
}

func (o GithubFile) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Content != nil {
		toSerialize["content"] = o.Content
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableGithubFile struct {
	value *GithubFile
	isSet bool
}

func (v NullableGithubFile) Get() *GithubFile {
	return v.value
}

func (v *NullableGithubFile) Set(val *GithubFile) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubFile) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubFile) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubFile(val *GithubFile) *NullableGithubFile {
	return &NullableGithubFile{value: val, isSet: true}
}

func (v NullableGithubFile) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubFile) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


