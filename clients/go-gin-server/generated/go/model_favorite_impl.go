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

type FavoriteImpl struct {

	Class string `json:"_class,omitempty"`

	Links FavoriteImpllinks `json:"_links,omitempty"`

	Item PipelineImpl `json:"item,omitempty"`
}
