{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.PipelineBranchesitempullRequestlinks exposing (PipelineBranchesitempullRequestlinks, pipelineBranchesitempullRequestlinksDecoder, pipelineBranchesitempullRequestlinksEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias PipelineBranchesitempullRequestlinks =
    { self : Maybe String
    , class : Maybe String
    }


pipelineBranchesitempullRequestlinksDecoder : Decoder PipelineBranchesitempullRequestlinks
pipelineBranchesitempullRequestlinksDecoder =
    decode PipelineBranchesitempullRequestlinks
        |> optional "self" (Decode.nullable Decode.string) Nothing
        |> optional "_class" (Decode.nullable Decode.string) Nothing



pipelineBranchesitempullRequestlinksEncoder : PipelineBranchesitempullRequestlinks -> Encode.Value
pipelineBranchesitempullRequestlinksEncoder model =
    Encode.object
        [ ( "self", withDefault Encode.null (map Encode.string model.self) )
        , ( "_class", withDefault Encode.null (map Encode.string model.class) )
        ]


