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

// checks if the GithubOrganization type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GithubOrganization{}

// GithubOrganization struct for GithubOrganization
type GithubOrganization struct {
	Class *string `json:"_class,omitempty"`
	Links *GithubOrganizationlinks `json:"_links,omitempty"`
	JenkinsOrganizationPipeline *bool `json:"jenkinsOrganizationPipeline,omitempty"`
	Name *string `json:"name,omitempty"`
}

// NewGithubOrganization instantiates a new GithubOrganization object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubOrganization() *GithubOrganization {
	this := GithubOrganization{}
	return &this
}

// NewGithubOrganizationWithDefaults instantiates a new GithubOrganization object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubOrganizationWithDefaults() *GithubOrganization {
	this := GithubOrganization{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *GithubOrganization) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubOrganization) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *GithubOrganization) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *GithubOrganization) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *GithubOrganization) GetLinks() GithubOrganizationlinks {
	if o == nil || IsNil(o.Links) {
		var ret GithubOrganizationlinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubOrganization) GetLinksOk() (*GithubOrganizationlinks, bool) {
	if o == nil || IsNil(o.Links) {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *GithubOrganization) HasLinks() bool {
	if o != nil && !IsNil(o.Links) {
		return true
	}

	return false
}

// SetLinks gets a reference to the given GithubOrganizationlinks and assigns it to the Links field.
func (o *GithubOrganization) SetLinks(v GithubOrganizationlinks) {
	o.Links = &v
}

// GetJenkinsOrganizationPipeline returns the JenkinsOrganizationPipeline field value if set, zero value otherwise.
func (o *GithubOrganization) GetJenkinsOrganizationPipeline() bool {
	if o == nil || IsNil(o.JenkinsOrganizationPipeline) {
		var ret bool
		return ret
	}
	return *o.JenkinsOrganizationPipeline
}

// GetJenkinsOrganizationPipelineOk returns a tuple with the JenkinsOrganizationPipeline field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubOrganization) GetJenkinsOrganizationPipelineOk() (*bool, bool) {
	if o == nil || IsNil(o.JenkinsOrganizationPipeline) {
		return nil, false
	}
	return o.JenkinsOrganizationPipeline, true
}

// HasJenkinsOrganizationPipeline returns a boolean if a field has been set.
func (o *GithubOrganization) HasJenkinsOrganizationPipeline() bool {
	if o != nil && !IsNil(o.JenkinsOrganizationPipeline) {
		return true
	}

	return false
}

// SetJenkinsOrganizationPipeline gets a reference to the given bool and assigns it to the JenkinsOrganizationPipeline field.
func (o *GithubOrganization) SetJenkinsOrganizationPipeline(v bool) {
	o.JenkinsOrganizationPipeline = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *GithubOrganization) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubOrganization) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *GithubOrganization) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *GithubOrganization) SetName(v string) {
	o.Name = &v
}

func (o GithubOrganization) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GithubOrganization) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Links) {
		toSerialize["_links"] = o.Links
	}
	if !IsNil(o.JenkinsOrganizationPipeline) {
		toSerialize["jenkinsOrganizationPipeline"] = o.JenkinsOrganizationPipeline
	}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	return toSerialize, nil
}

type NullableGithubOrganization struct {
	value *GithubOrganization
	isSet bool
}

func (v NullableGithubOrganization) Get() *GithubOrganization {
	return v.value
}

func (v *NullableGithubOrganization) Set(val *GithubOrganization) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubOrganization) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubOrganization) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubOrganization(val *GithubOrganization) *NullableGithubOrganization {
	return &NullableGithubOrganization{value: val, isSet: true}
}

func (v NullableGithubOrganization) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubOrganization) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


