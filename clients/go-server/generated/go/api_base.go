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

import (
	"encoding/json"
	"net/http"
	"strings"

	"github.com/gorilla/mux"
)

// BaseAPIController binds http requests to an api service and writes the service results to the http response
type BaseAPIController struct {
	service BaseAPIServicer
	errorHandler ErrorHandler
}

// BaseAPIOption for how the controller is set up.
type BaseAPIOption func(*BaseAPIController)

// WithBaseAPIErrorHandler inject ErrorHandler into controller
func WithBaseAPIErrorHandler(h ErrorHandler) BaseAPIOption {
	return func(c *BaseAPIController) {
		c.errorHandler = h
	}
}

// NewBaseAPIController creates a default api controller
func NewBaseAPIController(s BaseAPIServicer, opts ...BaseAPIOption) Router {
	controller := &BaseAPIController{
		service:      s,
		errorHandler: DefaultErrorHandler,
	}

	for _, opt := range opts {
		opt(controller)
	}

	return controller
}

// Routes returns all the api routes for the BaseAPIController
func (c *BaseAPIController) Routes() Routes {
	return Routes{
		"GetCrumb": Route{
			strings.ToUpper("Get"),
			"/crumbIssuer/api/json",
			c.GetCrumb,
		},
	}
}

// GetCrumb - 
func (c *BaseAPIController) GetCrumb(w http.ResponseWriter, r *http.Request) {
	result, err := c.service.GetCrumb(r.Context())
	// If an error occurred, encode the error with the status code
	if err != nil {
		c.errorHandler(w, r, err, &result)
		return
	}
	// If no error, encode the body and the result code
	EncodeJSONResponse(result.Body, &result.Code, w)
}
