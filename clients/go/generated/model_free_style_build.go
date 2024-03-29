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

// checks if the FreeStyleBuild type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &FreeStyleBuild{}

// FreeStyleBuild struct for FreeStyleBuild
type FreeStyleBuild struct {
	Class *string `json:"_class,omitempty"`
	Number *int32 `json:"number,omitempty"`
	Url *string `json:"url,omitempty"`
	Actions []CauseAction `json:"actions,omitempty"`
	Building *bool `json:"building,omitempty"`
	Description *string `json:"description,omitempty"`
	DisplayName *string `json:"displayName,omitempty"`
	Duration *int32 `json:"duration,omitempty"`
	EstimatedDuration *int32 `json:"estimatedDuration,omitempty"`
	Executor *string `json:"executor,omitempty"`
	FullDisplayName *string `json:"fullDisplayName,omitempty"`
	Id *string `json:"id,omitempty"`
	KeepLog *bool `json:"keepLog,omitempty"`
	QueueId *int32 `json:"queueId,omitempty"`
	Result *string `json:"result,omitempty"`
	Timestamp *int32 `json:"timestamp,omitempty"`
	BuiltOn *string `json:"builtOn,omitempty"`
	ChangeSet *EmptyChangeLogSet `json:"changeSet,omitempty"`
}

// NewFreeStyleBuild instantiates a new FreeStyleBuild object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFreeStyleBuild() *FreeStyleBuild {
	this := FreeStyleBuild{}
	return &this
}

// NewFreeStyleBuildWithDefaults instantiates a new FreeStyleBuild object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFreeStyleBuildWithDefaults() *FreeStyleBuild {
	this := FreeStyleBuild{}
	return &this
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *FreeStyleBuild) SetClass(v string) {
	o.Class = &v
}

// GetNumber returns the Number field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetNumber() int32 {
	if o == nil || IsNil(o.Number) {
		var ret int32
		return ret
	}
	return *o.Number
}

// GetNumberOk returns a tuple with the Number field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetNumberOk() (*int32, bool) {
	if o == nil || IsNil(o.Number) {
		return nil, false
	}
	return o.Number, true
}

// HasNumber returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasNumber() bool {
	if o != nil && !IsNil(o.Number) {
		return true
	}

	return false
}

// SetNumber gets a reference to the given int32 and assigns it to the Number field.
func (o *FreeStyleBuild) SetNumber(v int32) {
	o.Number = &v
}

// GetUrl returns the Url field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetUrl() string {
	if o == nil || IsNil(o.Url) {
		var ret string
		return ret
	}
	return *o.Url
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetUrlOk() (*string, bool) {
	if o == nil || IsNil(o.Url) {
		return nil, false
	}
	return o.Url, true
}

// HasUrl returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasUrl() bool {
	if o != nil && !IsNil(o.Url) {
		return true
	}

	return false
}

// SetUrl gets a reference to the given string and assigns it to the Url field.
func (o *FreeStyleBuild) SetUrl(v string) {
	o.Url = &v
}

// GetActions returns the Actions field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetActions() []CauseAction {
	if o == nil || IsNil(o.Actions) {
		var ret []CauseAction
		return ret
	}
	return o.Actions
}

// GetActionsOk returns a tuple with the Actions field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetActionsOk() ([]CauseAction, bool) {
	if o == nil || IsNil(o.Actions) {
		return nil, false
	}
	return o.Actions, true
}

// HasActions returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasActions() bool {
	if o != nil && !IsNil(o.Actions) {
		return true
	}

	return false
}

// SetActions gets a reference to the given []CauseAction and assigns it to the Actions field.
func (o *FreeStyleBuild) SetActions(v []CauseAction) {
	o.Actions = v
}

// GetBuilding returns the Building field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetBuilding() bool {
	if o == nil || IsNil(o.Building) {
		var ret bool
		return ret
	}
	return *o.Building
}

