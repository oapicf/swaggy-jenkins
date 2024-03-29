/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi




type HudsonMasterComputerexecutors struct {

	CurrentExecutable FreeStyleBuild `json:"currentExecutable,omitempty"`

	Idle bool `json:"idle,omitempty"`

	LikelyStuck bool `json:"likelyStuck,omitempty"`

	Number int32 `json:"number,omitempty"`

	Progress int32 `json:"progress,omitempty"`

	Class string `json:"_class,omitempty"`
}

// AssertHudsonMasterComputerexecutorsRequired checks if the required fields are not zero-ed
func AssertHudsonMasterComputerexecutorsRequired(obj HudsonMasterComputerexecutors) error {
	if err := AssertFreeStyleBuildRequired(obj.CurrentExecutable); err != nil {
		return err
	}
	return nil
}

// AssertHudsonMasterComputerexecutorsConstraints checks if the values respects the defined constraints
func AssertHudsonMasterComputerexecutorsConstraints(obj HudsonMasterComputerexecutors) error {
	return nil
}
