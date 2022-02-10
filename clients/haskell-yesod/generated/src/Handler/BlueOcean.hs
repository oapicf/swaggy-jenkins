{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
module Handler.BlueOcean where

import           Import


-- | 
--
-- Delete queue item from an organization pipeline queue
-- operationId: deletePipelineQueueItem
deleteBlueRestOrganizationsByTextPipelinesByTextQueueByTextR :: Text -- ^ Name of the organization
                                                             -> Text -- ^ Name of the pipeline
                                                             -> Text -- ^ Name of the queue item
                                                             -> Handler Value
deleteBlueRestOrganizationsByTextPipelinesByTextQueueByTextR organization pipeline queue = notImplemented

-- | 
--
-- Retrieve authenticated user details for an organization
-- operationId: getAuthenticatedUser
getBlueRestOrganizationsByTextUserR :: Text -- ^ Name of the organization
                                    -> Handler Value
getBlueRestOrganizationsByTextUserR organization = notImplemented

-- | 
--
-- Get a list of class names supported by a given class
-- operationId: getClasses
getBlueRestClassesByTextR :: Text -- ^ Name of the class
                          -> Handler Value
getBlueRestClassesByTextR _class = notImplemented

-- | 
--
-- Retrieve JSON Web Key
-- operationId: getJsonWebKey
getJwtAuthJwksByIntR :: Int -- ^ Key ID received as part of JWT header field kid
                     -> Handler Value
getJwtAuthJwksByIntR key = notImplemented

-- | 
--
-- Retrieve JSON Web Token
-- operationId: getJsonWebToken
getJwtAuthTokenR :: Handler Value
getJwtAuthTokenR = notImplemented

-- | 
--
-- Retrieve organization details
-- operationId: getOrganisation
getBlueRestOrganizationsByTextR :: Text -- ^ Name of the organization
                                -> Handler Value
getBlueRestOrganizationsByTextR organization = notImplemented

-- | 
--
-- Retrieve all organizations details
-- operationId: getOrganisations
getBlueRestOrganizationsR :: Handler Value
getBlueRestOrganizationsR = notImplemented

-- | 
--
-- Retrieve pipeline details for an organization
-- operationId: getPipeline
getBlueRestOrganizationsByTextPipelinesByTextR :: Text -- ^ Name of the organization
                                               -> Text -- ^ Name of the pipeline
                                               -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextR organization pipeline = notImplemented

-- | 
--
-- Retrieve all activities details for an organization pipeline
-- operationId: getPipelineActivities
getBlueRestOrganizationsByTextPipelinesByTextActivitiesR :: Text -- ^ Name of the organization
                                                         -> Text -- ^ Name of the pipeline
                                                         -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextActivitiesR organization pipeline = notImplemented

-- | 
--
-- Retrieve branch details for an organization pipeline
-- operationId: getPipelineBranch
getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextR :: Text -- ^ Name of the organization
                                                             -> Text -- ^ Name of the pipeline
                                                             -> Text -- ^ Name of the branch
                                                             -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextR organization pipeline branch = notImplemented

-- | 
--
-- Retrieve branch run details for an organization pipeline
-- operationId: getPipelineBranchRun
getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextRunsByTextR :: Text -- ^ Name of the organization
                                                                       -> Text -- ^ Name of the pipeline
                                                                       -> Text -- ^ Name of the branch
                                                                       -> Text -- ^ Name of the run
                                                                       -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextRunsByTextR organization pipeline branch run = notImplemented

-- | 
--
-- Retrieve all branches details for an organization pipeline
-- operationId: getPipelineBranches
getBlueRestOrganizationsByTextPipelinesByTextBranchesR :: Text -- ^ Name of the organization
                                                       -> Text -- ^ Name of the pipeline
                                                       -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextBranchesR organization pipeline = notImplemented

-- | 
--
-- Retrieve pipeline folder for an organization
-- operationId: getPipelineFolder
getBlueRestOrganizationsByTextPipelinesByTextR :: Text -- ^ Name of the organization
                                               -> Text -- ^ Name of the folder
                                               -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextR organization folder = notImplemented

-- | 
--
-- Retrieve pipeline details for an organization folder
-- operationId: getPipelineFolderPipeline
getBlueRestOrganizationsByTextPipelinesByTextPipelinesByTextR :: Text -- ^ Name of the organization
                                                              -> Text -- ^ Name of the pipeline
                                                              -> Text -- ^ Name of the folder
                                                              -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextPipelinesByTextR organization pipeline folder = notImplemented

-- | 
--
-- Retrieve queue details for an organization pipeline
-- operationId: getPipelineQueue
getBlueRestOrganizationsByTextPipelinesByTextQueueR :: Text -- ^ Name of the organization
                                                    -> Text -- ^ Name of the pipeline
                                                    -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextQueueR organization pipeline = notImplemented

-- | 
--
-- Retrieve run details for an organization pipeline
-- operationId: getPipelineRun
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextR :: Text -- ^ Name of the organization
                                                         -> Text -- ^ Name of the pipeline
                                                         -> Text -- ^ Name of the run
                                                         -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextR organization pipeline run = notImplemented

-- | 
--
-- Get log for a pipeline run
-- operationId: getPipelineRunLog
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextLogR :: Text -- ^ Name of the organization
                                                            -> Text -- ^ Name of the pipeline
                                                            -> Text -- ^ Name of the run
                                                            -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextLogR organization pipeline run = notImplemented

-- | 
--
-- Retrieve run node details for an organization pipeline
-- operationId: getPipelineRunNode
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextR :: Text -- ^ Name of the organization
                                                                    -> Text -- ^ Name of the pipeline
                                                                    -> Text -- ^ Name of the run
                                                                    -> Text -- ^ Name of the node
                                                                    -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextR organization pipeline run node = notImplemented

-- | 
--
-- Retrieve run node details for an organization pipeline
-- operationId: getPipelineRunNodeStep
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextR :: Text -- ^ Name of the organization
                                                                               -> Text -- ^ Name of the pipeline
                                                                               -> Text -- ^ Name of the run
                                                                               -> Text -- ^ Name of the node
                                                                               -> Text -- ^ Name of the step
                                                                               -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextR organization pipeline run node step = notImplemented

-- | 
--
-- Get log for a pipeline run node step
-- operationId: getPipelineRunNodeStepLog
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextLogR :: Text -- ^ Name of the organization
                                                                                  -> Text -- ^ Name of the pipeline
                                                                                  -> Text -- ^ Name of the run
                                                                                  -> Text -- ^ Name of the node
                                                                                  -> Text -- ^ Name of the step
                                                                                  -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextLogR organization pipeline run node step = notImplemented

-- | 
--
-- Retrieve run node steps details for an organization pipeline
-- operationId: getPipelineRunNodeSteps
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsR :: Text -- ^ Name of the organization
                                                                         -> Text -- ^ Name of the pipeline
                                                                         -> Text -- ^ Name of the run
                                                                         -> Text -- ^ Name of the node
                                                                         -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsR organization pipeline run node = notImplemented

-- | 
--
-- Retrieve run nodes details for an organization pipeline
-- operationId: getPipelineRunNodes
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesR :: Text -- ^ Name of the organization
                                                              -> Text -- ^ Name of the pipeline
                                                              -> Text -- ^ Name of the run
                                                              -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesR organization pipeline run = notImplemented

-- | 
--
-- Retrieve all runs details for an organization pipeline
-- operationId: getPipelineRuns
getBlueRestOrganizationsByTextPipelinesByTextRunsR :: Text -- ^ Name of the organization
                                                   -> Text -- ^ Name of the pipeline
                                                   -> Handler Value
getBlueRestOrganizationsByTextPipelinesByTextRunsR organization pipeline = notImplemented

-- | 
--
-- Retrieve all pipelines details for an organization
-- operationId: getPipelines
getBlueRestOrganizationsByTextPipelinesR :: Text -- ^ Name of the organization
                                         -> Handler Value
getBlueRestOrganizationsByTextPipelinesR organization = notImplemented

-- | 
--
-- Retrieve SCM details for an organization
-- operationId: getSCM
getBlueRestOrganizationsByTextScmByTextR :: Text -- ^ Name of the organization
                                         -> Text -- ^ Name of SCM
                                         -> Handler Value
getBlueRestOrganizationsByTextScmByTextR organization scm = notImplemented

-- | 
--
-- Retrieve SCM organization repositories details for an organization
-- operationId: getSCMOrganisationRepositories
getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesR :: Text -- ^ Name of the organization
                                                                        -> Text -- ^ Name of SCM
                                                                        -> Text -- ^ Name of the SCM organization
                                                                        -> Handler Value
getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesR organization scm scmOrganisation = notImplemented

-- | 
--
-- Retrieve SCM organization repository details for an organization
-- operationId: getSCMOrganisationRepository
getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesByTextR :: Text -- ^ Name of the organization
                                                                              -> Text -- ^ Name of SCM
                                                                              -> Text -- ^ Name of the SCM organization
                                                                              -> Text -- ^ Name of the SCM repository
                                                                              -> Handler Value
getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesByTextR organization scm scmOrganisation repository = notImplemented

-- | 
--
-- Retrieve SCM organizations details for an organization
-- operationId: getSCMOrganisations
getBlueRestOrganizationsByTextScmByTextOrganizationsR :: Text -- ^ Name of the organization
                                                      -> Text -- ^ Name of SCM
                                                      -> Handler Value
getBlueRestOrganizationsByTextScmByTextOrganizationsR organization scm = notImplemented

-- | 
--
-- Retrieve user details for an organization
-- operationId: getUser
getBlueRestOrganizationsByTextUsersByTextR :: Text -- ^ Name of the organization
                                           -> Text -- ^ Name of the user
                                           -> Handler Value
getBlueRestOrganizationsByTextUsersByTextR organization user = notImplemented

-- | 
--
-- Retrieve user favorites details for an organization
-- operationId: getUserFavorites
getBlueRestUsersByTextFavoritesR :: Text -- ^ Name of the user
                                 -> Handler Value
getBlueRestUsersByTextFavoritesR user = notImplemented

-- | 
--
-- Retrieve users details for an organization
-- operationId: getUsers
getBlueRestOrganizationsByTextUsersR :: Text -- ^ Name of the organization
                                     -> Handler Value
getBlueRestOrganizationsByTextUsersR organization = notImplemented

-- | 
--
-- Replay an organization pipeline run
-- operationId: postPipelineRun
postBlueRestOrganizationsByTextPipelinesByTextRunsByTextReplayR :: Text -- ^ Name of the organization
                                                                -> Text -- ^ Name of the pipeline
                                                                -> Text -- ^ Name of the run
                                                                -> Handler Value
postBlueRestOrganizationsByTextPipelinesByTextRunsByTextReplayR organization pipeline run = notImplemented

-- | 
--
-- Start a build for an organization pipeline
-- operationId: postPipelineRuns
postBlueRestOrganizationsByTextPipelinesByTextRunsR :: Text -- ^ Name of the organization
                                                    -> Text -- ^ Name of the pipeline
                                                    -> Handler Value
postBlueRestOrganizationsByTextPipelinesByTextRunsR organization pipeline = notImplemented

-- | 
--
-- Favorite/unfavorite a pipeline
-- operationId: putPipelineFavorite
putBlueRestOrganizationsByTextPipelinesByTextFavoriteR :: Text -- ^ Name of the organization
                                                       -> Text -- ^ Name of the pipeline
                                                       -> Handler Value
putBlueRestOrganizationsByTextPipelinesByTextFavoriteR organization pipeline = notImplemented

-- | 
--
-- Stop a build of an organization pipeline
-- operationId: putPipelineRun
putBlueRestOrganizationsByTextPipelinesByTextRunsByTextStopR :: Text -- ^ Name of the organization
                                                             -> Text -- ^ Name of the pipeline
                                                             -> Text -- ^ Name of the run
                                                             -> Handler Value
putBlueRestOrganizationsByTextPipelinesByTextRunsByTextStopR organization pipeline run = notImplemented

-- | 
--
-- Search for any resource details
-- operationId: search
getBlueRestSearchR :: Handler Value
getBlueRestSearchR = notImplemented

-- | 
--
-- Get classes details
-- operationId: searchClasses
getBlueRestClassesR :: Handler Value
getBlueRestClassesR = notImplemented
