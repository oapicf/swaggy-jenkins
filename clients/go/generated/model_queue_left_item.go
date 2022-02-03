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

// QueueLeftItem struct for QueueLeftItem
type QueueLeftItem struct {
	Class *string `json:"_class,omitempty"`
	Actions []CauseAction `json:"actions,omitempty"`
	Blocked *bool `json:"blocked,omitempty"`
	Buildable *bool `json:"buildable,omitempty"`
	Id *int32 `json:"id,omitempty"`
	InQueueSince *int32 `json:"inQueueSince,omitempty"`
	Params *string `json:"params,omitempty"`
	Stuck *bool `json:"stuck,omitempty"`
	Task *FreeStyleProject `json:"task,omitempty"`
	Url *string `json:"url,omitempty"`
	Why *string `json:"why,omitempty"`
	Cancelled *bool `json:"cancelled,omitempty"`
	Executable *FreeStyleBuild `json:"executable,omitempty"`
}

// NewQueueLeftItem instantiates a new QueueLeftItem object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewQueueLeftItem() *QueueLeftItem {
	this := QueueLeftItem{}
	return &this
}

// NewQueueLeftItemWithDefaults instantiates a new QueueLeftItem object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewQueueLeftItemWithDefaults() *QueueLeftItem {
	this := QueueLeftItem{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *QueueLeftItem) GetClass() string {
	if o == nil || o.Class == nil {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetClassOk() (*string, bool) {
	if o == nil || o.Class == nil {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *QueueLeftItem) HasClass() bool {
	if o != nil && o.Class != nil {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *QueueLeftItem) SetClass(v string) {
	o.Class = &v
}

// GetActions returns the Actions field value if set, zero value otherwise.
func (o *QueueLeftItem) GetActions() []CauseAction {
	if o == nil || o.Actions == nil {
		var ret []CauseAction
		return ret
	}
	return o.Actions
}

// GetActionsOk returns a tuple with the Actions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetActionsOk() ([]CauseAction, bool) {
	if o == nil || o.Actions == nil {
		return nil, false
	}
	return o.Actions, true
}

// HasActions returns a boolean if a field has been set.
func (o *QueueLeftItem) HasActions() bool {
	if o != nil && o.Actions != nil {
		return true
	}

	return false
}

// SetActions gets a reference to the given []CauseAction and assigns it to the Actions field.
func (o *QueueLeftItem) SetActions(v []CauseAction) {
	o.Actions = v
}

// GetBlocked returns the Blocked field value if set, zero value otherwise.
func (o *QueueLeftItem) GetBlocked() bool {
	if o == nil || o.Blocked == nil {
		var ret bool
		return ret
	}
	return *o.Blocked
}

// GetBlockedOk returns a tuple with the Blocked field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetBlockedOk() (*bool, bool) {
	if o == nil || o.Blocked == nil {
		return nil, false
	}
	return o.Blocked, true
}

// HasBlocked returns a boolean if a field has been set.
func (o *QueueLeftItem) HasBlocked() bool {
	if o != nil && o.Blocked != nil {
		return true
	}

	return false
}

// SetBlocked gets a reference to the given bool and assigns it to the Blocked field.
func (o *QueueLeftItem) SetBlocked(v bool) {
	o.Blocked = &v
}

// GetBuildable returns the Buildable field value if set, zero value otherwise.
func (o *QueueLeftItem) GetBuildable() bool {
	if o == nil || o.Buildable == nil {
		var ret bool
		return ret
	}
	return *o.Buildable
}

// GetBuildableOk returns a tuple with the Buildable field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetBuildableOk() (*bool, bool) {
	if o == nil || o.Buildable == nil {
		return nil, false
	}
	return o.Buildable, true
}

// HasBuildable returns a boolean if a field has been set.
func (o *QueueLeftItem) HasBuildable() bool {
	if o != nil && o.Buildable != nil {
		return true
	}

	return false
}

// SetBuildable gets a reference to the given bool and assigns it to the Buildable field.
func (o *QueueLeftItem) SetBuildable(v bool) {
	o.Buildable = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *QueueLeftItem) GetId() int32 {
	if o == nil || o.Id == nil {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetIdOk() (*int32, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *QueueLeftItem) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *QueueLeftItem) SetId(v int32) {
	o.Id = &v
}

// GetInQueueSince returns the InQueueSince field value if set, zero value otherwise.
func (o *QueueLeftItem) GetInQueueSince() int32 {
	if o == nil || o.InQueueSince == nil {
		var ret int32
		return ret
	}
	return *o.InQueueSince
}

// GetInQueueSinceOk returns a tuple with the InQueueSince field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetInQueueSinceOk() (*int32, bool) {
	if o == nil || o.InQueueSince == nil {
		return nil, false
	}
	return o.InQueueSince, true
}

// HasInQueueSince returns a boolean if a field has been set.
func (o *QueueLeftItem) HasInQueueSince() bool {
	if o != nil && o.InQueueSince != nil {
		return true
	}

	return false
}

// SetInQueueSince gets a reference to the given int32 and assigns it to the InQueueSince field.
func (o *QueueLeftItem) SetInQueueSince(v int32) {
	o.InQueueSince = &v
}

// GetParams returns the Params field value if set, zero value otherwise.
func (o *QueueLeftItem) GetParams() string {
	if o == nil || o.Params == nil {
		var ret string
		return ret
	}
	return *o.Params
}

// GetParamsOk returns a tuple with the Params field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetParamsOk() (*string, bool) {
	if o == nil || o.Params == nil {
		return nil, false
	}
	return o.Params, true
}

