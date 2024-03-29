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

// checks if the GithubRepository type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GithubRepository{}

// GithubRepository struct for GithubRepository
type GithubRepository struct {
	Class *string `json:"_class,omitempty"`
	Links *GithubRepositorylinks `json:"_links,omitempty"`
	DefaultBranch *string `json:"defaultBranch,omitempty"`
	Description *string `json:"description,omitempty"`
	Name *string `json:"name,omitempty"`
	Permissions *GithubRepositorypermissions `json:"permissions,omitempty"`
	Private *bool `json:"private,omitempty"`
	FullName *string `json:"fullName,omitempty"`
}

// NewGithubRepository instantiates a new GithubRepository object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGithubRepository() *GithubRepository {
	this := GithubRepository{}
	return &this
}

// NewGithubRepositoryWithDefaults instantiates a new GithubRepository object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGithubRepositoryWithDefaults() *GithubRepository {
	this := GithubRepository{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *GithubRepository) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *GithubRepository) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *GithubRepository) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *GithubRepository) GetLinks() GithubRepositorylinks {
	if o == nil || IsNil(o.Links) {
		var ret GithubRepositorylinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetLinksOk() (*GithubRepositorylinks, bool) {
	if o == nil || IsNil(o.Links) {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *GithubRepository) HasLinks() bool {
	if o != nil && !IsNil(o.Links) {
		return true
	}

	return false
}

// SetLinks gets a reference to the given GithubRepositorylinks and assigns it to the Links field.
func (o *GithubRepository) SetLinks(v GithubRepositorylinks) {
	o.Links = &v
}

// GetDefaultBranch returns the DefaultBranch field value if set, zero value otherwise.
func (o *GithubRepository) GetDefaultBranch() string {
	if o == nil || IsNil(o.DefaultBranch) {
		var ret string
		return ret
	}
	return *o.DefaultBranch
}

// GetDefaultBranchOk returns a tuple with the DefaultBranch field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetDefaultBranchOk() (*string, bool) {
	if o == nil || IsNil(o.DefaultBranch) {
		return nil, false
	}
	return o.DefaultBranch, true
}

// HasDefaultBranch returns a boolean if a field has been set.
func (o *GithubRepository) HasDefaultBranch() bool {
	if o != nil && !IsNil(o.DefaultBranch) {
		return true
	}

	return false
}

// SetDefaultBranch gets a reference to the given string and assigns it to the DefaultBranch field.
func (o *GithubRepository) SetDefaultBranch(v string) {
	o.DefaultBranch = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *GithubRepository) GetDescription() string {
	if o == nil || IsNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *GithubRepository) HasDescription() bool {
	if o != nil && !IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *GithubRepository) SetDescription(v string) {
	o.Description = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *GithubRepository) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *GithubRepository) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *GithubRepository) SetName(v string) {
	o.Name = &v
}

// GetPermissions returns the Permissions field value if set, zero value otherwise.
func (o *GithubRepository) GetPermissions() GithubRepositorypermissions {
	if o == nil || IsNil(o.Permissions) {
		var ret GithubRepositorypermissions
		return ret
	}
	return *o.Permissions
}

// GetPermissionsOk returns a tuple with the Permissions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetPermissionsOk() (*GithubRepositorypermissions, bool) {
	if o == nil || IsNil(o.Permissions) {
		return nil, false
	}
	return o.Permissions, true
}

// HasPermissions returns a boolean if a field has been set.
func (o *GithubRepository) HasPermissions() bool {
	if o != nil && !IsNil(o.Permissions) {
		return true
	}

	return false
}

// SetPermissions gets a reference to the given GithubRepositorypermissions and assigns it to the Permissions field.
func (o *GithubRepository) SetPermissions(v GithubRepositorypermissions) {
	o.Permissions = &v
}

// GetPrivate returns the Private field value if set, zero value otherwise.
func (o *GithubRepository) GetPrivate() bool {
	if o == nil || IsNil(o.Private) {
		var ret bool
		return ret
	}
	return *o.Private
}

// GetPrivateOk returns a tuple with the Private field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetPrivateOk() (*bool, bool) {
	if o == nil || IsNil(o.Private) {
		return nil, false
	}
	return o.Private, true
}

// HasPrivate returns a boolean if a field has been set.
func (o *GithubRepository) HasPrivate() bool {
	if o != nil && !IsNil(o.Private) {
		return true
	}

	return false
}

// SetPrivate gets a reference to the given bool and assigns it to the Private field.
func (o *GithubRepository) SetPrivate(v bool) {
	o.Private = &v
}

// GetFullName returns the FullName field value if set, zero value otherwise.
func (o *GithubRepository) GetFullName() string {
	if o == nil || IsNil(o.FullName) {
		var ret string
		return ret
	}
	return *o.FullName
}

// GetFullNameOk returns a tuple with the FullName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GithubRepository) GetFullNameOk() (*string, bool) {
	if o == nil || IsNil(o.FullName) {
		return nil, false
	}
	return o.FullName, true
}

// HasFullName returns a boolean if a field has been set.
func (o *GithubRepository) HasFullName() bool {
	if o != nil && !IsNil(o.FullName) {
		return true
	}

	return false
}

// SetFullName gets a reference to the given string and assigns it to the FullName field.
func (o *GithubRepository) SetFullName(v string) {
	o.FullName = &v
}

func (o GithubRepository) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GithubRepository) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Links) {
		toSerialize["_links"] = o.Links
	}
	if !IsNil(o.DefaultBranch) {
		toSerialize["defaultBranch"] = o.DefaultBranch
	}
	if !IsNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !IsNil(o.Permissions) {
		toSerialize["permissions"] = o.Permissions
	}
	if !IsNil(o.Private) {
		toSerialize["private"] = o.Private
	}
	if !IsNil(o.FullName) {
		toSerialize["fullName"] = o.FullName
	}
	return toSerialize, nil
}

type NullableGithubRepository struct {
	value *GithubRepository
	isSet bool
}

func (v NullableGithubRepository) Get() *GithubRepository {
	return v.value
}

func (v *NullableGithubRepository) Set(val *GithubRepository) {
	v.value = val
	v.isSet = true
}

func (v NullableGithubRepository) IsSet() bool {
	return v.isSet
}

func (v *NullableGithubRepository) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGithubRepository(val *GithubRepository) *NullableGithubRepository {
	return &NullableGithubRepository{value: val, isSet: true}
}

func (v NullableGithubRepository) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGithubRepository) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


