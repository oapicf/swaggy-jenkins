/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * API version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package main

import (
	"log"
	"net/http"

	openapi "github.com/GIT_USER_ID/GIT_REPO_ID/go"
)

func main() {
	log.Printf("Server started")

	BaseApiService := openapi.NewBaseApiService()
	BaseApiController := openapi.NewBaseApiController(BaseApiService)

	BlueOceanApiService := openapi.NewBlueOceanApiService()
	BlueOceanApiController := openapi.NewBlueOceanApiController(BlueOceanApiService)

	RemoteAccessApiService := openapi.NewRemoteAccessApiService()
	RemoteAccessApiController := openapi.NewRemoteAccessApiController(RemoteAccessApiService)

	router := openapi.NewRouter(BaseApiController, BlueOceanApiController, RemoteAccessApiController)

	log.Fatal(http.ListenAndServe(":8080", router))
}