// HasParams returns a boolean if a field has been set.
func (o *QueueLeftItem) HasParams() bool {
	if o != nil && o.Params != nil {
		return true
	}

	return false
}

// SetParams gets a reference to the given string and assigns it to the Params field.
func (o *QueueLeftItem) SetParams(v string) {
	o.Params = &v
}

// GetStuck returns the Stuck field value if set, zero value otherwise.
func (o *QueueLeftItem) GetStuck() bool {
	if o == nil || o.Stuck == nil {
		var ret bool
		return ret
	}
	return *o.Stuck
}

// GetStuckOk returns a tuple with the Stuck field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetStuckOk() (*bool, bool) {
	if o == nil || o.Stuck == nil {
		return nil, false
	}
	return o.Stuck, true
}

// HasStuck returns a boolean if a field has been set.
func (o *QueueLeftItem) HasStuck() bool {
	if o != nil && o.Stuck != nil {
		return true
	}

	return false
}

// SetStuck gets a reference to the given bool and assigns it to the Stuck field.
func (o *QueueLeftItem) SetStuck(v bool) {
	o.Stuck = &v
}

// GetTask returns the Task field value if set, zero value otherwise.
func (o *QueueLeftItem) GetTask() FreeStyleProject {
	if o == nil || o.Task == nil {
		var ret FreeStyleProject
		return ret
	}
	return *o.Task
}

// GetTaskOk returns a tuple with the Task field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetTaskOk() (*FreeStyleProject, bool) {
	if o == nil || o.Task == nil {
		return nil, false
	}
	return o.Task, true
}

// HasTask returns a boolean if a field has been set.
func (o *QueueLeftItem) HasTask() bool {
	if o != nil && o.Task != nil {
		return true
	}

	return false
}

// SetTask gets a reference to the given FreeStyleProject and assigns it to the Task field.
func (o *QueueLeftItem) SetTask(v FreeStyleProject) {
	o.Task = &v
}

// GetUrl returns the Url field value if set, zero value otherwise.
func (o *QueueLeftItem) GetUrl() string {
	if o == nil || o.Url == nil {
		var ret string
		return ret
	}
	return *o.Url
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetUrlOk() (*string, bool) {
	if o == nil || o.Url == nil {
		return nil, false
	}
	return o.Url, true
}

// HasUrl returns a boolean if a field has been set.
func (o *QueueLeftItem) HasUrl() bool {
	if o != nil && o.Url != nil {
		return true
	}

	return false
}

// SetUrl gets a reference to the given string and assigns it to the Url field.
func (o *QueueLeftItem) SetUrl(v string) {
	o.Url = &v
}

// GetWhy returns the Why field value if set, zero value otherwise.
func (o *QueueLeftItem) GetWhy() string {
	if o == nil || o.Why == nil {
		var ret string
		return ret
	}
	return *o.Why
}

// GetWhyOk returns a tuple with the Why field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetWhyOk() (*string, bool) {
	if o == nil || o.Why == nil {
		return nil, false
	}
	return o.Why, true
}

