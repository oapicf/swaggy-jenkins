# HudsonMasterComputer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | Pointer to **string** |  | [optional] 
**DisplayName** | Pointer to **string** |  | [optional] 
**Executors** | Pointer to [**[]HudsonMasterComputerexecutors**](HudsonMasterComputerexecutors.md) |  | [optional] 
**Icon** | Pointer to **string** |  | [optional] 
**IconClassName** | Pointer to **string** |  | [optional] 
**Idle** | Pointer to **bool** |  | [optional] 
**JnlpAgent** | Pointer to **bool** |  | [optional] 
**LaunchSupported** | Pointer to **bool** |  | [optional] 
**LoadStatistics** | Pointer to [**Label1**](Label1.md) |  | [optional] 
**ManualLaunchAllowed** | Pointer to **bool** |  | [optional] 
**MonitorData** | Pointer to [**HudsonMasterComputermonitorData**](HudsonMasterComputermonitorData.md) |  | [optional] 
**NumExecutors** | Pointer to **int32** |  | [optional] 
**Offline** | Pointer to **bool** |  | [optional] 
**OfflineCause** | Pointer to **string** |  | [optional] 
**OfflineCauseReason** | Pointer to **string** |  | [optional] 
**TemporarilyOffline** | Pointer to **bool** |  | [optional] 

## Methods

### NewHudsonMasterComputer

`func NewHudsonMasterComputer() *HudsonMasterComputer`

NewHudsonMasterComputer instantiates a new HudsonMasterComputer object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHudsonMasterComputerWithDefaults

`func NewHudsonMasterComputerWithDefaults() *HudsonMasterComputer`

NewHudsonMasterComputerWithDefaults instantiates a new HudsonMasterComputer object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetClass

`func (o *HudsonMasterComputer) GetClass() string`

GetClass returns the Class field if non-nil, zero value otherwise.

### GetClassOk

`func (o *HudsonMasterComputer) GetClassOk() (*string, bool)`

GetClassOk returns a tuple with the Class field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClass

`func (o *HudsonMasterComputer) SetClass(v string)`

SetClass sets Class field to given value.

### HasClass

`func (o *HudsonMasterComputer) HasClass() bool`

HasClass returns a boolean if a field has been set.

### GetDisplayName

`func (o *HudsonMasterComputer) GetDisplayName() string`

GetDisplayName returns the DisplayName field if non-nil, zero value otherwise.

### GetDisplayNameOk

`func (o *HudsonMasterComputer) GetDisplayNameOk() (*string, bool)`

GetDisplayNameOk returns a tuple with the DisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayName

`func (o *HudsonMasterComputer) SetDisplayName(v string)`

SetDisplayName sets DisplayName field to given value.

### HasDisplayName

`func (o *HudsonMasterComputer) HasDisplayName() bool`

HasDisplayName returns a boolean if a field has been set.

### GetExecutors

`func (o *HudsonMasterComputer) GetExecutors() []HudsonMasterComputerexecutors`

GetExecutors returns the Executors field if non-nil, zero value otherwise.

### GetExecutorsOk

`func (o *HudsonMasterComputer) GetExecutorsOk() (*[]HudsonMasterComputerexecutors, bool)`

GetExecutorsOk returns a tuple with the Executors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutors

`func (o *HudsonMasterComputer) SetExecutors(v []HudsonMasterComputerexecutors)`

SetExecutors sets Executors field to given value.

### HasExecutors

`func (o *HudsonMasterComputer) HasExecutors() bool`

HasExecutors returns a boolean if a field has been set.

### GetIcon

`func (o *HudsonMasterComputer) GetIcon() string`

GetIcon returns the Icon field if non-nil, zero value otherwise.

### GetIconOk

`func (o *HudsonMasterComputer) GetIconOk() (*string, bool)`

GetIconOk returns a tuple with the Icon field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIcon

`func (o *HudsonMasterComputer) SetIcon(v string)`

SetIcon sets Icon field to given value.

### HasIcon

`func (o *HudsonMasterComputer) HasIcon() bool`

HasIcon returns a boolean if a field has been set.

### GetIconClassName

`func (o *HudsonMasterComputer) GetIconClassName() string`

