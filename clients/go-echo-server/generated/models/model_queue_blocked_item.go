package models

type QueueBlockedItem struct {

	Class string `json:"_class,omitempty"`

	Actions []CauseAction `json:"actions,omitempty"`

	Blocked bool `json:"blocked,omitempty"`

	Buildable bool `json:"buildable,omitempty"`

	Id int32 `json:"id,omitempty"`

	InQueueSince int32 `json:"inQueueSince,omitempty"`

	Params string `json:"params,omitempty"`

	Stuck bool `json:"stuck,omitempty"`

	Task FreeStyleProject `json:"task,omitempty"`

	Url string `json:"url,omitempty"`

	Why string `json:"why,omitempty"`

	BuildableStartMilliseconds int32 `json:"buildableStartMilliseconds,omitempty"`
}
