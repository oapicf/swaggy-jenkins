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

using System;
using System.IO;
using UnrealBuildTool;

public class OpenAPI : ModuleRules
{
    public OpenAPI(ReadOnlyTargetRules Target) : base(Target)
    {
        PublicDependencyModuleNames.AddRange(
            new string[]
            {
                "Core",
                "HTTP",
                "Json",
            }
        );
        PCHUsage = PCHUsageMode.NoPCHs;
    }
}