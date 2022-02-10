package models

type SwapSpaceMonitorMemoryUsage2 struct {

	Class string `json:"_class,omitempty"`

	AvailablePhysicalMemory int32 `json:"availablePhysicalMemory,omitempty"`

	AvailableSwapSpace int32 `json:"availableSwapSpace,omitempty"`

	TotalPhysicalMemory int32 `json:"totalPhysicalMemory,omitempty"`

	TotalSwapSpace int32 `json:"totalSwapSpace,omitempty"`
}
