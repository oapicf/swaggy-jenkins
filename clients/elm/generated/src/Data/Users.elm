{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Users exposing (Users, usersDecoder, usersEncoder)

import Data.User exposing (User, userDecoder, userEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias Users =
    List User


usersDecoder : Decoder Users
usersDecoder =
    Decode.list userDecoder


usersEncoder : Users -> Encode.Value
usersEncoder model =
    Encode.list (List.map userEncoder model)

