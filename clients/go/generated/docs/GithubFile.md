# GithubFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Content** | Pointer to [**GithubContent**](GithubContent.md) |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 

## Methods

### NewGithubFile

`func NewGithubFile() *GithubFile`

NewGithubFile instantiates a new GithubFile object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGithubFileWithDefaults

`func NewGithubFileWithDefaults() *GithubFile`

NewGithubFileWithDefaults instantiates a new GithubFile object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetContent

`func (o *GithubFile) GetContent() GithubContent`

GetContent returns the Content field if non-nil, zero value otherwise.

### GetContentOk

`func (o *GithubFile) GetContentOk() (*GithubContent, bool)`

GetContentOk returns a tuple with the Content field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContent

`func (o *GithubFile) SetContent(v GithubContent)`

SetContent sets Content field to given value.

### HasContent

`func (o *GithubFile) HasContent() bool`

HasContent returns a boolean if a field has been set.

### GetClass

`func (o *GithubFile) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *GithubFile) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *GithubFile) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *GithubFile) HasClass() bool`

HasClass returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


