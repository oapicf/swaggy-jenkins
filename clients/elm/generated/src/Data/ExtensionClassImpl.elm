{-
   Swaggy Jenkins
   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI spec version: 1.1.1
   Contact: blah@cliffano.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ExtensionClassImpl exposing (ExtensionClassImpl, extensionClassImplDecoder, extensionClassImplEncoder)

import Data.ExtensionClassImpllinks exposing (ExtensionClassImpllinks, extensionClassImpllinksDecoder, extensionClassImpllinksEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


type alias ExtensionClassImpl =
    { class : Maybe String
    , links : Maybe ExtensionClassImpllinks
    , classes : Maybe (List String)
    }


extensionClassImplDecoder : Decoder ExtensionClassImpl
extensionClassImplDecoder =
    decode ExtensionClassImpl
        |> optional "_class" (Decode.nullable Decode.string) Nothing
        |> optional "_links" (Decode.nullable extensionClassImpllinksDecoder) Nothing
        |> optional "classes" (Decode.nullable (Decode.list Decode.string)) Nothing



extensionClassImplEncoder : ExtensionClassImpl -> Encode.Value
extensionClassImplEncoder model =
    Encode.object
        [ ( "_class", withDefault Encode.null (map Encode.string model.class) )
        , ( "_links", withDefault Encode.null (map extensionClassImpllinksEncoder model.links) )
        , ( "classes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.classes) )
        ]


