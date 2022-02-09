{-
   Swaggy Jenkins

   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI Version: 3.0.0
   Swaggy Jenkins API version: 1.1.2-pre.0
   Contact: blah@cliffano.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : SwaggyJenkins.API.Base
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggyJenkins.API.Base where

import SwaggyJenkins.Core
import SwaggyJenkins.MimeTypes
import SwaggyJenkins.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Base

-- *** getCrumb

-- | @GET \/crumbIssuer\/api\/json@
-- 
-- Retrieve CSRF protection token
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getCrumb
  :: SwaggyJenkinsRequest GetCrumb MimeNoContent DefaultCrumbIssuer MimeJSON
getCrumb =
  _mkRequest "GET" ["/crumbIssuer/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetCrumb  
-- | @application/json@
instance Produces GetCrumb MimeJSON

