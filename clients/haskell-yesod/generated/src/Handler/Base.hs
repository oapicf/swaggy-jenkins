{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
module Handler.Base where

import           Import


-- | 
--
-- Retrieve CSRF protection token
-- operationId: getCrumb
getCrumbIssuerApiJsonR :: Handler Value
getCrumbIssuerApiJsonR = notImplemented
