{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Handler.BlueOceanSpec (spec) where

import           TestImport


spec :: Spec
spec = withApp $ do

    describe "deleteBlueRestOrganizationsByTextPipelinesByTextQueueByTextR" $
        it "returns 501 Not Implemented" $ do
            performMethod "DELETE" $ BlueRestOrganizationsByTextPipelinesByTextQueueByTextR "organization_example" "pipeline_example" "queue_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextUserR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextUserR "organization_example"
            statusIs 501

    describe "getBlueRestClassesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestClassesByTextR "_class_example"
            statusIs 501

    describe "getJwtAuthJwksByIntR" $
        it "returns 501 Not Implemented" $ do
            get $ JwtAuthJwksByIntR 56
            statusIs 501

    describe "getJwtAuthTokenR" $
        it "returns 501 Not Implemented" $ do
            get JwtAuthTokenR
            statusIs 501

    describe "getBlueRestOrganizationsByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextR "organization_example"
            statusIs 501

    describe "getBlueRestOrganizationsR" $
        it "returns 501 Not Implemented" $ do
            get BlueRestOrganizationsR
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextR "organization_example" "pipeline_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextActivitiesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextActivitiesR "organization_example" "pipeline_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextBranchesByTextR "organization_example" "pipeline_example" "branch_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextBranchesByTextRunsByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextBranchesByTextRunsByTextR "organization_example" "pipeline_example" "branch_example" "run_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextBranchesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextBranchesR "organization_example" "pipeline_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextR "organization_example" "folder_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextPipelinesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextPipelinesByTextR "organization_example" "pipeline_example" "folder_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextQueueR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextQueueR "organization_example" "pipeline_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextR "organization_example" "pipeline_example" "run_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextLogR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextLogR "organization_example" "pipeline_example" "run_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextR "organization_example" "pipeline_example" "run_example" "node_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextR "organization_example" "pipeline_example" "run_example" "node_example" "step_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextLogR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsByTextLogR "organization_example" "pipeline_example" "run_example" "node_example" "step_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesByTextStepsR "organization_example" "pipeline_example" "run_example" "node_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextNodesR "organization_example" "pipeline_example" "run_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesByTextRunsR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesByTextRunsR "organization_example" "pipeline_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextPipelinesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextPipelinesR "organization_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextScmByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextScmByTextR "organization_example" "scm_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesR "organization_example" "scm_example" "scmOrganisation_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextScmByTextOrganizationsByTextRepositoriesByTextR "organization_example" "scm_example" "scmOrganisation_example" "repository_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextScmByTextOrganizationsR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextScmByTextOrganizationsR "organization_example" "scm_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextUsersByTextR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextUsersByTextR "organization_example" "user_example"
            statusIs 501

    describe "getBlueRestUsersByTextFavoritesR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestUsersByTextFavoritesR "user_example"
            statusIs 501

    describe "getBlueRestOrganizationsByTextUsersR" $
        it "returns 501 Not Implemented" $ do
            get $ BlueRestOrganizationsByTextUsersR "organization_example"
            statusIs 501

    describe "postBlueRestOrganizationsByTextPipelinesByTextRunsByTextReplayR" $
        it "returns 501 Not Implemented" $ do
            post $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextReplayR "organization_example" "pipeline_example" "run_example"
            statusIs 501

    describe "postBlueRestOrganizationsByTextPipelinesByTextRunsR" $
        it "returns 501 Not Implemented" $ do
            post $ BlueRestOrganizationsByTextPipelinesByTextRunsR "organization_example" "pipeline_example"
            statusIs 501

    describe "putBlueRestOrganizationsByTextPipelinesByTextFavoriteR" $
        it "returns 501 Not Implemented" $ do
            performMethod "PUT" $ BlueRestOrganizationsByTextPipelinesByTextFavoriteR "organization_example" "pipeline_example"
            statusIs 501

    describe "putBlueRestOrganizationsByTextPipelinesByTextRunsByTextStopR" $
        it "returns 501 Not Implemented" $ do
            performMethod "PUT" $ BlueRestOrganizationsByTextPipelinesByTextRunsByTextStopR "organization_example" "pipeline_example" "run_example"
            statusIs 501

    describe "getBlueRestSearchR" $
        it "returns 501 Not Implemented" $ do
            get BlueRestSearchR
            statusIs 501

    describe "getBlueRestClassesR" $
        it "returns 501 Not Implemented" $ do
            get BlueRestClassesR
            statusIs 501
