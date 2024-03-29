(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    name: string option [@default None];
    url: string option [@default None];
    color: string option [@default None];
    actions: Free_style_projectactions.t list;
    description: string option [@default None];
    display_name: string option [@default None];
    display_name_or_null: string option [@default None];
    full_display_name: string option [@default None];
    full_name: string option [@default None];
    buildable: bool option [@default None];
    builds: Free_style_build.t list;
    first_build: Free_style_build.t option [@default None];
    health_report: Free_style_projecthealth_report.t list;
    in_queue: bool option [@default None];
    keep_dependencies: bool option [@default None];
    last_build: Free_style_build.t option [@default None];
    last_completed_build: Free_style_build.t option [@default None];
    last_failed_build: string option [@default None];
    last_stable_build: Free_style_build.t option [@default None];
    last_successful_build: Free_style_build.t option [@default None];
    last_unstable_build: string option [@default None];
    last_unsuccessful_build: string option [@default None];
    next_build_number: int32 option [@default None];
    queue_item: string option [@default None];
    concurrent_build: bool option [@default None];
    scm: Null_scm.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    name = None;
    url = None;
    color = None;
    actions = [];
    description = None;
    display_name = None;
    display_name_or_null = None;
    full_display_name = None;
    full_name = None;
    buildable = None;
    builds = [];
    first_build = None;
    health_report = [];
    in_queue = None;
    keep_dependencies = None;
    last_build = None;
    last_completed_build = None;
    last_failed_build = None;
    last_stable_build = None;
    last_successful_build = None;
    last_unstable_build = None;
    last_unsuccessful_build = None;
    next_build_number = None;
    queue_item = None;
    concurrent_build = None;
    scm = None;
}

