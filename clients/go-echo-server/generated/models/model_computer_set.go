package models

type ComputerSet struct {

	Class string `json:"_class,omitempty"`

	BusyExecutors int32 `json:"busyExecutors,omitempty"`

	Computer []HudsonMasterComputer `json:"computer,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	TotalExecutors int32 `json:"totalExecutors,omitempty"`
}
