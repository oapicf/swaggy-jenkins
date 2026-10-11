# HudsonMasterComputermonitorData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HudsonNodeMonitorsSwapSpaceMonitor** | Pointer to [**SwapSpaceMonitorMemoryUsage2**](SwapSpaceMonitorMemoryUsage2.md) |  | [optional] 
**HudsonNodeMonitorsTemporarySpaceMonitor** | Pointer to [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**HudsonNodeMonitorsDiskSpaceMonitor** | Pointer to [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**HudsonNodeMonitorsArchitectureMonitor** | Pointer to **string** |  | [optional] 
**HudsonNodeMonitorsResponseTimeMonitor** | Pointer to [**ResponseTimeMonitorData**](ResponseTimeMonitorData.md) |  | [optional] 
**HudsonNodeMonitorsClockMonitor** | Pointer to [**ClockDifference**](ClockDifference.md) |  | [optional] 
**Class** | Pointer to **string** |  | [optional] 

## Methods

### NewHudsonMasterComputermonitorData

`func NewHudsonMasterComputermonitorData() *HudsonMasterComputermonitorData`

NewHudsonMasterComputermonitorData instantiates a new HudsonMasterComputermonitorData object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHudsonMasterComputermonitorDataWithDefaults

`func NewHudsonMasterComputermonitorDataWithDefaults() *HudsonMasterComputermonitorData`

NewHudsonMasterComputermonitorDataWithDefaults instantiates a new HudsonMasterComputermonitorData object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHudsonNodeMonitorsSwapSpaceMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsSwapSpaceMonitor() SwapSpaceMonitorMemoryUsage2`

GetHudsonNodeMonitorsSwapSpaceMonitor returns the HudsonNodeMonitorsSwapSpaceMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsSwapSpaceMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsSwapSpaceMonitorOk() (*SwapSpaceMonitorMemoryUsage2, bool)`

GetHudsonNodeMonitorsSwapSpaceMonitorOk returns a tuple with the HudsonNodeMonitorsSwapSpaceMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsSwapSpaceMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsSwapSpaceMonitor(v SwapSpaceMonitorMemoryUsage2)`

SetHudsonNodeMonitorsSwapSpaceMonitor sets HudsonNodeMonitorsSwapSpaceMonitor field to given value.

### HasHudsonNodeMonitorsSwapSpaceMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsSwapSpaceMonitor() bool`

HasHudsonNodeMonitorsSwapSpaceMonitor returns a boolean if a field has been set.

### GetHudsonNodeMonitorsTemporarySpaceMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsTemporarySpaceMonitor() DiskSpaceMonitorDescriptorDiskSpace`

GetHudsonNodeMonitorsTemporarySpaceMonitor returns the HudsonNodeMonitorsTemporarySpaceMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsTemporarySpaceMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsTemporarySpaceMonitorOk() (*DiskSpaceMonitorDescriptorDiskSpace, bool)`

GetHudsonNodeMonitorsTemporarySpaceMonitorOk returns a tuple with the HudsonNodeMonitorsTemporarySpaceMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsTemporarySpaceMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsTemporarySpaceMonitor(v DiskSpaceMonitorDescriptorDiskSpace)`

SetHudsonNodeMonitorsTemporarySpaceMonitor sets HudsonNodeMonitorsTemporarySpaceMonitor field to given value.

### HasHudsonNodeMonitorsTemporarySpaceMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsTemporarySpaceMonitor() bool`

HasHudsonNodeMonitorsTemporarySpaceMonitor returns a boolean if a field has been set.

### GetHudsonNodeMonitorsDiskSpaceMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsDiskSpaceMonitor() DiskSpaceMonitorDescriptorDiskSpace`

GetHudsonNodeMonitorsDiskSpaceMonitor returns the HudsonNodeMonitorsDiskSpaceMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsDiskSpaceMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsDiskSpaceMonitorOk() (*DiskSpaceMonitorDescriptorDiskSpace, bool)`

GetHudsonNodeMonitorsDiskSpaceMonitorOk returns a tuple with the HudsonNodeMonitorsDiskSpaceMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsDiskSpaceMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsDiskSpaceMonitor(v DiskSpaceMonitorDescriptorDiskSpace)`

SetHudsonNodeMonitorsDiskSpaceMonitor sets HudsonNodeMonitorsDiskSpaceMonitor field to given value.

### HasHudsonNodeMonitorsDiskSpaceMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsDiskSpaceMonitor() bool`

HasHudsonNodeMonitorsDiskSpaceMonitor returns a boolean if a field has been set.

### GetHudsonNodeMonitorsArchitectureMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsArchitectureMonitor() string`

GetHudsonNodeMonitorsArchitectureMonitor returns the HudsonNodeMonitorsArchitectureMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsArchitectureMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsArchitectureMonitorOk() (*string, bool)`

GetHudsonNodeMonitorsArchitectureMonitorOk returns a tuple with the HudsonNodeMonitorsArchitectureMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsArchitectureMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsArchitectureMonitor(v string)`

SetHudsonNodeMonitorsArchitectureMonitor sets HudsonNodeMonitorsArchitectureMonitor field to given value.

### HasHudsonNodeMonitorsArchitectureMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsArchitectureMonitor() bool`

HasHudsonNodeMonitorsArchitectureMonitor returns a boolean if a field has been set.

### GetHudsonNodeMonitorsResponseTimeMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsResponseTimeMonitor() ResponseTimeMonitorData`

GetHudsonNodeMonitorsResponseTimeMonitor returns the HudsonNodeMonitorsResponseTimeMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsResponseTimeMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsResponseTimeMonitorOk() (*ResponseTimeMonitorData, bool)`

GetHudsonNodeMonitorsResponseTimeMonitorOk returns a tuple with the HudsonNodeMonitorsResponseTimeMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsResponseTimeMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsResponseTimeMonitor(v ResponseTimeMonitorData)`

SetHudsonNodeMonitorsResponseTimeMonitor sets HudsonNodeMonitorsResponseTimeMonitor field to given value.

### HasHudsonNodeMonitorsResponseTimeMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsResponseTimeMonitor() bool`

HasHudsonNodeMonitorsResponseTimeMonitor returns a boolean if a field has been set.

### GetHudsonNodeMonitorsClockMonitor

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsClockMonitor() ClockDifference`

GetHudsonNodeMonitorsClockMonitor returns the HudsonNodeMonitorsClockMonitor field if non-nil, zero value otherwise.

### GetHudsonNodeMonitorsClockMonitorOk

`func (o *HudsonMasterComputermonitorData) GetHudsonNodeMonitorsClockMonitorOk() (*ClockDifference, bool)`

GetHudsonNodeMonitorsClockMonitorOk returns a tuple with the HudsonNodeMonitorsClockMonitor field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHudsonNodeMonitorsClockMonitor

`func (o *HudsonMasterComputermonitorData) SetHudsonNodeMonitorsClockMonitor(v ClockDifference)`

SetHudsonNodeMonitorsClockMonitor sets HudsonNodeMonitorsClockMonitor field to given value.

### HasHudsonNodeMonitorsClockMonitor

`func (o *HudsonMasterComputermonitorData) HasHudsonNodeMonitorsClockMonitor() bool`

HasHudsonNodeMonitorsClockMonitor returns a boolean if a field has been set.

### GetClass

`func (o *HudsonMasterComputermonitorData) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *HudsonMasterComputermonitorData) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *HudsonMasterComputermonitorData) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *HudsonMasterComputermonitorData) HasClass() bool`

HasClass returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


