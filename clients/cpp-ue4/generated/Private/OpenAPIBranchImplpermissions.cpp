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

#include "OpenAPIBranchImplpermissions.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIBranchImplpermissions::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (Create.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("create")); WriteJsonValue(Writer, Create.GetValue());
	}
	if (Read.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("read")); WriteJsonValue(Writer, Read.GetValue());
	}
	if (Start.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("start")); WriteJsonValue(Writer, Start.GetValue());
	}
	if (Stop.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("stop")); WriteJsonValue(Writer, Stop.GetValue());
	}
	if (_Class.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("_class")); WriteJsonValue(Writer, _Class.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIBranchImplpermissions::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("create"), Create);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("read"), Read);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("start"), Start);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("stop"), Stop);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("_class"), _Class);

	return ParseSuccess;
}

}
