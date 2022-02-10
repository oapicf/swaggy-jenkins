package models

type FavoriteImpl struct {

	Class string `json:"_class,omitempty"`

	Links FavoriteImpllinks `json:"_links,omitempty"`

	Item PipelineImpl `json:"item,omitempty"`
}
