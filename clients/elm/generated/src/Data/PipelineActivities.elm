{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.PipelineActivities exposing (PipelineActivities, pipelineActivitiesDecoder, pipelineActivitiesEncoder)

import Data.PipelineActivity exposing (PipelineActivity, pipelineActivityDecoder, pipelineActivityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias PipelineActivities =
    List PipelineActivity


pipelineActivitiesDecoder : Decoder PipelineActivities
pipelineActivitiesDecoder =
    Decode.list pipelineActivityDecoder


pipelineActivitiesEncoder : PipelineActivities -> Encode.Value
pipelineActivitiesEncoder model =
    Encode.list (List.map pipelineActivityEncoder model)

