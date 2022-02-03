# FavoriteImpl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Links** | Pointer to [**FavoriteImpllinks**](FavoriteImpllinks.md) |  | [optional] 
**Item** | Pointer to [**PipelineImpl**](PipelineImpl.md) |  | [optional] 

## Methods

### NewFavoriteImpl

`func NewFavoriteImpl() *FavoriteImpl`

NewFavoriteImpl instantiates a new FavoriteImpl object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFavoriteImplWithDefaults

`func NewFavoriteImplWithDefaults() *FavoriteImpl`

NewFavoriteImplWithDefaults instantiates a new FavoriteImpl object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *FavoriteImpl) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *FavoriteImpl) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *FavoriteImpl) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *FavoriteImpl) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetLinks

`func (o *FavoriteImpl) GetLinks() FavoriteImpllinks`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *FavoriteImpl) GetLinksOk() (*FavoriteImpllinks, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *FavoriteImpl) SetLinks(v FavoriteImpllinks)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *FavoriteImpl) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetItem

`func (o *FavoriteImpl) GetItem() PipelineImpl`

GetItem returns the Item field if non-nil, zero value otherwise.

### GetItemOk

`func (o *FavoriteImpl) GetItemOk() (*PipelineImpl, bool)`

GetItemOk returns a tuple with the Item field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItem

`func (o *FavoriteImpl) SetItem(v PipelineImpl)`

SetItem sets Item field to given value.

### HasItem

`func (o *FavoriteImpl) HasItem() bool`

HasItem returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