GetIconClassName returns the IconClassName field if non-nil, zero value otherwise.

### GetIconClassNameOk

`func (o *HudsonMasterComputer) GetIconClassNameOk() (*string, bool)`

GetIconClassNameOk returns a tuple with the IconClassName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIconClassName

`func (o *HudsonMasterComputer) SetIconClassName(v string)`

SetIconClassName sets IconClassName field to given value.

### HasIconClassName

`func (o *HudsonMasterComputer) HasIconClassName() bool`

HasIconClassName returns a boolean if a field has been set.

### GetIdle

`func (o *HudsonMasterComputer) GetIdle() bool`

GetIdle returns the Idle field if non-nil, zero value otherwise.

### GetIdleOk

`func (o *HudsonMasterComputer) GetIdleOk() (*bool, bool)`

GetIdleOk returns a tuple with the Idle field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdle

`func (o *HudsonMasterComputer) SetIdle(v bool)`

SetIdle sets Idle field to given value.

### HasIdle

`func (o *HudsonMasterComputer) HasIdle() bool`

HasIdle returns a boolean if a field has been set.

### GetJnlpAgent

`func (o *HudsonMasterComputer) GetJnlpAgent() bool`

GetJnlpAgent returns the JnlpAgent field if non-nil, zero value otherwise.

### GetJnlpAgentOk

`func (o *HudsonMasterComputer) GetJnlpAgentOk() (*bool, bool)`

GetJnlpAgentOk returns a tuple with the JnlpAgent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJnlpAgent

`func (o *HudsonMasterComputer) SetJnlpAgent(v bool)`

SetJnlpAgent sets JnlpAgent field to given value.

### HasJnlpAgent

`func (o *HudsonMasterComputer) HasJnlpAgent() bool`

HasJnlpAgent returns a boolean if a field has been set.

### GetLaunchSupported

`func (o *HudsonMasterComputer) GetLaunchSupported() bool`

GetLaunchSupported returns the LaunchSupported field if non-nil, zero value otherwise.

### GetLaunchSupportedOk

`func (o *HudsonMasterComputer) GetLaunchSupportedOk() (*bool, bool)`

GetLaunchSupportedOk returns a tuple with the LaunchSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLaunchSupported

`func (o *HudsonMasterComputer) SetLaunchSupported(v bool)`

SetLaunchSupported sets LaunchSupported field to given value.

### HasLaunchSupported

`func (o *HudsonMasterComputer) HasLaunchSupported() bool`

HasLaunchSupported returns a boolean if a field has been set.

### GetLoadStatistics

`func (o *HudsonMasterComputer) GetLoadStatistics() Label1`

GetLoadStatistics returns the LoadStatistics field if non-nil, zero value otherwise.

### GetLoadStatisticsOk

`func (o *HudsonMasterComputer) GetLoadStatisticsOk() (*Label1, bool)`

GetLoadStatisticsOk returns a tuple with the LoadStatistics field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLoadStatistics

`func (o *HudsonMasterComputer) SetLoadStatistics(v Label1)`

SetLoadStatistics sets LoadStatistics field to given value.

### HasLoadStatistics

`func (o *HudsonMasterComputer) HasLoadStatistics() bool`

HasLoadStatistics returns a boolean if a field has been set.

### GetManualLaunchAllowed

`func (o *HudsonMasterComputer) GetManualLaunchAllowed() bool`

GetManualLaunchAllowed returns the ManualLaunchAllowed field if non-nil, zero value otherwise.

### GetManualLaunchAllowedOk

`func (o *HudsonMasterComputer) GetManualLaunchAllowedOk() (*bool, bool)`

GetManualLaunchAllowedOk returns a tuple with the ManualLaunchAllowed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetManualLaunchAllowed

`func (o *HudsonMasterComputer) SetManualLaunchAllowed(v bool)`

SetManualLaunchAllowed sets ManualLaunchAllowed field to given value.

### HasManualLaunchAllowed

`func (o *HudsonMasterComputer) HasManualLaunchAllowed() bool`

HasManualLaunchAllowed returns a boolean if a field has been set.

### GetMonitorData

