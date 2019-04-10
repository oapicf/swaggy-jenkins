{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.SwapSpaceMonitorMemoryUsage2 exposing (SwapSpaceMonitorMemoryUsage2, swapSpaceMonitorMemoryUsage2Decoder, swapSpaceMonitorMemoryUsage2Encoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias SwapSpaceMonitorMemoryUsage2 =
    { class : Maybe String
    , availablePhysicalMemory : Maybe Int
    , availableSwapSpace : Maybe Int
    , totalPhysicalMemory : Maybe Int
    , totalSwapSpace : Maybe Int
    }


swapSpaceMonitorMemoryUsage2Decoder : Decoder SwapSpaceMonitorMemoryUsage2
swapSpaceMonitorMemoryUsage2Decoder =
    decode SwapSpaceMonitorMemoryUsage2
        |> optional "_class" (Decode.nullable Decode.string) Nothing
        |> optional "availablePhysicalMemory" (Decode.nullable Decode.int) Nothing
        |> optional "availableSwapSpace" (Decode.nullable Decode.int) Nothing
        |> optional "totalPhysicalMemory" (Decode.nullable Decode.int) Nothing
        |> optional "totalSwapSpace" (Decode.nullable Decode.int) Nothing



swapSpaceMonitorMemoryUsage2Encoder : SwapSpaceMonitorMemoryUsage2 -> Encode.Value
swapSpaceMonitorMemoryUsage2Encoder model =
    Encode.object
        [ ( "_class", withDefault Encode.null (map Encode.string model.class) )
        , ( "availablePhysicalMemory", withDefault Encode.null (map Encode.int model.availablePhysicalMemory) )
        , ( "availableSwapSpace", withDefault Encode.null (map Encode.int model.availableSwapSpace) )
        , ( "totalPhysicalMemory", withDefault Encode.null (map Encode.int model.totalPhysicalMemory) )
        , ( "totalSwapSpace", withDefault Encode.null (map Encode.int model.totalSwapSpace) )
        ]


