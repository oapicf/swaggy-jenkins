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

type GithubRepositorypermissions struct {

	Admin bool `json:"admin,omitempty"`

	Push bool `json:"push,omitempty"`

	Pull bool `json:"pull,omitempty"`

	Class string `json:"_class,omitempty"`
}
