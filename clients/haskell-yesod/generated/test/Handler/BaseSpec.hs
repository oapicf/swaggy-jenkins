{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Handler.BaseSpec (spec) where

import           TestImport


spec :: Spec
spec = withApp $ do

    describe "getCrumbIssuerApiJsonR" $
        it "returns 501 Not Implemented" $ do
            get CrumbIssuerApiJsonR
            statusIs 501
