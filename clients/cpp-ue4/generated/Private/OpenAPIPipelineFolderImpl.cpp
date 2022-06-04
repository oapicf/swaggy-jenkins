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

#include "OpenAPIPipelineFolderImpl.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIPipelineFolderImpl::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (_Class.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("_class")); WriteJsonValue(Writer, _Class.GetValue());
	}
	if (DisplayName.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("displayName")); WriteJsonValue(Writer, DisplayName.GetValue());
	}
	if (FullName.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("fullName")); WriteJsonValue(Writer, FullName.GetValue());
	}
	if (Name.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("name")); WriteJsonValue(Writer, Name.GetValue());
	}
	if (Organization.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("organization")); WriteJsonValue(Writer, Organization.GetValue());
	}
	if (NumberOfFolders.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("numberOfFolders")); WriteJsonValue(Writer, NumberOfFolders.GetValue());
	}
	if (NumberOfPipelines.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("numberOfPipelines")); WriteJsonValue(Writer, NumberOfPipelines.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIPipelineFolderImpl::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("_class"), _Class);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("displayName"), DisplayName);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("fullName"), FullName);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("name"), Name);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("organization"), Organization);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("numberOfFolders"), NumberOfFolders);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("numberOfPipelines"), NumberOfPipelines);

	return ParseSuccess;
}

}