// GetBuildingOk returns a tuple with the Building field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetBuildingOk() (*bool, bool) {
	if o == nil || IsNil(o.Building) {
		return nil, false
	}
	return o.Building, true
}

// HasBuilding returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasBuilding() bool {
	if o != nil && !IsNil(o.Building) {
		return true
	}

	return false
}

// SetBuilding gets a reference to the given bool and assigns it to the Building field.
func (o *FreeStyleBuild) SetBuilding(v bool) {
	o.Building = &v
}

// GetDescription returns the Description field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetDescription() string {
	if o == nil || IsNil(o.Description) {
		var ret string
		return ret
	}
	return *o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetDescriptionOk() (*string, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasDescription() bool {
	if o != nil && !IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given string and assigns it to the Description field.
func (o *FreeStyleBuild) SetDescription(v string) {
	o.Description = &v
}

// GetDisplayName returns the DisplayName field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetDisplayName() string {
	if o == nil || IsNil(o.DisplayName) {
		var ret string
		return ret
	}
	return *o.DisplayName
}

// GetDisplayNameOk returns a tuple with the DisplayName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetDisplayNameOk() (*string, bool) {
	if o == nil || IsNil(o.DisplayName) {
		return nil, false
	}
	return o.DisplayName, true
}

// HasDisplayName returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasDisplayName() bool {
	if o != nil && !IsNil(o.DisplayName) {
		return true
	}

	return false
}

// SetDisplayName gets a reference to the given string and assigns it to the DisplayName field.
func (o *FreeStyleBuild) SetDisplayName(v string) {
	o.DisplayName = &v
}

// GetDuration returns the Duration field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetDuration() int32 {
	if o == nil || IsNil(o.Duration) {
		var ret int32
		return ret
	}
	return *o.Duration
}

// GetDurationOk returns a tuple with the Duration field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetDurationOk() (*int32, bool) {
	if o == nil || IsNil(o.Duration) {
		return nil, false
	}
	return o.Duration, true
}

// HasDuration returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasDuration() bool {
	if o != nil && !IsNil(o.Duration) {
		return true
	}

	return false
}

// SetDuration gets a reference to the given int32 and assigns it to the Duration field.
func (o *FreeStyleBuild) SetDuration(v int32) {
	o.Duration = &v
}

// GetEstimatedDuration returns the EstimatedDuration field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetEstimatedDuration() int32 {
	if o == nil || IsNil(o.EstimatedDuration) {
		var ret int32
		return ret
	}
	return *o.EstimatedDuration
}

// GetEstimatedDurationOk returns a tuple with the EstimatedDuration field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetEstimatedDurationOk() (*int32, bool) {
	if o == nil || IsNil(o.EstimatedDuration) {
		return nil, false
	}
	return o.EstimatedDuration, true
}

// HasEstimatedDuration returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasEstimatedDuration() bool {
	if o != nil && !IsNil(o.EstimatedDuration) {
		return true
	}

	return false
}

// SetEstimatedDuration gets a reference to the given int32 and assigns it to the EstimatedDuration field.
func (o *FreeStyleBuild) SetEstimatedDuration(v int32) {
	o.EstimatedDuration = &v
}

// GetExecutor returns the Executor field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetExecutor() string {
	if o == nil || IsNil(o.Executor) {
		var ret string
		return ret
	}
	return *o.Executor
}

// GetExecutorOk returns a tuple with the Executor field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetExecutorOk() (*string, bool) {
	if o == nil || IsNil(o.Executor) {
		return nil, false
	}
	return o.Executor, true
}

// HasExecutor returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasExecutor() bool {
	if o != nil && !IsNil(o.Executor) {
		return true
	}

	return false
}

// SetExecutor gets a reference to the given string and assigns it to the Executor field.
func (o *FreeStyleBuild) SetExecutor(v string) {
	o.Executor = &v
}

// GetFullDisplayName returns the FullDisplayName field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetFullDisplayName() string {
	if o == nil || IsNil(o.FullDisplayName) {
		var ret string
		return ret
	}
	return *o.FullDisplayName
}

