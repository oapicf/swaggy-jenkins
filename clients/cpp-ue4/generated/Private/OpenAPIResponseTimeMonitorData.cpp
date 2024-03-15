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

#include "OpenAPIResponseTimeMonitorData.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIResponseTimeMonitorData::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (_Class.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("_class")); WriteJsonValue(Writer, _Class.GetValue());
	}
	if (Timestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("timestamp")); WriteJsonValue(Writer, Timestamp.GetValue());
	}
	if (Average.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("average")); WriteJsonValue(Writer, Average.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIResponseTimeMonitorData::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("_class"), _Class);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("timestamp"), Timestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("average"), Average);

	return ParseSuccess;
}

}
