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
#include "OpenAPIQueueBlockedItem.h"

namespace OpenAPI
{

/*
 * OpenAPIQueue
 *
 * 
 */
class OPENAPI_API OpenAPIQueue : public Model
{
public:
    virtual ~OpenAPIQueue() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<TArray<OpenAPIQueueBlockedItem>> Items;
};

}
