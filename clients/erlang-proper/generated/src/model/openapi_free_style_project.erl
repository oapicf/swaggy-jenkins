-module(openapi_free_style_project).

-include("openapi.hrl").

-export([openapi_free_style_project/0]).

-export([openapi_free_style_project/1]).

-export_type([openapi_free_style_project/0]).

-type openapi_free_style_project() ::
  [ {'_class', binary() }
  | {'name', binary() }
  | {'url', binary() }
  | {'color', binary() }
  | {'actions', list(openapi_free_style_projectactions:openapi_free_style_projectactions()) }
  | {'description', binary() }
  | {'displayName', binary() }
  | {'displayNameOrNull', binary() }
  | {'fullDisplayName', binary() }
  | {'fullName', binary() }
  | {'buildable', boolean() }
  | {'builds', list(openapi_free_style_build:openapi_free_style_build()) }
  | {'firstBuild', openapi_free_style_build:openapi_free_style_build() }
  | {'healthReport', list(openapi_free_style_projecthealth_report:openapi_free_style_projecthealth_report()) }
  | {'inQueue', boolean() }
  | {'keepDependencies', boolean() }
  | {'lastBuild', openapi_free_style_build:openapi_free_style_build() }
  | {'lastCompletedBuild', openapi_free_style_build:openapi_free_style_build() }
  | {'lastFailedBuild', binary() }
  | {'lastStableBuild', openapi_free_style_build:openapi_free_style_build() }
  | {'lastSuccessfulBuild', openapi_free_style_build:openapi_free_style_build() }
  | {'lastUnstableBuild', binary() }
  | {'lastUnsuccessfulBuild', binary() }
  | {'nextBuildNumber', integer() }
  | {'queueItem', binary() }
  | {'concurrentBuild', boolean() }
  | {'scm', openapi_null_scm:openapi_null_scm() }
  ].


openapi_free_style_project() ->
    openapi_free_style_project([]).

openapi_free_style_project(Fields) ->
  Default = [ {'_class', binary() }
            , {'name', binary() }
            , {'url', binary() }
            , {'color', binary() }
            , {'actions', list(openapi_free_style_projectactions:openapi_free_style_projectactions()) }
            , {'description', binary() }
            , {'displayName', binary() }
            , {'displayNameOrNull', binary() }
            , {'fullDisplayName', binary() }
            , {'fullName', binary() }
            , {'buildable', boolean() }
            , {'builds', list(openapi_free_style_build:openapi_free_style_build()) }
            , {'firstBuild', openapi_free_style_build:openapi_free_style_build() }
            , {'healthReport', list(openapi_free_style_projecthealth_report:openapi_free_style_projecthealth_report()) }
            , {'inQueue', boolean() }
            , {'keepDependencies', boolean() }
            , {'lastBuild', openapi_free_style_build:openapi_free_style_build() }
            , {'lastCompletedBuild', openapi_free_style_build:openapi_free_style_build() }
            , {'lastFailedBuild', binary() }
            , {'lastStableBuild', openapi_free_style_build:openapi_free_style_build() }
            , {'lastSuccessfulBuild', openapi_free_style_build:openapi_free_style_build() }
            , {'lastUnstableBuild', binary() }
            , {'lastUnsuccessfulBuild', binary() }
            , {'nextBuildNumber', integer() }
            , {'queueItem', binary() }
            , {'concurrentBuild', boolean() }
            , {'scm', openapi_null_scm:openapi_null_scm() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