// GetFullDisplayNameOk returns a tuple with the FullDisplayName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetFullDisplayNameOk() (*string, bool) {
	if o == nil || IsNil(o.FullDisplayName) {
		return nil, false
	}
	return o.FullDisplayName, true
}

// HasFullDisplayName returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasFullDisplayName() bool {
	if o != nil && !IsNil(o.FullDisplayName) {
		return true
	}

	return false
}

// SetFullDisplayName gets a reference to the given string and assigns it to the FullDisplayName field.
func (o *FreeStyleBuild) SetFullDisplayName(v string) {
	o.FullDisplayName = &v
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetId() string {
	if o == nil || IsNil(o.Id) {
		var ret string
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetIdOk() (*string, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given string and assigns it to the Id field.
func (o *FreeStyleBuild) SetId(v string) {
	o.Id = &v
}

// GetKeepLog returns the KeepLog field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetKeepLog() bool {
	if o == nil || IsNil(o.KeepLog) {
		var ret bool
		return ret
	}
	return *o.KeepLog
}

// GetKeepLogOk returns a tuple with the KeepLog field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetKeepLogOk() (*bool, bool) {
	if o == nil || IsNil(o.KeepLog) {
		return nil, false
	}
	return o.KeepLog, true
}

// HasKeepLog returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasKeepLog() bool {
	if o != nil && !IsNil(o.KeepLog) {
		return true
	}

	return false
}

// SetKeepLog gets a reference to the given bool and assigns it to the KeepLog field.
func (o *FreeStyleBuild) SetKeepLog(v bool) {
	o.KeepLog = &v
}

// GetQueueId returns the QueueId field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetQueueId() int32 {
	if o == nil || IsNil(o.QueueId) {
		var ret int32
		return ret
	}
	return *o.QueueId
}

// GetQueueIdOk returns a tuple with the QueueId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetQueueIdOk() (*int32, bool) {
	if o == nil || IsNil(o.QueueId) {
		return nil, false
	}
	return o.QueueId, true
}

// HasQueueId returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasQueueId() bool {
	if o != nil && !IsNil(o.QueueId) {
		return true
	}

	return false
}

// SetQueueId gets a reference to the given int32 and assigns it to the QueueId field.
func (o *FreeStyleBuild) SetQueueId(v int32) {
	o.QueueId = &v
}

// GetResult returns the Result field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetResult() string {
	if o == nil || IsNil(o.Result) {
		var ret string
		return ret
	}
	return *o.Result
}

// GetResultOk returns a tuple with the Result field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetResultOk() (*string, bool) {
	if o == nil || IsNil(o.Result) {
		return nil, false
	}
	return o.Result, true
}

// HasResult returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasResult() bool {
	if o != nil && !IsNil(o.Result) {
		return true
	}

	return false
}

// SetResult gets a reference to the given string and assigns it to the Result field.
func (o *FreeStyleBuild) SetResult(v string) {
	o.Result = &v
}

// GetTimestamp returns the Timestamp field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetTimestamp() int32 {
	if o == nil || IsNil(o.Timestamp) {
		var ret int32
		return ret
	}
	return *o.Timestamp
}

// GetTimestampOk returns a tuple with the Timestamp field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetTimestampOk() (*int32, bool) {
	if o == nil || IsNil(o.Timestamp) {
		return nil, false
	}
	return o.Timestamp, true
}

// HasTimestamp returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasTimestamp() bool {
	if o != nil && !IsNil(o.Timestamp) {
		return true
	}

	return false
}

// SetTimestamp gets a reference to the given int32 and assigns it to the Timestamp field.
func (o *FreeStyleBuild) SetTimestamp(v int32) {
	o.Timestamp = &v
}

// GetBuiltOn returns the BuiltOn field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetBuiltOn() string {
	if o == nil || IsNil(o.BuiltOn) {
		var ret string
		return ret
	}
	return *o.BuiltOn
}

