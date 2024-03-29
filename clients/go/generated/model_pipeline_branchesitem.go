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

// checks if the PipelineBranchesitem type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &PipelineBranchesitem{}

// PipelineBranchesitem struct for PipelineBranchesitem
type PipelineBranchesitem struct {
	DisplayName *string `json:"displayName,omitempty"`
	EstimatedDurationInMillis *int32 `json:"estimatedDurationInMillis,omitempty"`
	Name *string `json:"name,omitempty"`
	WeatherScore *int32 `json:"weatherScore,omitempty"`
	LatestRun *PipelineBranchesitemlatestRun `json:"latestRun,omitempty"`
	Organization *string `json:"organization,omitempty"`
	PullRequest *PipelineBranchesitempullRequest `json:"pullRequest,omitempty"`
	TotalNumberOfPullRequests *int32 `json:"totalNumberOfPullRequests,omitempty"`
	Class *string `json:"_class,omitempty"`
}

// NewPipelineBranchesitem instantiates a new PipelineBranchesitem object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPipelineBranchesitem() *PipelineBranchesitem {
	this := PipelineBranchesitem{}
	return &this
}

// NewPipelineBranchesitemWithDefaults instantiates a new PipelineBranchesitem object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPipelineBranchesitemWithDefaults() *PipelineBranchesitem {
	this := PipelineBranchesitem{}
	return &this
}

// GetDisplayName returns the DisplayName field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetDisplayName() string {
	if o == nil || IsNil(o.DisplayName) {
		var ret string
		return ret
	}
	return *o.DisplayName
}

// GetDisplayNameOk returns a tuple with the DisplayName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetDisplayNameOk() (*string, bool) {
	if o == nil || IsNil(o.DisplayName) {
		return nil, false
	}
	return o.DisplayName, true
}

// HasDisplayName returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasDisplayName() bool {
	if o != nil && !IsNil(o.DisplayName) {
		return true
	}

	return false
}

// SetDisplayName gets a reference to the given string and assigns it to the DisplayName field.
func (o *PipelineBranchesitem) SetDisplayName(v string) {
	o.DisplayName = &v
}

// GetEstimatedDurationInMillis returns the EstimatedDurationInMillis field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetEstimatedDurationInMillis() int32 {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		var ret int32
		return ret
	}
	return *o.EstimatedDurationInMillis
}

// GetEstimatedDurationInMillisOk returns a tuple with the EstimatedDurationInMillis field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetEstimatedDurationInMillisOk() (*int32, bool) {
	if o == nil || IsNil(o.EstimatedDurationInMillis) {
		return nil, false
	}
	return o.EstimatedDurationInMillis, true
}

// HasEstimatedDurationInMillis returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasEstimatedDurationInMillis() bool {
	if o != nil && !IsNil(o.EstimatedDurationInMillis) {
		return true
	}

	return false
}

// SetEstimatedDurationInMillis gets a reference to the given int32 and assigns it to the EstimatedDurationInMillis field.
func (o *PipelineBranchesitem) SetEstimatedDurationInMillis(v int32) {
	o.EstimatedDurationInMillis = &v
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetName() string {
	if o == nil || IsNil(o.Name) {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetNameOk() (*string, bool) {
	if o == nil || IsNil(o.Name) {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasName() bool {
	if o != nil && !IsNil(o.Name) {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *PipelineBranchesitem) SetName(v string) {
	o.Name = &v
}

// GetWeatherScore returns the WeatherScore field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetWeatherScore() int32 {
	if o == nil || IsNil(o.WeatherScore) {
		var ret int32
		return ret
	}
	return *o.WeatherScore
}

// GetWeatherScoreOk returns a tuple with the WeatherScore field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetWeatherScoreOk() (*int32, bool) {
	if o == nil || IsNil(o.WeatherScore) {
		return nil, false
	}
	return o.WeatherScore, true
}

// HasWeatherScore returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasWeatherScore() bool {
	if o != nil && !IsNil(o.WeatherScore) {
		return true
	}

	return false
}

// SetWeatherScore gets a reference to the given int32 and assigns it to the WeatherScore field.
func (o *PipelineBranchesitem) SetWeatherScore(v int32) {
	o.WeatherScore = &v
}

// GetLatestRun returns the LatestRun field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetLatestRun() PipelineBranchesitemlatestRun {
	if o == nil || IsNil(o.LatestRun) {
		var ret PipelineBranchesitemlatestRun
		return ret
	}
	return *o.LatestRun
}

// GetLatestRunOk returns a tuple with the LatestRun field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetLatestRunOk() (*PipelineBranchesitemlatestRun, bool) {
	if o == nil || IsNil(o.LatestRun) {
		return nil, false
	}
	return o.LatestRun, true
}

// HasLatestRun returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasLatestRun() bool {
	if o != nil && !IsNil(o.LatestRun) {
		return true
	}

	return false
}

// SetLatestRun gets a reference to the given PipelineBranchesitemlatestRun and assigns it to the LatestRun field.
func (o *PipelineBranchesitem) SetLatestRun(v PipelineBranchesitemlatestRun) {
	o.LatestRun = &v
}

// GetOrganization returns the Organization field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetOrganization() string {
	if o == nil || IsNil(o.Organization) {
		var ret string
		return ret
	}
	return *o.Organization
}

