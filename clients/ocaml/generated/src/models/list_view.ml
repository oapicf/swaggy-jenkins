(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    description: string option [@default None];
    jobs: Free_style_project.t list;
    name: string option [@default None];
    url: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    description = None;
    jobs = [];
    name = None;
    url = None;
}

