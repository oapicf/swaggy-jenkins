{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.GithubOrganization exposing (GithubOrganization, githubOrganizationDecoder, githubOrganizationEncoder)

import Data.GithubOrganizationlinks exposing (GithubOrganizationlinks, githubOrganizationlinksDecoder, githubOrganizationlinksEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias GithubOrganization =
    { class : Maybe String
    , links : Maybe GithubOrganizationlinks
    , jenkinsOrganizationPipeline : Maybe Bool
    , name : Maybe String
    }


githubOrganizationDecoder : Decoder GithubOrganization
githubOrganizationDecoder =
    decode GithubOrganization
        |> optional "_class" (Decode.nullable Decode.string) Nothing
        |> optional "_links" (Decode.nullable githubOrganizationlinksDecoder) Nothing
        |> optional "jenkinsOrganizationPipeline" (Decode.nullable Decode.bool) Nothing
        |> optional "name" (Decode.nullable Decode.string) Nothing



githubOrganizationEncoder : GithubOrganization -> Encode.Value
githubOrganizationEncoder model =
    Encode.object
        [ ( "_class", withDefault Encode.null (map Encode.string model.class) )
        , ( "_links", withDefault Encode.null (map githubOrganizationlinksEncoder model.links) )
        , ( "jenkinsOrganizationPipeline", withDefault Encode.null (map Encode.bool model.jenkinsOrganizationPipeline) )
        , ( "name", withDefault Encode.null (map Encode.string model.name) )
        ]


