package models

type PipelineImpl struct {

	Class string `json:"_class,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	EstimatedDurationInMillis int32 `json:"estimatedDurationInMillis,omitempty"`

	FullName string `json:"fullName,omitempty"`

	LatestRun string `json:"latestRun,omitempty"`

	Name string `json:"name,omitempty"`

	Organization string `json:"organization,omitempty"`

	WeatherScore int32 `json:"weatherScore,omitempty"`

	Links PipelineImpllinks `json:"_links,omitempty"`
}