`func (o *HudsonMasterComputer) GetMonitorData() HudsonMasterComputermonitorData`

GetMonitorData returns the MonitorData field if non-nil, zero value otherwise.

### GetMonitorDataOk

`func (o *HudsonMasterComputer) GetMonitorDataOk() (*HudsonMasterComputermonitorData, bool)`

GetMonitorDataOk returns a tuple with the MonitorData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMonitorData

`func (o *HudsonMasterComputer) SetMonitorData(v HudsonMasterComputermonitorData)`

SetMonitorData sets MonitorData field to given value.

### HasMonitorData

`func (o *HudsonMasterComputer) HasMonitorData() bool`

HasMonitorData returns a boolean if a field has been set.

### GetNumExecutors

`func (o *HudsonMasterComputer) GetNumExecutors() int32`

GetNumExecutors returns the NumExecutors field if non-nil, zero value otherwise.

### GetNumExecutorsOk

`func (o *HudsonMasterComputer) GetNumExecutorsOk() (*int32, bool)`

GetNumExecutorsOk returns a tuple with the NumExecutors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumExecutors

`func (o *HudsonMasterComputer) SetNumExecutors(v int32)`

SetNumExecutors sets NumExecutors field to given value.

### HasNumExecutors

`func (o *HudsonMasterComputer) HasNumExecutors() bool`

HasNumExecutors returns a boolean if a field has been set.

### GetOffline

`func (o *HudsonMasterComputer) GetOffline() bool`

GetOffline returns the Offline field if non-nil, zero value otherwise.

### GetOfflineOk

`func (o *HudsonMasterComputer) GetOfflineOk() (*bool, bool)`

GetOfflineOk returns a tuple with the Offline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffline

`func (o *HudsonMasterComputer) SetOffline(v bool)`

SetOffline sets Offline field to given value.

### HasOffline

`func (o *HudsonMasterComputer) HasOffline() bool`

HasOffline returns a boolean if a field has been set.

### GetOfflineCause

`func (o *HudsonMasterComputer) GetOfflineCause() string`

GetOfflineCause returns the OfflineCause field if non-nil, zero value otherwise.

### GetOfflineCauseOk

`func (o *HudsonMasterComputer) GetOfflineCauseOk() (*string, bool)`

GetOfflineCauseOk returns a tuple with the OfflineCause field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfflineCause

`func (o *HudsonMasterComputer) SetOfflineCause(v string)`

SetOfflineCause sets OfflineCause field to given value.

### HasOfflineCause

`func (o *HudsonMasterComputer) HasOfflineCause() bool`

HasOfflineCause returns a boolean if a field has been set.

### GetOfflineCauseReason

`func (o *HudsonMasterComputer) GetOfflineCauseReason() string`

GetOfflineCauseReason returns the OfflineCauseReason field if non-nil, zero value otherwise.

### GetOfflineCauseReasonOk

`func (o *HudsonMasterComputer) GetOfflineCauseReasonOk() (*string, bool)`

GetOfflineCauseReasonOk returns a tuple with the OfflineCauseReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfflineCauseReason

`func (o *HudsonMasterComputer) SetOfflineCauseReason(v string)`

SetOfflineCauseReason sets OfflineCauseReason field to given value.

### HasOfflineCauseReason

`func (o *HudsonMasterComputer) HasOfflineCauseReason() bool`

HasOfflineCauseReason returns a boolean if a field has been set.

### GetTemporarilyOffline

`func (o *HudsonMasterComputer) GetTemporarilyOffline() bool`

GetTemporarilyOffline returns the TemporarilyOffline field if non-nil, zero value otherwise.

### GetTemporarilyOfflineOk

`func (o *HudsonMasterComputer) GetTemporarilyOfflineOk() (*bool, bool)`

GetTemporarilyOfflineOk returns a tuple with the TemporarilyOffline field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemporarilyOffline

`func (o *HudsonMasterComputer) SetTemporarilyOffline(v bool)`

SetTemporarilyOffline sets TemporarilyOffline field to given value.

### HasTemporarilyOffline

`func (o *HudsonMasterComputer) HasTemporarilyOffline() bool`

HasTemporarilyOffline returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


