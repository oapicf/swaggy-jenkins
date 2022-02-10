{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
module Handler.RemoteAccess where

import           Import


-- | 
--
-- Retrieve computer details
-- operationId: getComputer
getComputerApiJsonR :: Handler Value
getComputerApiJsonR = notImplemented

-- | 
--
-- Retrieve Jenkins details
-- operationId: getJenkins
getApiJsonR :: Handler Value
getApiJsonR = notImplemented

-- | 
--
-- Retrieve job details
-- operationId: getJob
getJobByTextApiJsonR :: Text -- ^ Name of the job
                     -> Handler Value
getJobByTextApiJsonR name = notImplemented

-- | 
--
-- Retrieve job configuration
-- operationId: getJobConfig
getJobByTextConfigXmlR :: Text -- ^ Name of the job
                       -> Handler Value
getJobByTextConfigXmlR name = notImplemented

-- | 
--
-- Retrieve job&#39;s last build details
-- operationId: getJobLastBuild
getJobByTextLastBuildApiJsonR :: Text -- ^ Name of the job
                              -> Handler Value
getJobByTextLastBuildApiJsonR name = notImplemented

-- | 
--
-- Retrieve job&#39;s build progressive text output
-- operationId: getJobProgressiveText
getJobByTextByTextLogTextProgressiveTextR :: Text -- ^ Name of the job
                                          -> Text -- ^ Build number
                                          -> Handler Value
getJobByTextByTextLogTextProgressiveTextR name number = notImplemented

-- | 
--
-- Retrieve queue details
-- operationId: getQueue
getQueueApiJsonR :: Handler Value
getQueueApiJsonR = notImplemented

-- | 
--
-- Retrieve queued item details
-- operationId: getQueueItem
getQueueItemByTextApiJsonR :: Text -- ^ Queue number
                           -> Handler Value
getQueueItemByTextApiJsonR number = notImplemented

-- | 
--
-- Retrieve view details
-- operationId: getView
getViewByTextApiJsonR :: Text -- ^ Name of the view
                      -> Handler Value
getViewByTextApiJsonR name = notImplemented

-- | 
--
-- Retrieve view configuration
-- operationId: getViewConfig
getViewByTextConfigXmlR :: Text -- ^ Name of the view
                        -> Handler Value
getViewByTextConfigXmlR name = notImplemented

-- | 
--
-- Retrieve Jenkins headers
-- operationId: headJenkins
headApiJsonR :: Handler Value
headApiJsonR = notImplemented

-- | 
--
-- Create a new job using job configuration, or copied from an existing job
-- operationId: postCreateItem
postCreateItemR :: Handler Value
postCreateItemR = notImplemented

-- | 
--
-- Create a new view using view configuration
-- operationId: postCreateView
postCreateViewR :: Handler Value
postCreateViewR = notImplemented

-- | 
--
-- Build a job
-- operationId: postJobBuild
postJobByTextBuildR :: Text -- ^ Name of the job
                    -> Handler Value
postJobByTextBuildR name = notImplemented

-- | 
--
-- Update job configuration
-- operationId: postJobConfig
postJobByTextConfigXmlR :: Text -- ^ Name of the job
                        -> Handler Value
postJobByTextConfigXmlR name = notImplemented

-- | 
--
-- Delete a job
-- operationId: postJobDelete
postJobByTextDoDeleteR :: Text -- ^ Name of the job
                       -> Handler Value
postJobByTextDoDeleteR name = notImplemented

-- | 
--
-- Disable a job
-- operationId: postJobDisable
postJobByTextDisableR :: Text -- ^ Name of the job
                      -> Handler Value
postJobByTextDisableR name = notImplemented

-- | 
--
-- Enable a job
-- operationId: postJobEnable
postJobByTextEnableR :: Text -- ^ Name of the job
                     -> Handler Value
postJobByTextEnableR name = notImplemented

-- | 
--
-- Stop a job
-- operationId: postJobLastBuildStop
postJobByTextLastBuildStopR :: Text -- ^ Name of the job
                            -> Handler Value
postJobByTextLastBuildStopR name = notImplemented

-- | 
--
-- Update view configuration
-- operationId: postViewConfig
postViewByTextConfigXmlR :: Text -- ^ Name of the view
                         -> Handler Value
postViewByTextConfigXmlR name = notImplemented
