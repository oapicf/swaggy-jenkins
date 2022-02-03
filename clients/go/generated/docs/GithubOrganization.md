# GithubOrganization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**GithubOrganizationlinks**](GithubOrganizationlinks.md) |  | [optional] 
**JenkinsOrganizationPipeline** | Pointer to **bool** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 

## Methods

### NewGithubOrganization

`func NewGithubOrganization() *GithubOrganization`

NewGithubOrganization instantiates a new GithubOrganization object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGithubOrganizationWithDefaults

`func NewGithubOrganizationWithDefaults() *GithubOrganization`

NewGithubOrganizationWithDefaults instantiates a new GithubOrganization object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *GithubOrganization) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *GithubOrganization) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *GithubOrganization) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *GithubOrganization) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *GithubOrganization) GetLinks() GithubOrganizationlinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *GithubOrganization) GetLinksOk() (*GithubOrganizationlinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *GithubOrganization) SetLinks(v GithubOrganizationlinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *GithubOrganization) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetJenkinsOrganizationPipeline

`func (o *GithubOrganization) GetJenkinsOrganizationPipeline() bool`

GetJenkinsOrganizationPipeline returns the JenkinsOrganizationPipeline field if non-nil, zero value otherwise.

### GetJenkinsOrganizationPipelineOk

`func (o *GithubOrganization) GetJenkinsOrganizationPipelineOk() (*bool, bool)`

GetJenkinsOrganizationPipelineOk returns a tuple with the JenkinsOrganizationPipeline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJenkinsOrganizationPipeline

`func (o *GithubOrganization) SetJenkinsOrganizationPipeline(v bool)`

SetJenkinsOrganizationPipeline sets JenkinsOrganizationPipeline field to given value.

### HasJenkinsOrganizationPipeline

`func (o *GithubOrganization) HasJenkinsOrganizationPipeline() bool`

HasJenkinsOrganizationPipeline returns a boolean if a field has been set.

### GetName

`func (o *GithubOrganization) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GithubOrganization) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GithubOrganization) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GithubOrganization) HasName() bool`

HasName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


