# Queue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**Items** | Pointer to [**[]QueueBlockedItem**](QueueBlockedItem.md) |  | [optional] 

## Methods

### NewQueue

`func NewQueue() *Queue`

NewQueue instantiates a new Queue object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewQueueWithDefaults

`func NewQueueWithDefaults() *Queue`

NewQueueWithDefaults instantiates a new Queue object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *Queue) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *Queue) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *Queue) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *Queue) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetItems

`func (o *Queue) GetItems() []QueueBlockedItem`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *Queue) GetItemsOk() (*[]QueueBlockedItem, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *Queue) SetItems(v []QueueBlockedItem)`

SetItems sets Items field to given value.

### HasItems

`func (o *Queue) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


