(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    kind: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    kind = None;
}