// HasWhy returns a boolean if a field has been set.
func (o *QueueLeftItem) HasWhy() bool {
	if o != nil && o.Why != nil {
		return true
	}

	return false
}

// SetWhy gets a reference to the given string and assigns it to the Why field.
func (o *QueueLeftItem) SetWhy(v string) {
	o.Why = &v
}

// GetCancelled returns the Cancelled field value if set, zero value otherwise.
func (o *QueueLeftItem) GetCancelled() bool {
	if o == nil || o.Cancelled == nil {
		var ret bool
		return ret
	}
	return *o.Cancelled
}

// GetCancelledOk returns a tuple with the Cancelled field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetCancelledOk() (*bool, bool) {
	if o == nil || o.Cancelled == nil {
		return nil, false
	}
	return o.Cancelled, true
}

// HasCancelled returns a boolean if a field has been set.
func (o *QueueLeftItem) HasCancelled() bool {
	if o != nil && o.Cancelled != nil {
		return true
	}

	return false
}

// SetCancelled gets a reference to the given bool and assigns it to the Cancelled field.
func (o *QueueLeftItem) SetCancelled(v bool) {
	o.Cancelled = &v
}

// GetExecutable returns the Executable field value if set, zero value otherwise.
func (o *QueueLeftItem) GetExecutable() FreeStyleBuild {
	if o == nil || o.Executable == nil {
		var ret FreeStyleBuild
		return ret
	}
	return *o.Executable
}

// GetExecutableOk returns a tuple with the Executable field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *QueueLeftItem) GetExecutableOk() (*FreeStyleBuild, bool) {
	if o == nil || o.Executable == nil {
		return nil, false
	}
	return o.Executable, true
}

// HasExecutable returns a boolean if a field has been set.
func (o *QueueLeftItem) HasExecutable() bool {
	if o != nil && o.Executable != nil {
		return true
	}

	return false
}

// SetExecutable gets a reference to the given FreeStyleBuild and assigns it to the Executable field.
func (o *QueueLeftItem) SetExecutable(v FreeStyleBuild) {
	o.Executable = &v
}

func (o QueueLeftItem) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Class != nil {
		toSerialize["_class"] = o.Class
	}
	if o.Actions != nil {
		toSerialize["actions"] = o.Actions
	}
	if o.Blocked != nil {
		toSerialize["blocked"] = o.Blocked
	}
	if o.Buildable != nil {
		toSerialize["buildable"] = o.Buildable
	}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.InQueueSince != nil {
		toSerialize["inQueueSince"] = o.InQueueSince
	}
	if o.Params != nil {
		toSerialize["params"] = o.Params
	}
	if o.Stuck != nil {
		toSerialize["stuck"] = o.Stuck
	}
	if o.Task != nil {
		toSerialize["task"] = o.Task
	}
	if o.Url != nil {
		toSerialize["url"] = o.Url
	}
	if o.Why != nil {
		toSerialize["why"] = o.Why
	}
	if o.Cancelled != nil {
		toSerialize["cancelled"] = o.Cancelled
	}
	if o.Executable != nil {
		toSerialize["executable"] = o.Executable
	}
	return json.Marshal(toSerialize)
}

type NullableQueueLeftItem struct {
	value *QueueLeftItem
	isSet bool
}

func (v NullableQueueLeftItem) Get() *QueueLeftItem {
	return v.value
}

func (v *NullableQueueLeftItem) Set(val *QueueLeftItem) {
	v.value = val
	v.isSet = true
}

func (v NullableQueueLeftItem) IsSet() bool {
	return v.isSet
}

func (v *NullableQueueLeftItem) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableQueueLeftItem(val *QueueLeftItem) *NullableQueueLeftItem {
	return &NullableQueueLeftItem{value: val, isSet: true}
}

func (v NullableQueueLeftItem) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableQueueLeftItem) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


