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
 * OpenAPISwapSpaceMonitorMemoryUsage2
 *
 * 
 */
class OPENAPI_API OpenAPISwapSpaceMonitorMemoryUsage2 : public Model
{
public:
    virtual ~OpenAPISwapSpaceMonitorMemoryUsage2() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	TOptional<FString> _Class;
	TOptional<int32> AvailablePhysicalMemory;
	TOptional<int32> AvailableSwapSpace;
	TOptional<int32> TotalPhysicalMemory;
	TOptional<int32> TotalSwapSpace;
};

}
