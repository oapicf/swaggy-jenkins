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

// FavoriteImpl struct for FavoriteImpl
type FavoriteImpl struct {
	Class *string `json:"_class,omitempty"`
	Links *FavoriteImpllinks `json:"_links,omitempty"`
	Item *PipelineImpl `json:"item,omitempty"`
}

// NewFavoriteImpl instantiates a new FavoriteImpl object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFavoriteImpl() *FavoriteImpl {
	this := FavoriteImpl{}
	return &this
}

// NewFavoriteImplWithDefaults instantiates a new FavoriteImpl object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFavoriteImplWithDefaults() *FavoriteImpl {
	this := FavoriteImpl{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *FavoriteImpl) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FavoriteImpl) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *FavoriteImpl) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *FavoriteImpl) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *FavoriteImpl) GetLinks() FavoriteImpllinks {
	if o == nil || o.Links == nil {
		var ret FavoriteImpllinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FavoriteImpl) GetLinksOk() (*FavoriteImpllinks, bool) {
	if o == nil || o.Links == nil {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *FavoriteImpl) HasLinks() bool {
	if o != nil && o.Links != nil {
		return true
	}

	return false
}

// SetLinks gets a reference to the given FavoriteImpllinks and assigns it to the Links field.
func (o *FavoriteImpl) SetLinks(v FavoriteImpllinks) {
	o.Links = &v
}

// GetItem returns the Item field value if set, zero value otherwise.
func (o *FavoriteImpl) GetItem() PipelineImpl {
	if o == nil || o.Item == nil {
		var ret PipelineImpl
		return ret
	}
	return *o.Item
}

// GetItemOk returns a tuple with the Item field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FavoriteImpl) GetItemOk() (*PipelineImpl, bool) {
	if o == nil || o.Item == nil {
		return nil, false
	}
	return o.Item, true
}

// HasItem returns a boolean if a field has been set.
func (o *FavoriteImpl) HasItem() bool {
	if o != nil && o.Item != nil {
		return true
	}

	return false
}

// SetItem gets a reference to the given PipelineImpl and assigns it to the Item field.
func (o *FavoriteImpl) SetItem(v PipelineImpl) {
	o.Item = &v
}

func (o FavoriteImpl) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Links != nil {
		toSerialize["_links"] = o.Links
	}
	if o.Item != nil {
		toSerialize["item"] = o.Item
	}
	return json.Marshal(toSerialize)
}

type NullableFavoriteImpl struct {
	value *FavoriteImpl
	isSet bool
}

func (v NullableFavoriteImpl) Get() *FavoriteImpl {
	return v.value
}

func (v *NullableFavoriteImpl) Set(val *FavoriteImpl) {
	v.value = val
	v.isSet = true
}

func (v NullableFavoriteImpl) IsSet() bool {
	return v.isSet
}

func (v *NullableFavoriteImpl) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFavoriteImpl(val *FavoriteImpl) *NullableFavoriteImpl {
	return &NullableFavoriteImpl{value: val, isSet: true}
}

func (v NullableFavoriteImpl) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFavoriteImpl) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