// GetBuiltOnOk returns a tuple with the BuiltOn field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetBuiltOnOk() (*string, bool) {
	if o == nil || IsNil(o.BuiltOn) {
		return nil, false
	}
	return o.BuiltOn, true
}

// HasBuiltOn returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasBuiltOn() bool {
	if o != nil && !IsNil(o.BuiltOn) {
		return true
	}

	return false
}

// SetBuiltOn gets a reference to the given string and assigns it to the BuiltOn field.
func (o *FreeStyleBuild) SetBuiltOn(v string) {
	o.BuiltOn = &v
}

// GetChangeSet returns the ChangeSet field value if set, zero value otherwise.
func (o *FreeStyleBuild) GetChangeSet() EmptyChangeLogSet {
	if o == nil || IsNil(o.ChangeSet) {
		var ret EmptyChangeLogSet
		return ret
	}
	return *o.ChangeSet
}

// GetChangeSetOk returns a tuple with the ChangeSet field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FreeStyleBuild) GetChangeSetOk() (*EmptyChangeLogSet, bool) {
	if o == nil || IsNil(o.ChangeSet) {
		return nil, false
	}
	return o.ChangeSet, true
}

// HasChangeSet returns a boolean if a field has been set.
func (o *FreeStyleBuild) HasChangeSet() bool {
	if o != nil && !IsNil(o.ChangeSet) {
		return true
	}

	return false
}

// SetChangeSet gets a reference to the given EmptyChangeLogSet and assigns it to the ChangeSet field.
func (o *FreeStyleBuild) SetChangeSet(v EmptyChangeLogSet) {
	o.ChangeSet = &v
}

func (o FreeStyleBuild) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o FreeStyleBuild) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	if !IsNil(o.Number) {
		toSerialize["number"] = o.Number
	}
	if !IsNil(o.Url) {
		toSerialize["url"] = o.Url
	}
	if !IsNil(o.Actions) {
		toSerialize["actions"] = o.Actions
	}
	if !IsNil(o.Building) {
		toSerialize["building"] = o.Building
	}
	if !IsNil(o.Description) {
		toSerialize["description"] = o.Description
	}
	if !IsNil(o.DisplayName) {
		toSerialize["displayName"] = o.DisplayName
	}
	if !IsNil(o.Duration) {
		toSerialize["duration"] = o.Duration
	}
	if !IsNil(o.EstimatedDuration) {
		toSerialize["estimatedDuration"] = o.EstimatedDuration
	}
	if !IsNil(o.Executor) {
		toSerialize["executor"] = o.Executor
	}
	if !IsNil(o.FullDisplayName) {
		toSerialize["fullDisplayName"] = o.FullDisplayName
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	if !IsNil(o.KeepLog) {
		toSerialize["keepLog"] = o.KeepLog
	}
	if !IsNil(o.QueueId) {
		toSerialize["queueId"] = o.QueueId
	}
	if !IsNil(o.Result) {
		toSerialize["result"] = o.Result
	}
	if !IsNil(o.Timestamp) {
		toSerialize["timestamp"] = o.Timestamp
	}
	if !IsNil(o.BuiltOn) {
		toSerialize["builtOn"] = o.BuiltOn
	}
	if !IsNil(o.ChangeSet) {
		toSerialize["changeSet"] = o.ChangeSet
	}
	return toSerialize, nil
}

type NullableFreeStyleBuild struct {
	value *FreeStyleBuild
	isSet bool
}

func (v NullableFreeStyleBuild) Get() *FreeStyleBuild {
	return v.value
}

func (v *NullableFreeStyleBuild) Set(val *FreeStyleBuild) {
	v.value = val
	v.isSet = true
}

func (v NullableFreeStyleBuild) IsSet() bool {
	return v.isSet
}

func (v *NullableFreeStyleBuild) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFreeStyleBuild(val *FreeStyleBuild) *NullableFreeStyleBuild {
	return &NullableFreeStyleBuild{value: val, isSet: true}
}

func (v NullableFreeStyleBuild) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFreeStyleBuild) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


