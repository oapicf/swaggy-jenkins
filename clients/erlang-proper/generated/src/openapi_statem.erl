-module(openapi_statem).

-behaviour(proper_statem).

-include("openapi.hrl").
-include_lib("proper/include/proper_common.hrl").
-include_lib("stdlib/include/assert.hrl").

-compile(export_all).
-compile(nowarn_export_all).

-include("openapi_statem.hrl").

%%==============================================================================
%% The statem's property
%%==============================================================================

prop_main() ->
  setup(),
  ?FORALL( Cmds
         , proper_statem:commands(?MODULE)
         , begin
             cleanup(),
             { History
             , State
             , Result
             } = proper_statem:run_commands(?MODULE, Cmds),
             ?WHENFAIL(
                io:format("History: ~p\nState: ~p\nResult: ~p\nCmds: ~p\n",
                          [ History
                          , State
                          , Result
                          , proper_statem:command_names(Cmds)
                          ]),
                proper:aggregate( proper_statem:command_names(Cmds)
                                , Result =:= ok
                                )
               )
           end
         ).

%%==============================================================================
%% Setup
%%==============================================================================

setup() -> ok.

%%==============================================================================
%% Cleanup
%%==============================================================================

cleanup() -> ok.

%%==============================================================================
%% Initial State
%%==============================================================================

initial_state() -> #{}.

%%==============================================================================
%% get_computer
%%==============================================================================

get_computer(Depth) ->
  openapi_api:get_computer(Depth).

get_computer_args(_S) ->
  [integer()].

%%==============================================================================
%% get_jenkins
%%==============================================================================

get_jenkins() ->
  openapi_api:get_jenkins().

get_jenkins_args(_S) ->
  [].

%%==============================================================================
%% get_job
%%==============================================================================

get_job(Name) ->
  openapi_api:get_job(Name).

get_job_args(_S) ->
  [binary()].

%%==============================================================================
%% get_job_config
%%==============================================================================

get_job_config(Name) ->
  openapi_api:get_job_config(Name).

get_job_config_args(_S) ->
  [binary()].

%%==============================================================================
%% get_job_last_build
%%==============================================================================

get_job_last_build(Name) ->
  openapi_api:get_job_last_build(Name).

get_job_last_build_args(_S) ->
  [binary()].

%%==============================================================================
%% get_job_progressive_text
%%==============================================================================

get_job_progressive_text(Name, Number, Start) ->
  openapi_api:get_job_progressive_text(Name, Number, Start).

get_job_progressive_text_args(_S) ->
  [binary(), binary(), binary()].

%%==============================================================================
%% get_queue
%%==============================================================================

get_queue() ->
  openapi_api:get_queue().

get_queue_args(_S) ->
  [].

%%==============================================================================
%% get_queue_item
%%==============================================================================

get_queue_item(Number) ->
  openapi_api:get_queue_item(Number).

get_queue_item_args(_S) ->
  [binary()].

%%==============================================================================
%% get_view
%%==============================================================================

get_view(Name) ->
  openapi_api:get_view(Name).

get_view_args(_S) ->
  [binary()].

%%==============================================================================
%% get_view_config
%%==============================================================================

get_view_config(Name) ->
  openapi_api:get_view_config(Name).

get_view_config_args(_S) ->
  [binary()].

%%==============================================================================
%% head_jenkins
%%==============================================================================

head_jenkins() ->
  openapi_api:head_jenkins().

head_jenkins_args(_S) ->
  [].

%%==============================================================================
%% post_create_item
%%==============================================================================

post_create_item(Name) ->
  openapi_api:post_create_item(Name).

post_create_item_args(_S) ->
  [binary()].

%%==============================================================================
%% post_create_view
%%==============================================================================

post_create_view(Name) ->
  openapi_api:post_create_view(Name).

post_create_view_args(_S) ->
  [binary()].

%%==============================================================================
%% post_job_build
%%==============================================================================

post_job_build(Name, Json) ->
  openapi_api:post_job_build(Name, Json).

post_job_build_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% post_job_config
%%==============================================================================

post_job_config(Name, Body) ->
  openapi_api:post_job_config(Name, Body).

post_job_config_args(_S) ->
  [binary(), binary()].

%%==============================================================================
%% post_job_delete
%%==============================================================================

post_job_delete(Name) ->
  openapi_api:post_job_delete(Name).

post_job_delete_args(_S) ->
  [binary()].

%%==============================================================================
%% post_job_disable
%%==============================================================================

post_job_disable(Name) ->
  openapi_api:post_job_disable(Name).

post_job_disable_args(_S) ->
  [binary()].

%%==============================================================================
%% post_job_enable
%%==============================================================================

post_job_enable(Name) ->
  openapi_api:post_job_enable(Name).

post_job_enable_args(_S) ->
  [binary()].

%%==============================================================================
%% post_job_last_build_stop
%%==============================================================================

post_job_last_build_stop(Name) ->
  openapi_api:post_job_last_build_stop(Name).

post_job_last_build_stop_args(_S) ->
  [binary()].

%%==============================================================================
%% post_view_config
%%==============================================================================

post_view_config(Name, Body) ->
  openapi_api:post_view_config(Name, Body).

post_view_config_args(_S) ->
  [binary(), binary()].

