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
#include "OpenAPIStringParameterValue.h"

namespace OpenAPI
{

/*
 * OpenAPIStringParameterDefinition
 *
 * 
 */
class OPENAPI_API OpenAPIStringParameterDefinition : public Model
{
public:
    virtual ~OpenAPIStringParameterDefinition() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<OpenAPIStringParameterValue> DefaultParameterValue;
	TOptional<FString> Description;
	TOptional<FString> Name;
	TOptional<FString> Type;
};

}
