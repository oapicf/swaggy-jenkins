# ListView

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Jobs** | Pointer to [**[]FreeStyleProject**](FreeStyleProject.md) |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Url** | Pointer to **string** |  | [optional] 

## Methods

### NewListView

`func NewListView() *ListView`

NewListView instantiates a new ListView object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewListViewWithDefaults

`func NewListViewWithDefaults() *ListView`

NewListViewWithDefaults instantiates a new ListView object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *ListView) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *ListView) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *ListView) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *ListView) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetDescription

`func (o *ListView) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *ListView) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *ListView) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *ListView) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetJobs

`func (o *ListView) GetJobs() []FreeStyleProject`

GetJobs returns the Jobs field if non-nil, zero value otherwise.

### GetJobsOk

`func (o *ListView) GetJobsOk() (*[]FreeStyleProject, bool)`

GetJobsOk returns a tuple with the Jobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobs

`func (o *ListView) SetJobs(v []FreeStyleProject)`

SetJobs sets Jobs field to given value.

### HasJobs

`func (o *ListView) HasJobs() bool`

HasJobs returns a boolean if a field has been set.

### GetName

`func (o *ListView) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *ListView) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *ListView) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *ListView) HasName() bool`

HasName returns a boolean if a field has been set.

### GetUrl

`func (o *ListView) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *ListView) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *ListView) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *ListView) HasUrl() bool`

HasUrl returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


