(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    repositories: Link.t option [@default None];
    self: Link.t option [@default None];
    _class: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    repositories = None;
    self = None;
    _class = None;
}

