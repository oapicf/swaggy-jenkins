/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#pragma once

#include "OpenAPIBaseModel.h"

namespace OpenAPI
{

/*
 * OpenAPIGithubContent
 *
 * 
 */
class OPENAPI_API OpenAPIGithubContent : public Model
{
public:
    virtual ~OpenAPIGithubContent() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> Name;
	TOptional<FString> Sha;
	TOptional<FString> _Class;
	TOptional<FString> Repo;
	TOptional<int32> Size;
	TOptional<FString> Owner;
	TOptional<FString> Path;
	TOptional<FString> Base64Data;
};

}
