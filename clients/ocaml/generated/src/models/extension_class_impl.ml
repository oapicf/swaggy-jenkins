(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    _links: Extension_class_impllinks.t option [@default None];
    classes: string list;
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    _links = None;
    classes = [];
}

