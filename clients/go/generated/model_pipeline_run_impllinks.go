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

// PipelineRunImpllinks struct for PipelineRunImpllinks
type PipelineRunImpllinks struct {
	Nodes *Link `json:"nodes,omitempty"`
	Log *Link `json:"log,omitempty"`
	Self *Link `json:"self,omitempty"`
	Actions *Link `json:"actions,omitempty"`
	Steps *Link `json:"steps,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineRunImpllinks instantiates a new PipelineRunImpllinks object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineRunImpllinks() *PipelineRunImpllinks {
	this := PipelineRunImpllinks{}
	return &this
}

// NewPipelineRunImpllinksWithDefaults instantiates a new PipelineRunImpllinks object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineRunImpllinksWithDefaults() *PipelineRunImpllinks {
	this := PipelineRunImpllinks{}
	return &this
}

// GetNodes returns the Nodes field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetNodes() Link {
	if o == nil || o.Nodes == nil {
		var ret Link
		return ret
	}
	return *o.Nodes
}

// GetNodesOk returns a tuple with the Nodes field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetNodesOk() (*Link, bool) {
	if o == nil || o.Nodes == nil {
		return nil, false
	}
	return o.Nodes, true
}

// HasNodes returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasNodes() bool {
	if o != nil && o.Nodes != nil {
		return true
	}

	return false
}

// SetNodes gets a reference to the given Link and assigns it to the Nodes field.
func (o *PipelineRunImpllinks) SetNodes(v Link) {
	o.Nodes = &v
}

// GetLog returns the Log field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetLog() Link {
	if o == nil || o.Log == nil {
		var ret Link
		return ret
	}
	return *o.Log
}

// GetLogOk returns a tuple with the Log field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetLogOk() (*Link, bool) {
	if o == nil || o.Log == nil {
		return nil, false
	}
	return o.Log, true
}

// HasLog returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasLog() bool {
	if o != nil && o.Log != nil {
		return true
	}

	return false
}

// SetLog gets a reference to the given Link and assigns it to the Log field.
func (o *PipelineRunImpllinks) SetLog(v Link) {
	o.Log = &v
}

// GetSelf returns the Self field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetSelf() Link {
	if o == nil || o.Self == nil {
		var ret Link
		return ret
	}
	return *o.Self
}

// GetSelfOk returns a tuple with the Self field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetSelfOk() (*Link, bool) {
	if o == nil || o.Self == nil {
		return nil, false
	}
	return o.Self, true
}

// HasSelf returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasSelf() bool {
	if o != nil && o.Self != nil {
		return true
	}

	return false
}

// SetSelf gets a reference to the given Link and assigns it to the Self field.
func (o *PipelineRunImpllinks) SetSelf(v Link) {
	o.Self = &v
}

// GetActions returns the Actions field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetActions() Link {
	if o == nil || o.Actions == nil {
		var ret Link
		return ret
	}
	return *o.Actions
}

// GetActionsOk returns a tuple with the Actions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetActionsOk() (*Link, bool) {
	if o == nil || o.Actions == nil {
		return nil, false
	}
	return o.Actions, true
}

// HasActions returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasActions() bool {
	if o != nil && o.Actions != nil {
		return true
	}

	return false
}

// SetActions gets a reference to the given Link and assigns it to the Actions field.
func (o *PipelineRunImpllinks) SetActions(v Link) {
	o.Actions = &v
}

// GetSteps returns the Steps field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetSteps() Link {
	if o == nil || o.Steps == nil {
		var ret Link
		return ret
	}
	return *o.Steps
}

// GetStepsOk returns a tuple with the Steps field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetStepsOk() (*Link, bool) {
	if o == nil || o.Steps == nil {
		return nil, false
	}
	return o.Steps, true
}

// HasSteps returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasSteps() bool {
	if o != nil && o.Steps != nil {
		return true
	}

	return false
}

// SetSteps gets a reference to the given Link and assigns it to the Steps field.
func (o *PipelineRunImpllinks) SetSteps(v Link) {
	o.Steps = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineRunImpllinks) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineRunImpllinks) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineRunImpllinks) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineRunImpllinks) SetClass(v string) {
	o.Class = &v
}

func (o PipelineRunImpllinks) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Nodes != nil {
		toSerialize["nodes"] = o.Nodes
	}
	if o.Log != nil {
		toSerialize["log"] = o.Log
	}
	if o.Self != nil {
		toSerialize["self"] = o.Self
	}
	if o.Actions != nil {
		toSerialize["actions"] = o.Actions
	}
	if o.Steps != nil {
		toSerialize["steps"] = o.Steps
	}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	return json.Marshal(toSerialize)
}

type NullablePipelineRunImpllinks struct {
	value *PipelineRunImpllinks
	isSet bool
}

func (v NullablePipelineRunImpllinks) Get() *PipelineRunImpllinks {
	return v.value
}

func (v *NullablePipelineRunImpllinks) Set(val *PipelineRunImpllinks) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineRunImpllinks) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineRunImpllinks) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineRunImpllinks(val *PipelineRunImpllinks) *NullablePipelineRunImpllinks {
	return &NullablePipelineRunImpllinks{value: val, isSet: true}
}

func (v NullablePipelineRunImpllinks) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineRunImpllinks) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


