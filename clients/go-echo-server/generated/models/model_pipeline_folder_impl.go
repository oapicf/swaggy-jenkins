package models

type PipelineFolderImpl struct {

	Class string `json:"_class,omitempty"`

	DisplayName string `json:"displayName,omitempty"`

	FullName string `json:"fullName,omitempty"`

	Name string `json:"name,omitempty"`

	Organization string `json:"organization,omitempty"`

	NumberOfFolders int32 `json:"numberOfFolders,omitempty"`

	NumberOfPipelines int32 `json:"numberOfPipelines,omitempty"`
}
