(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    timestamp: int32 option [@default None];
    path: string option [@default None];
    size: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    timestamp = None;
    path = None;
    size = None;
}

