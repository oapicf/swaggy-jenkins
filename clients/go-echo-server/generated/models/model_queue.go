package models

type Queue struct {

	Class string `json:"_class,omitempty"`

	Items []QueueBlockedItem `json:"items,omitempty"`
}
