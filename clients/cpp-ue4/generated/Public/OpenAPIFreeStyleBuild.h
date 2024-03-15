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
#include "OpenAPICauseAction.h"
#include "OpenAPIEmptyChangeLogSet.h"

namespace OpenAPI
{

/*
 * OpenAPIFreeStyleBuild
 *
 * 
 */
class OPENAPI_API OpenAPIFreeStyleBuild : public Model
{
public:
    virtual ~OpenAPIFreeStyleBuild() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<int32> Number;
	TOptional<FString> Url;
	TOptional<TArray<OpenAPICauseAction>> Actions;
	TOptional<bool> Building;
	TOptional<FString> Description;
	TOptional<FString> DisplayName;
	TOptional<int32> Duration;
	TOptional<int32> EstimatedDuration;
	TOptional<FString> Executor;
	TOptional<FString> FullDisplayName;
	TOptional<FString> Id;
	TOptional<bool> KeepLog;
	TOptional<int32> QueueId;
	TOptional<FString> Result;
	TOptional<int32> Timestamp;
	TOptional<FString> BuiltOn;
	TOptional<OpenAPIEmptyChangeLogSet> ChangeSet;
};

}
