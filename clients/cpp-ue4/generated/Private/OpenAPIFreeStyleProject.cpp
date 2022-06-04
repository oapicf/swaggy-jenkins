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

#include "OpenAPIFreeStyleProject.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIFreeStyleProject::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (_Class.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("_class")); WriteJsonValue(Writer, _Class.GetValue());
	}
	if (Name.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("name")); WriteJsonValue(Writer, Name.GetValue());
	}
	if (Url.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("url")); WriteJsonValue(Writer, Url.GetValue());
	}
	if (Color.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("color")); WriteJsonValue(Writer, Color.GetValue());
	}
	if (Actions.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("actions")); WriteJsonValue(Writer, Actions.GetValue());
	}
	if (Description.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("description")); WriteJsonValue(Writer, Description.GetValue());
	}
	if (DisplayName.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("displayName")); WriteJsonValue(Writer, DisplayName.GetValue());
	}
	if (DisplayNameOrNull.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("displayNameOrNull")); WriteJsonValue(Writer, DisplayNameOrNull.GetValue());
	}
	if (FullDisplayName.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("fullDisplayName")); WriteJsonValue(Writer, FullDisplayName.GetValue());
	}
	if (FullName.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("fullName")); WriteJsonValue(Writer, FullName.GetValue());
	}
	if (Buildable.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("buildable")); WriteJsonValue(Writer, Buildable.GetValue());
	}
	if (Builds.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("builds")); WriteJsonValue(Writer, Builds.GetValue());
	}
	if (FirstBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("firstBuild")); WriteJsonValue(Writer, FirstBuild.GetValue());
	}
	if (HealthReport.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("healthReport")); WriteJsonValue(Writer, HealthReport.GetValue());
	}
	if (InQueue.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("inQueue")); WriteJsonValue(Writer, InQueue.GetValue());
	}
	if (KeepDependencies.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("keepDependencies")); WriteJsonValue(Writer, KeepDependencies.GetValue());
	}
	if (LastBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastBuild")); WriteJsonValue(Writer, LastBuild.GetValue());
	}
	if (LastCompletedBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastCompletedBuild")); WriteJsonValue(Writer, LastCompletedBuild.GetValue());
	}
	if (LastFailedBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastFailedBuild")); WriteJsonValue(Writer, LastFailedBuild.GetValue());
	}
	if (LastStableBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastStableBuild")); WriteJsonValue(Writer, LastStableBuild.GetValue());
	}
	if (LastSuccessfulBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastSuccessfulBuild")); WriteJsonValue(Writer, LastSuccessfulBuild.GetValue());
	}
	if (LastUnstableBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastUnstableBuild")); WriteJsonValue(Writer, LastUnstableBuild.GetValue());
	}
	if (LastUnsuccessfulBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("lastUnsuccessfulBuild")); WriteJsonValue(Writer, LastUnsuccessfulBuild.GetValue());
	}
	if (NextBuildNumber.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("nextBuildNumber")); WriteJsonValue(Writer, NextBuildNumber.GetValue());
	}
	if (QueueItem.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("queueItem")); WriteJsonValue(Writer, QueueItem.GetValue());
	}
	if (ConcurrentBuild.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("concurrentBuild")); WriteJsonValue(Writer, ConcurrentBuild.GetValue());
	}
	if (Scm.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("scm")); WriteJsonValue(Writer, Scm.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIFreeStyleProject::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("_class"), _Class);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("name"), Name);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("url"), Url);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("color"), Color);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("actions"), Actions);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("description"), Description);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("displayName"), DisplayName);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("displayNameOrNull"), DisplayNameOrNull);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("fullDisplayName"), FullDisplayName);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("fullName"), FullName);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("buildable"), Buildable);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("builds"), Builds);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("firstBuild"), FirstBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("healthReport"), HealthReport);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("inQueue"), InQueue);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("keepDependencies"), KeepDependencies);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastBuild"), LastBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastCompletedBuild"), LastCompletedBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastFailedBuild"), LastFailedBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastStableBuild"), LastStableBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastSuccessfulBuild"), LastSuccessfulBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastUnstableBuild"), LastUnstableBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("lastUnsuccessfulBuild"), LastUnsuccessfulBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("nextBuildNumber"), NextBuildNumber);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("queueItem"), QueueItem);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("concurrentBuild"), ConcurrentBuild);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("scm"), Scm);

	return ParseSuccess;
}

}
