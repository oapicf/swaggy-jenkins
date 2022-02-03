# GithubRepository

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**GithubRepositorylinks**](GithubRepositorylinks.md) |  | [optional] 
**DefaultBranch** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Permissions** | Pointer to [**GithubRepositorypermissions**](GithubRepositorypermissions.md) |  | [optional] 
**Private** | Pointer to **bool** |  | [optional] 
**FullName** | Pointer to **string** |  | [optional] 

## Methods

### NewGithubRepository

`func NewGithubRepository() *GithubRepository`

NewGithubRepository instantiates a new GithubRepository object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGithubRepositoryWithDefaults

`func NewGithubRepositoryWithDefaults() *GithubRepository`

NewGithubRepositoryWithDefaults instantiates a new GithubRepository object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *GithubRepository) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *GithubRepository) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *GithubRepository) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *GithubRepository) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *GithubRepository) GetLinks() GithubRepositorylinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *GithubRepository) GetLinksOk() (*GithubRepositorylinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *GithubRepository) SetLinks(v GithubRepositorylinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *GithubRepository) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetDefaultBranch

`func (o *GithubRepository) GetDefaultBranch() string`

GetDefaultBranch returns the DefaultBranch field if non-nil, zero value otherwise.

### GetDefaultBranchOk

`func (o *GithubRepository) GetDefaultBranchOk() (*string, bool)`

GetDefaultBranchOk returns a tuple with the DefaultBranch field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefaultBranch

`func (o *GithubRepository) SetDefaultBranch(v string)`

SetDefaultBranch sets DefaultBranch field to given value.

### HasDefaultBranch

`func (o *GithubRepository) HasDefaultBranch() bool`

HasDefaultBranch returns a boolean if a field has been set.

### GetDescription

`func (o *GithubRepository) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *GithubRepository) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *GithubRepository) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *GithubRepository) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetName

`func (o *GithubRepository) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *GithubRepository) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *GithubRepository) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *GithubRepository) HasName() bool`

HasName returns a boolean if a field has been set.

### GetPermissions

`func (o *GithubRepository) GetPermissions() GithubRepositorypermissions`

GetPermissions returns the Permissions field if non-nil, zero value otherwise.

### GetPermissionsOk

`func (o *GithubRepository) GetPermissionsOk() (*GithubRepositorypermissions, bool)`

GetPermissionsOk returns a tuple with the Permissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPermissions

`func (o *GithubRepository) SetPermissions(v GithubRepositorypermissions)`

SetPermissions sets Permissions field to given value.

### HasPermissions

`func (o *GithubRepository) HasPermissions() bool`

HasPermissions returns a boolean if a field has been set.

### GetPrivate

`func (o *GithubRepository) GetPrivate() bool`

GetPrivate returns the Private field if non-nil, zero value otherwise.

### GetPrivateOk

`func (o *GithubRepository) GetPrivateOk() (*bool, bool)`

GetPrivateOk returns a tuple with the Private field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrivate

`func (o *GithubRepository) SetPrivate(v bool)`

SetPrivate sets Private field to given value.

### HasPrivate

`func (o *GithubRepository) HasPrivate() bool`

HasPrivate returns a boolean if a field has been set.

### GetFullName

`func (o *GithubRepository) GetFullName() string`

GetFullName returns the FullName field if non-nil, zero value otherwise.

### GetFullNameOk

`func (o *GithubRepository) GetFullNameOk() (*string, bool)`

GetFullNameOk returns a tuple with the FullName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFullName

`func (o *GithubRepository) SetFullName(v string)`

SetFullName sets FullName field to given value.

### HasFullName

`func (o *GithubRepository) HasFullName() bool`

HasFullName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


