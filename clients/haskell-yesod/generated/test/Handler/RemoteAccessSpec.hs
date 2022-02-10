{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Handler.RemoteAccessSpec (spec) where

import           TestImport


spec :: Spec
spec = withApp $ do

    describe "getComputerApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get ComputerApiJsonR
            statusIs 501

    describe "getApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get ApiJsonR
            statusIs 501

    describe "getJobByTextApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get $ JobByTextApiJsonR "name_example"
            statusIs 501

    describe "getJobByTextConfigXmlR" $
        it "returns 501 Not Implemented" $ do
            get $ JobByTextConfigXmlR "name_example"
            statusIs 501

    describe "getJobByTextLastBuildApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get $ JobByTextLastBuildApiJsonR "name_example"
            statusIs 501

    describe "getJobByTextByTextLogTextProgressiveTextR" $
        it "returns 501 Not Implemented" $ do
            get $ JobByTextByTextLogTextProgressiveTextR "name_example" "number_example"
            statusIs 501

    describe "getQueueApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get QueueApiJsonR
            statusIs 501

    describe "getQueueItemByTextApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get $ QueueItemByTextApiJsonR "number_example"
            statusIs 501

    describe "getViewByTextApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get $ ViewByTextApiJsonR "name_example"
            statusIs 501

    describe "getViewByTextConfigXmlR" $
        it "returns 501 Not Implemented" $ do
            get $ ViewByTextConfigXmlR "name_example"
            statusIs 501

    describe "headApiJsonR" $
        it "returns 501 Not Implemented" $ do
            performMethod "HEAD" ApiJsonR
            statusIs 501

    describe "postCreateItemR" $
        it "returns 501 Not Implemented" $ do
            post CreateItemR
            statusIs 501

    describe "postCreateViewR" $
        it "returns 501 Not Implemented" $ do
            post CreateViewR
            statusIs 501

    describe "postJobByTextBuildR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextBuildR "name_example"
            statusIs 501

    describe "postJobByTextConfigXmlR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextConfigXmlR "name_example"
            statusIs 501

    describe "postJobByTextDoDeleteR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextDoDeleteR "name_example"
            statusIs 501

    describe "postJobByTextDisableR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextDisableR "name_example"
            statusIs 501

    describe "postJobByTextEnableR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextEnableR "name_example"
            statusIs 501

    describe "postJobByTextLastBuildStopR" $
        it "returns 501 Not Implemented" $ do
            post $ JobByTextLastBuildStopR "name_example"
            statusIs 501

    describe "postViewByTextConfigXmlR" $
        it "returns 501 Not Implemented" $ do
            post $ ViewByTextConfigXmlR "name_example"
            statusIs 501
