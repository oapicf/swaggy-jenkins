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
#include "OpenAPICauseAction.h"
#include "OpenAPIFreeStyleBuild.h"
#include "OpenAPIFreeStyleProject.h"

namespace OpenAPI
{

/*
 * OpenAPIQueueLeftItem
 *
 * 
 */
class OPENAPI_API OpenAPIQueueLeftItem : public Model
{
public:
    virtual ~OpenAPIQueueLeftItem() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<TArray<OpenAPICauseAction>> Actions;
	TOptional<bool> Blocked;
	TOptional<bool> Buildable;
	TOptional<int32> Id;
	TOptional<int32> InQueueSince;
	TOptional<FString> Params;
	TOptional<bool> Stuck;
	TOptional<OpenAPIFreeStyleProject> Task;
	TOptional<FString> Url;
	TOptional<FString> Why;
	TOptional<bool> Cancelled;
	TOptional<OpenAPIFreeStyleBuild> Executable;
};

}
