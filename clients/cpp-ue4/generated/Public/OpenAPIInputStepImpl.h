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
#include "OpenAPIInputStepImpllinks.h"
#include "OpenAPIStringParameterDefinition.h"

namespace OpenAPI
{

/*
 * OpenAPIInputStepImpl
 *
 * 
 */
class OPENAPI_API OpenAPIInputStepImpl : public Model
{
public:
    virtual ~OpenAPIInputStepImpl() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<OpenAPIInputStepImpllinks> Links;
	TOptional<FString> Id;
	TOptional<FString> Message;
	TOptional<FString> Ok;
	TOptional<TArray<OpenAPIStringParameterDefinition>> Parameters;
	TOptional<FString> Submitter;
};

}
