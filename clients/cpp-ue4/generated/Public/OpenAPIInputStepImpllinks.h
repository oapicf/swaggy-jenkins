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
#include "OpenAPILink.h"

namespace OpenAPI
{

/*
 * OpenAPIInputStepImpllinks
 *
 * 
 */
class OPENAPI_API OpenAPIInputStepImpllinks : public Model
{
public:
    virtual ~OpenAPIInputStepImpllinks() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<OpenAPILink> Self;
	TOptional<FString> _Class;
};

}
