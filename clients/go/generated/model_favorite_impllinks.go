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

// FavoriteImpllinks struct for FavoriteImpllinks
type FavoriteImpllinks struct {
	Self *Link `json:"self,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewFavoriteImpllinks instantiates a new FavoriteImpllinks object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFavoriteImpllinks() *FavoriteImpllinks {
	this := FavoriteImpllinks{}
	return &this
}

// NewFavoriteImpllinksWithDefaults instantiates a new FavoriteImpllinks object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFavoriteImpllinksWithDefaults() *FavoriteImpllinks {
	this := FavoriteImpllinks{}
	return &this
}

// GetSelf returns the Self field value if set, zero value otherwise.
func (o *FavoriteImpllinks) GetSelf() Link {
	if o == nil || o.Self == nil {
		var ret Link
		return ret
	}
	return *o.Self
}

// GetSelfOk returns a tuple with the Self field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FavoriteImpllinks) GetSelfOk() (*Link, bool) {
	if o == nil || o.Self == nil {
		return nil, false
	}
	return o.Self, true
}

// HasSelf returns a boolean if a field has been set.
func (o *FavoriteImpllinks) HasSelf() bool {
	if o != nil && o.Self != nil {
		return true
	}

	return false
}

// SetSelf gets a reference to the given Link and assigns it to the Self field.
func (o *FavoriteImpllinks) SetSelf(v Link) {
	o.Self = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *FavoriteImpllinks) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FavoriteImpllinks) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *FavoriteImpllinks) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *FavoriteImpllinks) SetClass(v string) {
	o.Class = &v
}

func (o FavoriteImpllinks) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Self != nil {
		toSerialize["self"] = o.Self
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullableFavoriteImpllinks struct {
	value *FavoriteImpllinks
	isSet bool
}

func (v NullableFavoriteImpllinks) Get() *FavoriteImpllinks {
	return v.value
}

func (v *NullableFavoriteImpllinks) Set(val *FavoriteImpllinks) {
	v.value = val
	v.isSet = true
}

func (v NullableFavoriteImpllinks) IsSet() bool {
	return v.isSet
}

func (v *NullableFavoriteImpllinks) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFavoriteImpllinks(val *FavoriteImpllinks) *NullableFavoriteImpllinks {
	return &NullableFavoriteImpllinks{value: val, isSet: true}
}

func (v NullableFavoriteImpllinks) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFavoriteImpllinks) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


