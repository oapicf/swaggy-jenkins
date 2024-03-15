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

#include "OpenAPIPipelineBranchesitemlatestRun.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIPipelineBranchesitemlatestRun::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (DurationInMillis.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("durationInMillis")); WriteJsonValue(Writer, DurationInMillis.GetValue());
	}
	if (EstimatedDurationInMillis.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("estimatedDurationInMillis")); WriteJsonValue(Writer, EstimatedDurationInMillis.GetValue());
	}
	if (EnQueueTime.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("enQueueTime")); WriteJsonValue(Writer, EnQueueTime.GetValue());
	}
	if (EndTime.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("endTime")); WriteJsonValue(Writer, EndTime.GetValue());
	}
	if (Id.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("id")); WriteJsonValue(Writer, Id.GetValue());
	}
	if (Organization.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("organization")); WriteJsonValue(Writer, Organization.GetValue());
	}
	if (Pipeline.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("pipeline")); WriteJsonValue(Writer, Pipeline.GetValue());
	}
	if (Result.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("result")); WriteJsonValue(Writer, Result.GetValue());
	}
	if (RunSummary.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("runSummary")); WriteJsonValue(Writer, RunSummary.GetValue());
	}
	if (StartTime.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("startTime")); WriteJsonValue(Writer, StartTime.GetValue());
	}
	if (State.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("state")); WriteJsonValue(Writer, State.GetValue());
	}
	if (Type.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("type")); WriteJsonValue(Writer, Type.GetValue());
	}
	if (CommitId.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("commitId")); WriteJsonValue(Writer, CommitId.GetValue());
	}
	if (_Class.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("_class")); WriteJsonValue(Writer, _Class.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIPipelineBranchesitemlatestRun::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("durationInMillis"), DurationInMillis);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("estimatedDurationInMillis"), EstimatedDurationInMillis);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("enQueueTime"), EnQueueTime);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("endTime"), EndTime);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("id"), Id);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("organization"), Organization);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("pipeline"), Pipeline);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("result"), Result);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("runSummary"), RunSummary);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("startTime"), StartTime);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("state"), State);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("type"), Type);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("commitId"), CommitId);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("_class"), _Class);

	return ParseSuccess;
}

}
