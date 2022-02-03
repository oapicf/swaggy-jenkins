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

// GithubScm struct for GithubScm
type GithubScm struct {
	Class *string `json:"_class,omitempty"`
	Links *GithubScmlinks `json:"_links,omitempty"`
	CredentialId *string `json:"credentialId,omitempty"`
	Id *string `json:"id,omitempty"`
	Uri *string `json:"uri,omitempty"`
}

// NewGithubScm instantiates a new GithubScm object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubScm() *GithubScm {
	this := GithubScm{}
	return &this
}

// NewGithubScmWithDefaults instantiates a new GithubScm object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubScmWithDefaults() *GithubScm {
	this := GithubScm{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *GithubScm) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubScm) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *GithubScm) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *GithubScm) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *GithubScm) GetLinks() GithubScmlinks {
	if o == nil || o.Links == nil {
		var ret GithubScmlinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubScm) GetLinksOk() (*GithubScmlinks, bool) {
	if o == nil || o.Links == nil {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *GithubScm) HasLinks() bool {
	if o != nil && o.Links != nil {
		return true
	}

	return false
}

// SetLinks gets a reference to the given GithubScmlinks and assigns it to the Links field.
func (o *GithubScm) SetLinks(v GithubScmlinks) {
	o.Links = &v
}

// GetCredentialId returns the CredentialId field value if set, zero value otherwise.
func (o *GithubScm) GetCredentialId() string {
	if o == nil || o.CredentialId == nil {
		var ret string
		return ret
	}
	return *o.CredentialId
}

// GetCredentialIdOk returns a tuple with the CredentialId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubScm) GetCredentialIdOk() (*string, bool) {
	if o == nil || o.CredentialId == nil {
		return nil, false
	}
	return o.CredentialId, true
}

// HasCredentialId returns a boolean if a field has been set.
func (o *GithubScm) HasCredentialId() bool {
	if o != nil && o.CredentialId != nil {
		return true
	}

	return false
}

// SetCredentialId gets a reference to the given string and assigns it to the CredentialId field.
func (o *GithubScm) SetCredentialId(v string) {
	o.CredentialId = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *GithubScm) GetId() string {
	if o == nil || o.Id == nil {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubScm) GetIdOk() (*string, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *GithubScm) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *GithubScm) SetId(v string) {
	o.Id = &v
}

// GetUri returns the Uri field value if set, zero value otherwise.
func (o *GithubScm) GetUri() string {
	if o == nil || o.Uri == nil {
		var ret string
		return ret
	}
	return *o.Uri
}

// GetUriOk returns a tuple with the Uri field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubScm) GetUriOk() (*string, bool) {
	if o == nil || o.Uri == nil {
		return nil, false
	}
	return o.Uri, true
}

// HasUri returns a boolean if a field has been set.
func (o *GithubScm) HasUri() bool {
	if o != nil && o.Uri != nil {
		return true
	}

	return false
}

// SetUri gets a reference to the given string and assigns it to the Uri field.
func (o *GithubScm) SetUri(v string) {
	o.Uri = &v
}

func (o GithubScm) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Links != nil {
		toSerialize["_links"] = o.Links
	}
	if o.CredentialId != nil {
		toSerialize["credentialId"] = o.CredentialId
	}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Uri != nil {
		toSerialize["uri"] = o.Uri
	}
	return json.Marshal(toSerialize)
}

type NullableGithubScm struct {
	value *GithubScm
	isSet bool
}

func (v NullableGithubScm) Get() *GithubScm {
	return v.value
}

func (v *NullableGithubScm) Set(val *GithubScm) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubScm) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubScm) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubScm(val *GithubScm) *NullableGithubScm {
	return &NullableGithubScm{value: val, isSet: true}
}

func (v NullableGithubScm) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubScm) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


