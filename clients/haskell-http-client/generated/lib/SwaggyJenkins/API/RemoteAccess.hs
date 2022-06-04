{-
   Swaggy Jenkins

   Jenkins API clients generated from Swagger / Open API specification

   OpenAPI Version: 3.0.0
   Swaggy Jenkins API version: 1.5.1-pre.0
   Contact: blah@cliffano.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : SwaggyJenkins.API.RemoteAccess
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggyJenkins.API.RemoteAccess where

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


-- ** RemoteAccess

-- *** getComputer

-- | @GET \/computer\/api\/json@
-- 
-- Retrieve computer details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getComputer
  :: Depth -- ^ "depth" -  Recursion depth in response model
  -> SwaggyJenkinsRequest GetComputer MimeNoContent ComputerSet MimeJSON
getComputer (Depth depth) =
  _mkRequest "GET" ["/computer/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `addQuery` toQuery ("depth", Just depth)

data GetComputer  
-- | @application/json@
instance Produces GetComputer MimeJSON


-- *** getJenkins

-- | @GET \/api\/json@
-- 
-- Retrieve Jenkins details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getJenkins
  :: SwaggyJenkinsRequest GetJenkins MimeNoContent Hudson MimeJSON
getJenkins =
  _mkRequest "GET" ["/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetJenkins  
-- | @application/json@
instance Produces GetJenkins MimeJSON


-- *** getJob

-- | @GET \/job\/{name}\/api\/json@
-- 
-- Retrieve job details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getJob
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest GetJob MimeNoContent FreeStyleProject MimeJSON
getJob (Name name) =
  _mkRequest "GET" ["/job/",toPath name,"/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetJob  
-- | @application/json@
instance Produces GetJob MimeJSON


-- *** getJobConfig

-- | @GET \/job\/{name}\/config.xml@
-- 
-- Retrieve job configuration
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getJobConfig
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest GetJobConfig MimeNoContent Text MimeTextXml
getJobConfig (Name name) =
  _mkRequest "GET" ["/job/",toPath name,"/config.xml"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetJobConfig  
-- | @text/xml@
instance Produces GetJobConfig MimeTextXml


-- *** getJobLastBuild

-- | @GET \/job\/{name}\/lastBuild\/api\/json@
-- 
-- Retrieve job's last build details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getJobLastBuild
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest GetJobLastBuild MimeNoContent FreeStyleBuild MimeJSON
getJobLastBuild (Name name) =
  _mkRequest "GET" ["/job/",toPath name,"/lastBuild/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetJobLastBuild  
-- | @application/json@
instance Produces GetJobLastBuild MimeJSON


-- *** getJobProgressiveText

-- | @GET \/job\/{name}\/{number}\/logText\/progressiveText@
-- 
-- Retrieve job's build progressive text output
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getJobProgressiveText
  :: Name -- ^ "name" -  Name of the job
  -> Number -- ^ "number" -  Build number
  -> Start -- ^ "start" -  Starting point of progressive text output
  -> SwaggyJenkinsRequest GetJobProgressiveText MimeNoContent NoContent MimeNoContent
getJobProgressiveText (Name name) (Number number) (Start start) =
  _mkRequest "GET" ["/job/",toPath name,"/",toPath number,"/logText/progressiveText"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `addQuery` toQuery ("start", Just start)

data GetJobProgressiveText  
instance Produces GetJobProgressiveText MimeNoContent


-- *** getQueue

-- | @GET \/queue\/api\/json@
-- 
-- Retrieve queue details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getQueue
  :: SwaggyJenkinsRequest GetQueue MimeNoContent Queue MimeJSON
getQueue =
  _mkRequest "GET" ["/queue/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetQueue  
-- | @application/json@
instance Produces GetQueue MimeJSON


-- *** getQueueItem

-- | @GET \/queue\/item\/{number}\/api\/json@
-- 
-- Retrieve queued item details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getQueueItem
  :: Number -- ^ "number" -  Queue number
  -> SwaggyJenkinsRequest GetQueueItem MimeNoContent Queue MimeJSON
getQueueItem (Number number) =
  _mkRequest "GET" ["/queue/item/",toPath number,"/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetQueueItem  
-- | @application/json@
instance Produces GetQueueItem MimeJSON


-- *** getView

-- | @GET \/view\/{name}\/api\/json@
-- 
-- Retrieve view details
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getView
  :: Name -- ^ "name" -  Name of the view
  -> SwaggyJenkinsRequest GetView MimeNoContent ListView MimeJSON
getView (Name name) =
  _mkRequest "GET" ["/view/",toPath name,"/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetView  
-- | @application/json@
instance Produces GetView MimeJSON


-- *** getViewConfig

-- | @GET \/view\/{name}\/config.xml@
-- 
-- Retrieve view configuration
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
getViewConfig
  :: Name -- ^ "name" -  Name of the view
  -> SwaggyJenkinsRequest GetViewConfig MimeNoContent Text MimeTextXml
getViewConfig (Name name) =
  _mkRequest "GET" ["/view/",toPath name,"/config.xml"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data GetViewConfig  
-- | @text/xml@
instance Produces GetViewConfig MimeTextXml


-- *** headJenkins

-- | @HEAD \/api\/json@
-- 
-- Retrieve Jenkins headers
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
headJenkins
  :: SwaggyJenkinsRequest HeadJenkins MimeNoContent NoContent MimeNoContent
headJenkins =
  _mkRequest "HEAD" ["/api/json"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data HeadJenkins  
instance Produces HeadJenkins MimeNoContent


-- *** postCreateItem

-- | @POST \/createItem@
-- 
-- Create a new job using job configuration, or copied from an existing job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postCreateItem
  :: (Consumes PostCreateItem MimeJSON)
  => Name -- ^ "name" -  Name of the new job
  -> SwaggyJenkinsRequest PostCreateItem MimeJSON NoContent MimeNoContent
postCreateItem (Name name) =
  _mkRequest "POST" ["/createItem"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `addQuery` toQuery ("name", Just name)

data PostCreateItem 

-- | /Body Param/ "body" - Job configuration in config.xml format
instance HasBodyParam PostCreateItem Body 

-- | /Optional Param/ "from" - Existing job to copy from
instance HasOptionalParam PostCreateItem From where
  applyOptionalParam req (From xs) =
    req `addQuery` toQuery ("from", Just xs)

-- | /Optional Param/ "mode" - Set to 'copy' for copying an existing job
instance HasOptionalParam PostCreateItem Mode where
  applyOptionalParam req (Mode xs) =
    req `addQuery` toQuery ("mode", Just xs)

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostCreateItem JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)

-- | /Optional Param/ "Content-Type" - Content type header application/xml
instance HasOptionalParam PostCreateItem ParamContentType where
  applyOptionalParam req (ParamContentType xs) =
    req `addHeader` toHeader ("Content-Type", xs)

-- | @application/json@
instance Consumes PostCreateItem MimeJSON

instance Produces PostCreateItem MimeNoContent


-- *** postCreateView

-- | @POST \/createView@
-- 
-- Create a new view using view configuration
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postCreateView
  :: (Consumes PostCreateView MimeJSON)
  => Name -- ^ "name" -  Name of the new view
  -> SwaggyJenkinsRequest PostCreateView MimeJSON NoContent MimeNoContent
postCreateView (Name name) =
  _mkRequest "POST" ["/createView"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `addQuery` toQuery ("name", Just name)

data PostCreateView 

-- | /Body Param/ "body" - View configuration in config.xml format
instance HasBodyParam PostCreateView Body 

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostCreateView JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)

-- | /Optional Param/ "Content-Type" - Content type header application/xml
instance HasOptionalParam PostCreateView ParamContentType where
  applyOptionalParam req (ParamContentType xs) =
    req `addHeader` toHeader ("Content-Type", xs)

-- | @application/json@
instance Consumes PostCreateView MimeJSON

instance Produces PostCreateView MimeNoContent


-- *** postJobBuild

-- | @POST \/job\/{name}\/build@
-- 
-- Build a job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobBuild
  :: Name -- ^ "name" -  Name of the job
  -> Json -- ^ "json"
  -> SwaggyJenkinsRequest PostJobBuild MimeNoContent NoContent MimeNoContent
postJobBuild (Name name) (Json json) =
  _mkRequest "POST" ["/job/",toPath name,"/build"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `addQuery` toQuery ("json", Just json)

data PostJobBuild  
instance HasOptionalParam PostJobBuild Token where
  applyOptionalParam req (Token xs) =
    req `addQuery` toQuery ("token", Just xs)

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobBuild JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)
instance Produces PostJobBuild MimeNoContent


-- *** postJobConfig

-- | @POST \/job\/{name}\/config.xml@
-- 
-- Update job configuration
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobConfig
  :: (Consumes PostJobConfig MimeJSON, MimeRender MimeJSON Body)
  => Body -- ^ "body" -  Job configuration in config.xml format
  -> Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest PostJobConfig MimeJSON NoContent MimeNoContent
postJobConfig body (Name name) =
  _mkRequest "POST" ["/job/",toPath name,"/config.xml"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `setBodyParam` body

data PostJobConfig 

-- | /Body Param/ "body" - Job configuration in config.xml format
instance HasBodyParam PostJobConfig Body 

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobConfig JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)

-- | @application/json@
instance Consumes PostJobConfig MimeJSON

instance Produces PostJobConfig MimeNoContent


-- *** postJobDelete

-- | @POST \/job\/{name}\/doDelete@
-- 
-- Delete a job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobDelete
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest PostJobDelete MimeNoContent NoContent MimeNoContent
postJobDelete (Name name) =
  _mkRequest "POST" ["/job/",toPath name,"/doDelete"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data PostJobDelete  

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobDelete JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)
instance Produces PostJobDelete MimeNoContent


-- *** postJobDisable

-- | @POST \/job\/{name}\/disable@
-- 
-- Disable a job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobDisable
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest PostJobDisable MimeNoContent NoContent MimeNoContent
postJobDisable (Name name) =
  _mkRequest "POST" ["/job/",toPath name,"/disable"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data PostJobDisable  

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobDisable JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)
instance Produces PostJobDisable MimeNoContent


-- *** postJobEnable

-- | @POST \/job\/{name}\/enable@
-- 
-- Enable a job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobEnable
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest PostJobEnable MimeNoContent NoContent MimeNoContent
postJobEnable (Name name) =
  _mkRequest "POST" ["/job/",toPath name,"/enable"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data PostJobEnable  

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobEnable JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)
instance Produces PostJobEnable MimeNoContent


-- *** postJobLastBuildStop

-- | @POST \/job\/{name}\/lastBuild\/stop@
-- 
-- Stop a job
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postJobLastBuildStop
  :: Name -- ^ "name" -  Name of the job
  -> SwaggyJenkinsRequest PostJobLastBuildStop MimeNoContent NoContent MimeNoContent
postJobLastBuildStop (Name name) =
  _mkRequest "POST" ["/job/",toPath name,"/lastBuild/stop"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)

data PostJobLastBuildStop  

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostJobLastBuildStop JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)
instance Produces PostJobLastBuildStop MimeNoContent


-- *** postViewConfig

-- | @POST \/view\/{name}\/config.xml@
-- 
-- Update view configuration
-- 
-- AuthMethod: 'AuthBasicJenkinsAuth'
-- 
postViewConfig
  :: (Consumes PostViewConfig MimeJSON, MimeRender MimeJSON Body)
  => Body -- ^ "body" -  View configuration in config.xml format
  -> Name -- ^ "name" -  Name of the view
  -> SwaggyJenkinsRequest PostViewConfig MimeJSON NoContent MimeNoContent
postViewConfig body (Name name) =
  _mkRequest "POST" ["/view/",toPath name,"/config.xml"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthBasicJenkinsAuth)
    `setBodyParam` body

data PostViewConfig 

-- | /Body Param/ "body" - View configuration in config.xml format
instance HasBodyParam PostViewConfig Body 

-- | /Optional Param/ "Jenkins-Crumb" - CSRF protection token
instance HasOptionalParam PostViewConfig JenkinsCrumb where
  applyOptionalParam req (JenkinsCrumb xs) =
    req `addHeader` toHeader ("Jenkins-Crumb", xs)

-- | @application/json@
instance Consumes PostViewConfig MimeJSON

instance Produces PostViewConfig MimeNoContent

