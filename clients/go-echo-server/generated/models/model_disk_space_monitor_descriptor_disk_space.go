package models

type DiskSpaceMonitorDescriptorDiskSpace struct {

	Class string `json:"_class,omitempty"`

	Timestamp int32 `json:"timestamp,omitempty"`

	Path string `json:"path,omitempty"`

	Size int32 `json:"size,omitempty"`
}
