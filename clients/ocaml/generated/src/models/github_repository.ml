(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _class: string option [@default None];
    _links: Github_repositorylinks.t option [@default None];
    default_branch: string option [@default None];
    description: string option [@default None];
    name: string option [@default None];
    permissions: Github_repositorypermissions.t option [@default None];
    _private: bool option [@default None];
    full_name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    _class = None;
    _links = None;
    default_branch = None;
    description = None;
    name = None;
    permissions = None;
    _private = None;
    full_name = None;
}

