# GithubRepositories

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**GithubRepositorieslinks**](GithubRepositorieslinks.md) |  | [optional] 
**Items** | Pointer to [**[]GithubRepository**](GithubRepository.md) |  | [optional] 
**LastPage** | Pointer to **int32** |  | [optional] 
**NextPage** | Pointer to **int32** |  | [optional] 
**PageSize** | Pointer to **int32** |  | [optional] 

## Methods

### NewGithubRepositories

`func NewGithubRepositories() *GithubRepositories`

NewGithubRepositories instantiates a new GithubRepositories object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGithubRepositoriesWithDefaults

`func NewGithubRepositoriesWithDefaults() *GithubRepositories`

NewGithubRepositoriesWithDefaults instantiates a new GithubRepositories object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *GithubRepositories) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *GithubRepositories) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *GithubRepositories) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *GithubRepositories) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *GithubRepositories) GetLinks() GithubRepositorieslinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *GithubRepositories) GetLinksOk() (*GithubRepositorieslinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *GithubRepositories) SetLinks(v GithubRepositorieslinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *GithubRepositories) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetItems

`func (o *GithubRepositories) GetItems() []GithubRepository`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *GithubRepositories) GetItemsOk() (*[]GithubRepository, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *GithubRepositories) SetItems(v []GithubRepository)`

SetItems sets Items field to given value.

### HasItems

`func (o *GithubRepositories) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetLastPage

`func (o *GithubRepositories) GetLastPage() int32`

GetLastPage returns the LastPage field if non-nil, zero value otherwise.

### GetLastPageOk

`func (o *GithubRepositories) GetLastPageOk() (*int32, bool)`

GetLastPageOk returns a tuple with the LastPage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastPage

`func (o *GithubRepositories) SetLastPage(v int32)`

SetLastPage sets LastPage field to given value.

### HasLastPage

`func (o *GithubRepositories) HasLastPage() bool`

HasLastPage returns a boolean if a field has been set.

### GetNextPage

`func (o *GithubRepositories) GetNextPage() int32`

GetNextPage returns the NextPage field if non-nil, zero value otherwise.

### GetNextPageOk

`func (o *GithubRepositories) GetNextPageOk() (*int32, bool)`

GetNextPageOk returns a tuple with the NextPage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextPage

`func (o *GithubRepositories) SetNextPage(v int32)`

SetNextPage sets NextPage field to given value.

### HasNextPage

`func (o *GithubRepositories) HasNextPage() bool`

HasNextPage returns a boolean if a field has been set.

### GetPageSize

`func (o *GithubRepositories) GetPageSize() int32`

GetPageSize returns the PageSize field if non-nil, zero value otherwise.

### GetPageSizeOk

`func (o *GithubRepositories) GetPageSizeOk() (*int32, bool)`

GetPageSizeOk returns a tuple with the PageSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPageSize

`func (o *GithubRepositories) SetPageSize(v int32)`

SetPageSize sets PageSize field to given value.

### HasPageSize

`func (o *GithubRepositories) HasPageSize() bool`

HasPageSize returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


