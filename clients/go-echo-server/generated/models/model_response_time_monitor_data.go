package models

type ResponseTimeMonitorData struct {

	Class string `json:"_class,omitempty"`

	Timestamp int32 `json:"timestamp,omitempty"`

	Average int32 `json:"average,omitempty"`
}