// GetOrganizationOk returns a tuple with the Organization field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetOrganizationOk() (*string, bool) {
	if o == nil || IsNil(o.Organization) {
		return nil, false
	}
	return o.Organization, true
}

// HasOrganization returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasOrganization() bool {
	if o != nil && !IsNil(o.Organization) {
		return true
	}

	return false
}

// SetOrganization gets a reference to the given string and assigns it to the Organization field.
func (o *PipelineBranchesitem) SetOrganization(v string) {
	o.Organization = &v
}

// GetPullRequest returns the PullRequest field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetPullRequest() PipelineBranchesitempullRequest {
	if o == nil || IsNil(o.PullRequest) {
		var ret PipelineBranchesitempullRequest
		return ret
	}
	return *o.PullRequest
}

// GetPullRequestOk returns a tuple with the PullRequest field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetPullRequestOk() (*PipelineBranchesitempullRequest, bool) {
	if o == nil || IsNil(o.PullRequest) {
		return nil, false
	}
	return o.PullRequest, true
}

// HasPullRequest returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasPullRequest() bool {
	if o != nil && !IsNil(o.PullRequest) {
		return true
	}

	return false
}

// SetPullRequest gets a reference to the given PipelineBranchesitempullRequest and assigns it to the PullRequest field.
func (o *PipelineBranchesitem) SetPullRequest(v PipelineBranchesitempullRequest) {
	o.PullRequest = &v
}

// GetTotalNumberOfPullRequests returns the TotalNumberOfPullRequests field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetTotalNumberOfPullRequests() int32 {
	if o == nil || IsNil(o.TotalNumberOfPullRequests) {
		var ret int32
		return ret
	}
	return *o.TotalNumberOfPullRequests
}

// GetTotalNumberOfPullRequestsOk returns a tuple with the TotalNumberOfPullRequests field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetTotalNumberOfPullRequestsOk() (*int32, bool) {
	if o == nil || IsNil(o.TotalNumberOfPullRequests) {
		return nil, false
	}
	return o.TotalNumberOfPullRequests, true
}

// HasTotalNumberOfPullRequests returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasTotalNumberOfPullRequests() bool {
	if o != nil && !IsNil(o.TotalNumberOfPullRequests) {
		return true
	}

	return false
}

// SetTotalNumberOfPullRequests gets a reference to the given int32 and assigns it to the TotalNumberOfPullRequests field.
func (o *PipelineBranchesitem) SetTotalNumberOfPullRequests(v int32) {
	o.TotalNumberOfPullRequests = &v
}

// GetClass returns the Class field value if set, zero value otherwise.
func (o *PipelineBranchesitem) GetClass() string {
	if o == nil || IsNil(o.Class) {
		var ret string
		return ret
	}
	return *o.Class
}

// GetClassOk returns a tuple with the Class field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *PipelineBranchesitem) GetClassOk() (*string, bool) {
	if o == nil || IsNil(o.Class) {
		return nil, false
	}
	return o.Class, true
}

// HasClass returns a boolean if a field has been set.
func (o *PipelineBranchesitem) HasClass() bool {
	if o != nil && !IsNil(o.Class) {
		return true
	}

	return false
}

// SetClass gets a reference to the given string and assigns it to the Class field.
func (o *PipelineBranchesitem) SetClass(v string) {
	o.Class = &v
}

func (o PipelineBranchesitem) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o PipelineBranchesitem) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.DisplayName) {
		toSerialize["displayName"] = o.DisplayName
	}
	if !IsNil(o.EstimatedDurationInMillis) {
		toSerialize["estimatedDurationInMillis"] = o.EstimatedDurationInMillis
	}
	if !IsNil(o.Name) {
		toSerialize["name"] = o.Name
	}
	if !IsNil(o.WeatherScore) {
		toSerialize["weatherScore"] = o.WeatherScore
	}
	if !IsNil(o.LatestRun) {
		toSerialize["latestRun"] = o.LatestRun
	}
	if !IsNil(o.Organization) {
		toSerialize["organization"] = o.Organization
	}
	if !IsNil(o.PullRequest) {
		toSerialize["pullRequest"] = o.PullRequest
	}
	if !IsNil(o.TotalNumberOfPullRequests) {
		toSerialize["totalNumberOfPullRequests"] = o.TotalNumberOfPullRequests
	}
	if !IsNil(o.Class) {
		toSerialize["_class"] = o.Class
	}
	return toSerialize, nil
}

type NullablePipelineBranchesitem struct {
	value *PipelineBranchesitem
	isSet bool
}

func (v NullablePipelineBranchesitem) Get() *PipelineBranchesitem {
	return v.value
}

func (v *NullablePipelineBranchesitem) Set(val *PipelineBranchesitem) {
	v.value = val
	v.isSet = true
}

func (v NullablePipelineBranchesitem) IsSet() bool {
	return v.isSet
}

func (v *NullablePipelineBranchesitem) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePipelineBranchesitem(val *PipelineBranchesitem) *NullablePipelineBranchesitem {
	return &NullablePipelineBranchesitem{value: val, isSet: true}
}

func (v NullablePipelineBranchesitem) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePipelineBranchesitem) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


