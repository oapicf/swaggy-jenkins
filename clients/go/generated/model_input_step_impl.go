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

// checks if the InputStepImpl type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &InputStepImpl{}

// InputStepImpl struct for InputStepImpl
type InputStepImpl struct {
	Class *string `json:"_class,omitempty"`
	Links *InputStepImpllinks `json:"_links,omitempty"`
	Id *string `json:"id,omitempty"`
	Message *string `json:"message,omitempty"`
	Ok *string `json:"ok,omitempty"`
	Parameters []StringParameterDefinition `json:"parameters,omitempty"`
	Submitter *string `json:"submitter,omitempty"`
}

// NewInputStepImpl instantiates a new InputStepImpl object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewInputStepImpl() *InputStepImpl {
	this := InputStepImpl{}
	return &this
}

// NewInputStepImplWithDefaults instantiates a new InputStepImpl object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewInputStepImplWithDefaults() *InputStepImpl {
	this := InputStepImpl{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *InputStepImpl) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *InputStepImpl) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *InputStepImpl) SetClass(v string) {
	o.Class = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *InputStepImpl) GetLinks() InputStepImpllinks {
	if o == nil || IsNil(o.Links) {
		var ret InputStepImpllinks
		return ret
	}
	return *o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetLinksOk() (*InputStepImpllinks, bool) {
	if o == nil || IsNil(o.Links) {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *InputStepImpl) HasLinks() bool {
	if o != nil && !IsNil(o.Links) {
		return true
	}

	return false
}

// SetLinks gets a reference to the given InputStepImpllinks and assigns it to the Links field.
func (o *InputStepImpl) SetLinks(v InputStepImpllinks) {
	o.Links = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *InputStepImpl) GetId() string {
	if o == nil || IsNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetIdOk() (*string, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *InputStepImpl) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *InputStepImpl) SetId(v string) {
	o.Id = &v
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *InputStepImpl) GetMessage() string {
	if o == nil || IsNil(o.Message) {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetMessageOk() (*string, bool) {
	if o == nil || IsNil(o.Message) {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *InputStepImpl) HasMessage() bool {
	if o != nil && !IsNil(o.Message) {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *InputStepImpl) SetMessage(v string) {
	o.Message = &v
}

// GetOk returns the Ok field value if set, zero value otherwise.
func (o *InputStepImpl) GetOk() string {
	if o == nil || IsNil(o.Ok) {
		var ret string
		return ret
	}
	return *o.Ok
}

// GetOkOk returns a tuple with the Ok field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetOkOk() (*string, bool) {
	if o == nil || IsNil(o.Ok) {
		return nil, false
	}
	return o.Ok, true
}

// HasOk returns a boolean if a field has been set.
func (o *InputStepImpl) HasOk() bool {
	if o != nil && !IsNil(o.Ok) {
		return true
	}

	return false
}

// SetOk gets a reference to the given string and assigns it to the Ok field.
func (o *InputStepImpl) SetOk(v string) {
	o.Ok = &v
}

// GetParameters returns the Parameters field value if set, zero value otherwise.
func (o *InputStepImpl) GetParameters() []StringParameterDefinition {
	if o == nil || IsNil(o.Parameters) {
		var ret []StringParameterDefinition
		return ret
	}
	return o.Parameters
}

// GetParametersOk returns a tuple with the Parameters field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetParametersOk() ([]StringParameterDefinition, bool) {
	if o == nil || IsNil(o.Parameters) {
		return nil, false
	}
	return o.Parameters, true
}

// HasParameters returns a boolean if a field has been set.
func (o *InputStepImpl) HasParameters() bool {
	if o != nil && !IsNil(o.Parameters) {
		return true
	}

	return false
}

// SetParameters gets a reference to the given []StringParameterDefinition and assigns it to the Parameters field.
func (o *InputStepImpl) SetParameters(v []StringParameterDefinition) {
	o.Parameters = v
}

// GetSubmitter returns the Submitter field value if set, zero value otherwise.
func (o *InputStepImpl) GetSubmitter() string {
	if o == nil || IsNil(o.Submitter) {
		var ret string
		return ret
	}
	return *o.Submitter
}

// GetSubmitterOk returns a tuple with the Submitter field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *InputStepImpl) GetSubmitterOk() (*string, bool) {
	if o == nil || IsNil(o.Submitter) {
		return nil, false
	}
	return o.Submitter, true
}

// HasSubmitter returns a boolean if a field has been set.
func (o *InputStepImpl) HasSubmitter() bool {
	if o != nil && !IsNil(o.Submitter) {
		return true
	}

	return false
}

// SetSubmitter gets a reference to the given string and assigns it to the Submitter field.
func (o *InputStepImpl) SetSubmitter(v string) {
	o.Submitter = &v
}

func (o InputStepImpl) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o InputStepImpl) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Links) {
		toSerialize["_links"] = o.Links
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !IsNil(o.Message) {
		toSerialize["message"] = o.Message
	}
	if !IsNil(o.Ok) {
		toSerialize["ok"] = o.Ok
	}
	if !IsNil(o.Parameters) {
		toSerialize["parameters"] = o.Parameters
	}
	if !IsNil(o.Submitter) {
		toSerialize["submitter"] = o.Submitter
	}
	return toSerialize, nil
}

type NullableInputStepImpl struct {
	value *InputStepImpl
	isSet bool
}

func (v NullableInputStepImpl) Get() *InputStepImpl {
	return v.value
}

func (v *NullableInputStepImpl) Set(val *InputStepImpl) {
	v.value = val
	v.isSet = true
}

func (v NullableInputStepImpl) IsSet() bool {
	return v.isSet
}

func (v *NullableInputStepImpl) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableInputStepImpl(val *InputStepImpl) *NullableInputStepImpl {
	return &NullableInputStepImpl{value: val, isSet: true}
}

func (v NullableInputStepImpl) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableInputStepImpl) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


