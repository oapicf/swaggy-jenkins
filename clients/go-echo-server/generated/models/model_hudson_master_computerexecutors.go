package models

type HudsonMasterComputerexecutors struct {

	CurrentExecutable FreeStyleBuild `json:"currentExecutable,omitempty"`

	Idle bool `json:"idle,omitempty"`

	LikelyStuck bool `json:"likelyStuck,omitempty"`

	Number int32 `json:"number,omitempty"`

	Progress int32 `json:"progress,omitempty"`

	Class string `json:"_class,omitempty"`
}
