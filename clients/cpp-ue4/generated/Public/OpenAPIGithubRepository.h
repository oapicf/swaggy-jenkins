/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#pragma once

#include "OpenAPIBaseModel.h"
#include "OpenAPIGithubRepositorylinks.h"
#include "OpenAPIGithubRepositorypermissions.h"

namespace OpenAPI
{

/*
 * OpenAPIGithubRepository
 *
 * 
 */
class OPENAPI_API OpenAPIGithubRepository : public Model
{
public:
    virtual ~OpenAPIGithubRepository() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<OpenAPIGithubRepositorylinks> Links;
	TOptional<FString> DefaultBranch;
	TOptional<FString> Description;
	TOptional<FString> Name;
	TOptional<OpenAPIGithubRepositorypermissions> Permissions;
	TOptional<bool> _Private;
	TOptional<FString> FullName;
};

}
