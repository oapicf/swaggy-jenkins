{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import SwaggyJenkins.Model
import SwaggyJenkins.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary AllView where
  arbitrary = sized genAllView

genAllView :: Int -> Gen AllView
genAllView n =
  AllView
    <$> arbitraryReducedMaybe n -- allViewClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- allViewName :: Maybe Text
    <*> arbitraryReducedMaybe n -- allViewUrl :: Maybe Text
  
instance Arbitrary BranchImpl where
  arbitrary = sized genBranchImpl

genBranchImpl :: Int -> Gen BranchImpl
genBranchImpl n =
  BranchImpl
    <$> arbitraryReducedMaybe n -- branchImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- branchImplFullDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplName :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplParameters :: Maybe [StringParameterDefinition]
    <*> arbitraryReducedMaybe n -- branchImplPermissions :: Maybe BranchImplpermissions
    <*> arbitraryReducedMaybe n -- branchImplWeatherScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- branchImplPullRequest :: Maybe Text
    <*> arbitraryReducedMaybe n -- branchImplLinks :: Maybe BranchImpllinks
    <*> arbitraryReducedMaybe n -- branchImplLatestRun :: Maybe PipelineRunImpl
  
instance Arbitrary BranchImpllinks where
  arbitrary = sized genBranchImpllinks

genBranchImpllinks :: Int -> Gen BranchImpllinks
genBranchImpllinks n =
  BranchImpllinks
    <$> arbitraryReducedMaybe n -- branchImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- branchImpllinksActions :: Maybe Link
    <*> arbitraryReducedMaybe n -- branchImpllinksRuns :: Maybe Link
    <*> arbitraryReducedMaybe n -- branchImpllinksQueue :: Maybe Link
    <*> arbitraryReducedMaybe n -- branchImpllinksClass :: Maybe Text
  
instance Arbitrary BranchImplpermissions where
  arbitrary = sized genBranchImplpermissions

genBranchImplpermissions :: Int -> Gen BranchImplpermissions
genBranchImplpermissions n =
  BranchImplpermissions
    <$> arbitraryReducedMaybe n -- branchImplpermissionsCreate :: Maybe Bool
    <*> arbitraryReducedMaybe n -- branchImplpermissionsRead :: Maybe Bool
    <*> arbitraryReducedMaybe n -- branchImplpermissionsStart :: Maybe Bool
    <*> arbitraryReducedMaybe n -- branchImplpermissionsStop :: Maybe Bool
    <*> arbitraryReducedMaybe n -- branchImplpermissionsClass :: Maybe Text
  
instance Arbitrary CauseAction where
  arbitrary = sized genCauseAction

genCauseAction :: Int -> Gen CauseAction
genCauseAction n =
  CauseAction
    <$> arbitraryReducedMaybe n -- causeActionClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- causeActionCauses :: Maybe [CauseUserIdCause]
  
instance Arbitrary CauseUserIdCause where
  arbitrary = sized genCauseUserIdCause

genCauseUserIdCause :: Int -> Gen CauseUserIdCause
genCauseUserIdCause n =
  CauseUserIdCause
    <$> arbitraryReducedMaybe n -- causeUserIdCauseClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- causeUserIdCauseShortDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- causeUserIdCauseUserId :: Maybe Text
    <*> arbitraryReducedMaybe n -- causeUserIdCauseUserName :: Maybe Text
  
instance Arbitrary ClassesByClass where
  arbitrary = sized genClassesByClass

genClassesByClass :: Int -> Gen ClassesByClass
genClassesByClass n =
  ClassesByClass
    <$> arbitraryReducedMaybe n -- classesByClassClasses :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- classesByClassClass :: Maybe Text
  
instance Arbitrary ClockDifference where
  arbitrary = sized genClockDifference

genClockDifference :: Int -> Gen ClockDifference
genClockDifference n =
  ClockDifference
    <$> arbitraryReducedMaybe n -- clockDifferenceClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- clockDifferenceDiff :: Maybe Int
  
instance Arbitrary ComputerSet where
  arbitrary = sized genComputerSet

genComputerSet :: Int -> Gen ComputerSet
genComputerSet n =
  ComputerSet
    <$> arbitraryReducedMaybe n -- computerSetClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- computerSetBusyExecutors :: Maybe Int
    <*> arbitraryReducedMaybe n -- computerSetComputer :: Maybe [HudsonMasterComputer]
    <*> arbitraryReducedMaybe n -- computerSetDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- computerSetTotalExecutors :: Maybe Int
  
instance Arbitrary DefaultCrumbIssuer where
  arbitrary = sized genDefaultCrumbIssuer

genDefaultCrumbIssuer :: Int -> Gen DefaultCrumbIssuer
genDefaultCrumbIssuer n =
  DefaultCrumbIssuer
    <$> arbitraryReducedMaybe n -- defaultCrumbIssuerClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- defaultCrumbIssuerCrumb :: Maybe Text
    <*> arbitraryReducedMaybe n -- defaultCrumbIssuerCrumbRequestField :: Maybe Text
  
instance Arbitrary DiskSpaceMonitorDescriptorDiskSpace where
  arbitrary = sized genDiskSpaceMonitorDescriptorDiskSpace

genDiskSpaceMonitorDescriptorDiskSpace :: Int -> Gen DiskSpaceMonitorDescriptorDiskSpace
genDiskSpaceMonitorDescriptorDiskSpace n =
  DiskSpaceMonitorDescriptorDiskSpace
    <$> arbitraryReducedMaybe n -- diskSpaceMonitorDescriptorDiskSpaceClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- diskSpaceMonitorDescriptorDiskSpaceTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- diskSpaceMonitorDescriptorDiskSpacePath :: Maybe Text
    <*> arbitraryReducedMaybe n -- diskSpaceMonitorDescriptorDiskSpaceSize :: Maybe Int
  
instance Arbitrary EmptyChangeLogSet where
  arbitrary = sized genEmptyChangeLogSet

genEmptyChangeLogSet :: Int -> Gen EmptyChangeLogSet
genEmptyChangeLogSet n =
  EmptyChangeLogSet
    <$> arbitraryReducedMaybe n -- emptyChangeLogSetClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- emptyChangeLogSetKind :: Maybe Text
  
instance Arbitrary ExtensionClassContainerImpl1 where
  arbitrary = sized genExtensionClassContainerImpl1

genExtensionClassContainerImpl1 :: Int -> Gen ExtensionClassContainerImpl1
genExtensionClassContainerImpl1 n =
  ExtensionClassContainerImpl1
    <$> arbitraryReducedMaybe n -- extensionClassContainerImpl1Class :: Maybe Text
    <*> arbitraryReducedMaybe n -- extensionClassContainerImpl1Links :: Maybe ExtensionClassContainerImpl1links
    <*> arbitraryReducedMaybe n -- extensionClassContainerImpl1Map :: Maybe ExtensionClassContainerImpl1map
  
instance Arbitrary ExtensionClassContainerImpl1links where
  arbitrary = sized genExtensionClassContainerImpl1links

genExtensionClassContainerImpl1links :: Int -> Gen ExtensionClassContainerImpl1links
genExtensionClassContainerImpl1links n =
  ExtensionClassContainerImpl1links
    <$> arbitraryReducedMaybe n -- extensionClassContainerImpl1linksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- extensionClassContainerImpl1linksClass :: Maybe Text
  
instance Arbitrary ExtensionClassContainerImpl1map where
  arbitrary = sized genExtensionClassContainerImpl1map

genExtensionClassContainerImpl1map :: Int -> Gen ExtensionClassContainerImpl1map
genExtensionClassContainerImpl1map n =
  ExtensionClassContainerImpl1map
    <$> arbitraryReducedMaybe n -- extensionClassContainerImpl1mapIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl :: Maybe ExtensionClassImpl
    <*> arbitraryReducedMaybe n -- extensionClassContainerImpl1mapIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl :: Maybe ExtensionClassImpl
    <*> arbitraryReducedMaybe n -- extensionClassContainerImpl1mapClass :: Maybe Text
  
instance Arbitrary ExtensionClassImpl where
  arbitrary = sized genExtensionClassImpl

genExtensionClassImpl :: Int -> Gen ExtensionClassImpl
genExtensionClassImpl n =
  ExtensionClassImpl
    <$> arbitraryReducedMaybe n -- extensionClassImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- extensionClassImplLinks :: Maybe ExtensionClassImpllinks
    <*> arbitraryReducedMaybe n -- extensionClassImplClasses :: Maybe [Text]
  
instance Arbitrary ExtensionClassImpllinks where
  arbitrary = sized genExtensionClassImpllinks

genExtensionClassImpllinks :: Int -> Gen ExtensionClassImpllinks
genExtensionClassImpllinks n =
  ExtensionClassImpllinks
    <$> arbitraryReducedMaybe n -- extensionClassImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- extensionClassImpllinksClass :: Maybe Text
  
instance Arbitrary FavoriteImpl where
  arbitrary = sized genFavoriteImpl

genFavoriteImpl :: Int -> Gen FavoriteImpl
genFavoriteImpl n =
  FavoriteImpl
    <$> arbitraryReducedMaybe n -- favoriteImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- favoriteImplLinks :: Maybe FavoriteImpllinks
    <*> arbitraryReducedMaybe n -- favoriteImplItem :: Maybe PipelineImpl
  
instance Arbitrary FavoriteImpllinks where
  arbitrary = sized genFavoriteImpllinks

genFavoriteImpllinks :: Int -> Gen FavoriteImpllinks
genFavoriteImpllinks n =
  FavoriteImpllinks
    <$> arbitraryReducedMaybe n -- favoriteImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- favoriteImpllinksClass :: Maybe Text
  
instance Arbitrary FreeStyleBuild where
  arbitrary = sized genFreeStyleBuild

genFreeStyleBuild :: Int -> Gen FreeStyleBuild
genFreeStyleBuild n =
  FreeStyleBuild
    <$> arbitraryReducedMaybe n -- freeStyleBuildClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleBuildUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildActions :: Maybe [CauseAction]
    <*> arbitraryReducedMaybe n -- freeStyleBuildBuilding :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleBuildDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildDuration :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleBuildEstimatedDuration :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleBuildExecutor :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildFullDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildId :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildKeepLog :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleBuildQueueId :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleBuildResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleBuildBuiltOn :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleBuildChangeSet :: Maybe EmptyChangeLogSet
  
instance Arbitrary FreeStyleProject where
  arbitrary = sized genFreeStyleProject

genFreeStyleProject :: Int -> Gen FreeStyleProject
genFreeStyleProject n =
  FreeStyleProject
    <$> arbitraryReducedMaybe n -- freeStyleProjectClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectColor :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectActions :: Maybe [FreeStyleProjectactions]
    <*> arbitraryReducedMaybe n -- freeStyleProjectDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectDisplayNameOrNull :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectFullDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectBuildable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleProjectBuilds :: Maybe [FreeStyleBuild]
    <*> arbitraryReducedMaybe n -- freeStyleProjectFirstBuild :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- freeStyleProjectHealthReport :: Maybe [FreeStyleProjecthealthReport]
    <*> arbitraryReducedMaybe n -- freeStyleProjectInQueue :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleProjectKeepDependencies :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastBuild :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastCompletedBuild :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastFailedBuild :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastStableBuild :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastSuccessfulBuild :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastUnstableBuild :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectLastUnsuccessfulBuild :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectNextBuildNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleProjectQueueItem :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjectConcurrentBuild :: Maybe Bool
    <*> arbitraryReducedMaybe n -- freeStyleProjectScm :: Maybe NullSCM
  
instance Arbitrary FreeStyleProjectactions where
  arbitrary = sized genFreeStyleProjectactions

genFreeStyleProjectactions :: Int -> Gen FreeStyleProjectactions
genFreeStyleProjectactions n =
  FreeStyleProjectactions
    <$> arbitraryReducedMaybe n -- freeStyleProjectactionsClass :: Maybe Text
  
instance Arbitrary FreeStyleProjecthealthReport where
  arbitrary = sized genFreeStyleProjecthealthReport

genFreeStyleProjecthealthReport :: Int -> Gen FreeStyleProjecthealthReport
genFreeStyleProjecthealthReport n =
  FreeStyleProjecthealthReport
    <$> arbitraryReducedMaybe n -- freeStyleProjecthealthReportDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjecthealthReportIconClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjecthealthReportIconUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- freeStyleProjecthealthReportScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- freeStyleProjecthealthReportClass :: Maybe Text
  
instance Arbitrary GenericResource where
  arbitrary = sized genGenericResource

genGenericResource :: Int -> Gen GenericResource
genGenericResource n =
  GenericResource
    <$> arbitraryReducedMaybe n -- genericResourceClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- genericResourceDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- genericResourceDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- genericResourceId :: Maybe Text
    <*> arbitraryReducedMaybe n -- genericResourceResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- genericResourceStartTime :: Maybe Text
  
instance Arbitrary GithubContent where
  arbitrary = sized genGithubContent

genGithubContent :: Int -> Gen GithubContent
genGithubContent n =
  GithubContent
    <$> arbitraryReducedMaybe n -- githubContentName :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentSha :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentRepo :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- githubContentOwner :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentPath :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubContentBase64Data :: Maybe Text
  
instance Arbitrary GithubFile where
  arbitrary = sized genGithubFile

genGithubFile :: Int -> Gen GithubFile
genGithubFile n =
  GithubFile
    <$> arbitraryReducedMaybe n -- githubFileContent :: Maybe GithubContent
    <*> arbitraryReducedMaybe n -- githubFileClass :: Maybe Text
  
instance Arbitrary GithubOrganization where
  arbitrary = sized genGithubOrganization

genGithubOrganization :: Int -> Gen GithubOrganization
genGithubOrganization n =
  GithubOrganization
    <$> arbitraryReducedMaybe n -- githubOrganizationClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubOrganizationLinks :: Maybe GithubOrganizationlinks
    <*> arbitraryReducedMaybe n -- githubOrganizationJenkinsOrganizationPipeline :: Maybe Bool
    <*> arbitraryReducedMaybe n -- githubOrganizationName :: Maybe Text
  
instance Arbitrary GithubOrganizationlinks where
  arbitrary = sized genGithubOrganizationlinks

genGithubOrganizationlinks :: Int -> Gen GithubOrganizationlinks
genGithubOrganizationlinks n =
  GithubOrganizationlinks
    <$> arbitraryReducedMaybe n -- githubOrganizationlinksRepositories :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubOrganizationlinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubOrganizationlinksClass :: Maybe Text
  
instance Arbitrary GithubRepositories where
  arbitrary = sized genGithubRepositories

genGithubRepositories :: Int -> Gen GithubRepositories
genGithubRepositories n =
  GithubRepositories
    <$> arbitraryReducedMaybe n -- githubRepositoriesClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRepositoriesLinks :: Maybe GithubRepositorieslinks
    <*> arbitraryReducedMaybe n -- githubRepositoriesItems :: Maybe [GithubRepository]
    <*> arbitraryReducedMaybe n -- githubRepositoriesLastPage :: Maybe Int
    <*> arbitraryReducedMaybe n -- githubRepositoriesNextPage :: Maybe Int
    <*> arbitraryReducedMaybe n -- githubRepositoriesPageSize :: Maybe Int
  
instance Arbitrary GithubRepositorieslinks where
  arbitrary = sized genGithubRepositorieslinks

genGithubRepositorieslinks :: Int -> Gen GithubRepositorieslinks
genGithubRepositorieslinks n =
  GithubRepositorieslinks
    <$> arbitraryReducedMaybe n -- githubRepositorieslinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubRepositorieslinksClass :: Maybe Text
  
instance Arbitrary GithubRepository where
  arbitrary = sized genGithubRepository

genGithubRepository :: Int -> Gen GithubRepository
genGithubRepository n =
  GithubRepository
    <$> arbitraryReducedMaybe n -- githubRepositoryClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRepositoryLinks :: Maybe GithubRepositorylinks
    <*> arbitraryReducedMaybe n -- githubRepositoryDefaultBranch :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRepositoryDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRepositoryName :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRepositoryPermissions :: Maybe GithubRepositorypermissions
    <*> arbitraryReducedMaybe n -- githubRepositoryPrivate :: Maybe Bool
    <*> arbitraryReducedMaybe n -- githubRepositoryFullName :: Maybe Text
  
instance Arbitrary GithubRepositorylinks where
  arbitrary = sized genGithubRepositorylinks

genGithubRepositorylinks :: Int -> Gen GithubRepositorylinks
genGithubRepositorylinks n =
  GithubRepositorylinks
    <$> arbitraryReducedMaybe n -- githubRepositorylinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubRepositorylinksClass :: Maybe Text
  
instance Arbitrary GithubRepositorypermissions where
  arbitrary = sized genGithubRepositorypermissions

genGithubRepositorypermissions :: Int -> Gen GithubRepositorypermissions
genGithubRepositorypermissions n =
  GithubRepositorypermissions
    <$> arbitraryReducedMaybe n -- githubRepositorypermissionsAdmin :: Maybe Bool
    <*> arbitraryReducedMaybe n -- githubRepositorypermissionsPush :: Maybe Bool
    <*> arbitraryReducedMaybe n -- githubRepositorypermissionsPull :: Maybe Bool
    <*> arbitraryReducedMaybe n -- githubRepositorypermissionsClass :: Maybe Text
  
instance Arbitrary GithubRespositoryContainer where
  arbitrary = sized genGithubRespositoryContainer

genGithubRespositoryContainer :: Int -> Gen GithubRespositoryContainer
genGithubRespositoryContainer n =
  GithubRespositoryContainer
    <$> arbitraryReducedMaybe n -- githubRespositoryContainerClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubRespositoryContainerLinks :: Maybe GithubRespositoryContainerlinks
    <*> arbitraryReducedMaybe n -- githubRespositoryContainerRepositories :: Maybe GithubRepositories
  
instance Arbitrary GithubRespositoryContainerlinks where
  arbitrary = sized genGithubRespositoryContainerlinks

genGithubRespositoryContainerlinks :: Int -> Gen GithubRespositoryContainerlinks
genGithubRespositoryContainerlinks n =
  GithubRespositoryContainerlinks
    <$> arbitraryReducedMaybe n -- githubRespositoryContainerlinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubRespositoryContainerlinksClass :: Maybe Text
  
instance Arbitrary GithubScm where
  arbitrary = sized genGithubScm

genGithubScm :: Int -> Gen GithubScm
genGithubScm n =
  GithubScm
    <$> arbitraryReducedMaybe n -- githubScmClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubScmLinks :: Maybe GithubScmlinks
    <*> arbitraryReducedMaybe n -- githubScmCredentialId :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubScmId :: Maybe Text
    <*> arbitraryReducedMaybe n -- githubScmUri :: Maybe Text
  
instance Arbitrary GithubScmlinks where
  arbitrary = sized genGithubScmlinks

genGithubScmlinks :: Int -> Gen GithubScmlinks
genGithubScmlinks n =
  GithubScmlinks
    <$> arbitraryReducedMaybe n -- githubScmlinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- githubScmlinksClass :: Maybe Text
  
instance Arbitrary Hudson where
  arbitrary = sized genHudson

genHudson :: Int -> Gen Hudson
genHudson n =
  Hudson
    <$> arbitraryReducedMaybe n -- hudsonClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonAssignedLabels :: Maybe [HudsonassignedLabels]
    <*> arbitraryReducedMaybe n -- hudsonMode :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonNodeDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonNodeName :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonNumExecutors :: Maybe Int
    <*> arbitraryReducedMaybe n -- hudsonDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonJobs :: Maybe [FreeStyleProject]
    <*> arbitraryReducedMaybe n -- hudsonPrimaryView :: Maybe AllView
    <*> arbitraryReducedMaybe n -- hudsonQuietingDown :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonSlaveAgentPort :: Maybe Int
    <*> arbitraryReducedMaybe n -- hudsonUnlabeledLoad :: Maybe UnlabeledLoadStatistics
    <*> arbitraryReducedMaybe n -- hudsonUseCrumbs :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonUseSecurity :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonViews :: Maybe [AllView]
  
instance Arbitrary HudsonMasterComputer where
  arbitrary = sized genHudsonMasterComputer

genHudsonMasterComputer :: Int -> Gen HudsonMasterComputer
genHudsonMasterComputer n =
  HudsonMasterComputer
    <$> arbitraryReducedMaybe n -- hudsonMasterComputerClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerExecutors :: Maybe [HudsonMasterComputerexecutors]
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerIcon :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerIconClassName :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerIdle :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerJnlpAgent :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerLaunchSupported :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerLoadStatistics :: Maybe Label1
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerManualLaunchAllowed :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerMonitorData :: Maybe HudsonMasterComputermonitorData
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerNumExecutors :: Maybe Int
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerOffline :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerOfflineCause :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerOfflineCauseReason :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerTemporarilyOffline :: Maybe Bool
  
instance Arbitrary HudsonMasterComputerexecutors where
  arbitrary = sized genHudsonMasterComputerexecutors

genHudsonMasterComputerexecutors :: Int -> Gen HudsonMasterComputerexecutors
genHudsonMasterComputerexecutors n =
  HudsonMasterComputerexecutors
    <$> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsCurrentExecutable :: Maybe FreeStyleBuild
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsIdle :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsLikelyStuck :: Maybe Bool
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsProgress :: Maybe Int
    <*> arbitraryReducedMaybe n -- hudsonMasterComputerexecutorsClass :: Maybe Text
  
instance Arbitrary HudsonMasterComputermonitorData where
  arbitrary = sized genHudsonMasterComputermonitorData

genHudsonMasterComputermonitorData :: Int -> Gen HudsonMasterComputermonitorData
genHudsonMasterComputermonitorData n =
  HudsonMasterComputermonitorData
    <$> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsSwapSpaceMonitor :: Maybe SwapSpaceMonitorMemoryUsage2
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsTemporarySpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsDiskSpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsArchitectureMonitor :: Maybe Text
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsResponseTimeMonitor :: Maybe ResponseTimeMonitorData
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataHudsonNodeMonitorsClockMonitor :: Maybe ClockDifference
    <*> arbitraryReducedMaybe n -- hudsonMasterComputermonitorDataClass :: Maybe Text
  
instance Arbitrary HudsonassignedLabels where
  arbitrary = sized genHudsonassignedLabels

genHudsonassignedLabels :: Int -> Gen HudsonassignedLabels
genHudsonassignedLabels n =
  HudsonassignedLabels
    <$> arbitraryReducedMaybe n -- hudsonassignedLabelsClass :: Maybe Text
  
instance Arbitrary InputStepImpl where
  arbitrary = sized genInputStepImpl

genInputStepImpl :: Int -> Gen InputStepImpl
genInputStepImpl n =
  InputStepImpl
    <$> arbitraryReducedMaybe n -- inputStepImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- inputStepImplLinks :: Maybe InputStepImpllinks
    <*> arbitraryReducedMaybe n -- inputStepImplId :: Maybe Text
    <*> arbitraryReducedMaybe n -- inputStepImplMessage :: Maybe Text
    <*> arbitraryReducedMaybe n -- inputStepImplOk :: Maybe Text
    <*> arbitraryReducedMaybe n -- inputStepImplParameters :: Maybe [StringParameterDefinition]
    <*> arbitraryReducedMaybe n -- inputStepImplSubmitter :: Maybe Text
  
instance Arbitrary InputStepImpllinks where
  arbitrary = sized genInputStepImpllinks

genInputStepImpllinks :: Int -> Gen InputStepImpllinks
genInputStepImpllinks n =
  InputStepImpllinks
    <$> arbitraryReducedMaybe n -- inputStepImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- inputStepImpllinksClass :: Maybe Text
  
instance Arbitrary Label1 where
  arbitrary = sized genLabel1

genLabel1 :: Int -> Gen Label1
genLabel1 n =
  Label1
    <$> arbitraryReducedMaybe n -- label1Class :: Maybe Text
  
instance Arbitrary Link where
  arbitrary = sized genLink

genLink :: Int -> Gen Link
genLink n =
  Link
    <$> arbitraryReducedMaybe n -- linkClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- linkHref :: Maybe Text
  
instance Arbitrary ListView where
  arbitrary = sized genListView

genListView :: Int -> Gen ListView
genListView n =
  ListView
    <$> arbitraryReducedMaybe n -- listViewClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- listViewDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- listViewJobs :: Maybe [FreeStyleProject]
    <*> arbitraryReducedMaybe n -- listViewName :: Maybe Text
    <*> arbitraryReducedMaybe n -- listViewUrl :: Maybe Text
  
instance Arbitrary MultibranchPipeline where
  arbitrary = sized genMultibranchPipeline

genMultibranchPipeline :: Int -> Gen MultibranchPipeline
genMultibranchPipeline n =
  MultibranchPipeline
    <$> arbitraryReducedMaybe n -- multibranchPipelineDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- multibranchPipelineEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineLatestRun :: Maybe Text
    <*> arbitraryReducedMaybe n -- multibranchPipelineName :: Maybe Text
    <*> arbitraryReducedMaybe n -- multibranchPipelineOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- multibranchPipelineWeatherScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineBranchNames :: Maybe [Text]
    <*> arbitraryReducedMaybe n -- multibranchPipelineNumberOfFailingBranches :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineNumberOfFailingPullRequests :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineNumberOfSuccessfulBranches :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineNumberOfSuccessfulPullRequests :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineTotalNumberOfBranches :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineTotalNumberOfPullRequests :: Maybe Int
    <*> arbitraryReducedMaybe n -- multibranchPipelineClass :: Maybe Text
  
instance Arbitrary NullSCM where
  arbitrary = sized genNullSCM

genNullSCM :: Int -> Gen NullSCM
genNullSCM n =
  NullSCM
    <$> arbitraryReducedMaybe n -- nullSCMClass :: Maybe Text
  
instance Arbitrary Organisation where
  arbitrary = sized genOrganisation

genOrganisation :: Int -> Gen Organisation
genOrganisation n =
  Organisation
    <$> arbitraryReducedMaybe n -- organisationClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- organisationName :: Maybe Text
  
instance Arbitrary Pipeline where
  arbitrary = sized genPipeline

genPipeline :: Int -> Gen Pipeline
genPipeline n =
  Pipeline
    <$> arbitraryReducedMaybe n -- pipelineClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineWeatherScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineLatestRun :: Maybe PipelinelatestRun
  
instance Arbitrary PipelineActivity where
  arbitrary = sized genPipelineActivity

genPipelineActivity :: Int -> Gen PipelineActivity
genPipelineActivity n =
  PipelineActivity
    <$> arbitraryReducedMaybe n -- pipelineActivityClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityArtifacts :: Maybe [PipelineActivityartifacts]
    <*> arbitraryReducedMaybe n -- pipelineActivityDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineActivityEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineActivityEnQueueTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityEndTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityRunSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityState :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityType :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityCommitId :: Maybe Text
  
instance Arbitrary PipelineActivityartifacts where
  arbitrary = sized genPipelineActivityartifacts

genPipelineActivityartifacts :: Int -> Gen PipelineActivityartifacts
genPipelineActivityartifacts n =
  PipelineActivityartifacts
    <$> arbitraryReducedMaybe n -- pipelineActivityartifactsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityartifactsSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineActivityartifactsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineActivityartifactsClass :: Maybe Text
  
instance Arbitrary PipelineBranchesitem where
  arbitrary = sized genPipelineBranchesitem

genPipelineBranchesitem :: Int -> Gen PipelineBranchesitem
genPipelineBranchesitem n =
  PipelineBranchesitem
    <$> arbitraryReducedMaybe n -- pipelineBranchesitemDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemWeatherScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemLatestRun :: Maybe PipelineBranchesitemlatestRun
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemPullRequest :: Maybe PipelineBranchesitempullRequest
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemTotalNumberOfPullRequests :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemClass :: Maybe Text
  
instance Arbitrary PipelineBranchesitemlatestRun where
  arbitrary = sized genPipelineBranchesitemlatestRun

genPipelineBranchesitemlatestRun :: Int -> Gen PipelineBranchesitemlatestRun
genPipelineBranchesitemlatestRun n =
  PipelineBranchesitemlatestRun
    <$> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunEnQueueTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunEndTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunRunSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunState :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunType :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunCommitId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitemlatestRunClass :: Maybe Text
  
instance Arbitrary PipelineBranchesitempullRequest where
  arbitrary = sized genPipelineBranchesitempullRequest

genPipelineBranchesitempullRequest :: Int -> Gen PipelineBranchesitempullRequest
genPipelineBranchesitempullRequest n =
  PipelineBranchesitempullRequest
    <$> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestLinks :: Maybe PipelineBranchesitempullRequestlinks
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestAuthor :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestTitle :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestClass :: Maybe Text
  
instance Arbitrary PipelineBranchesitempullRequestlinks where
  arbitrary = sized genPipelineBranchesitempullRequestlinks

genPipelineBranchesitempullRequestlinks :: Int -> Gen PipelineBranchesitempullRequestlinks
genPipelineBranchesitempullRequestlinks n =
  PipelineBranchesitempullRequestlinks
    <$> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestlinksSelf :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineBranchesitempullRequestlinksClass :: Maybe Text
  
instance Arbitrary PipelineFolderImpl where
  arbitrary = sized genPipelineFolderImpl

genPipelineFolderImpl :: Int -> Gen PipelineFolderImpl
genPipelineFolderImpl n =
  PipelineFolderImpl
    <$> arbitraryReducedMaybe n -- pipelineFolderImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFolderImplDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFolderImplFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFolderImplName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFolderImplOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineFolderImplNumberOfFolders :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineFolderImplNumberOfPipelines :: Maybe Int
  
instance Arbitrary PipelineImpl where
  arbitrary = sized genPipelineImpl

genPipelineImpl :: Int -> Gen PipelineImpl
genPipelineImpl n =
  PipelineImpl
    <$> arbitraryReducedMaybe n -- pipelineImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineImplFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplLatestRun :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineImplWeatherScore :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineImplLinks :: Maybe PipelineImpllinks
  
instance Arbitrary PipelineImpllinks where
  arbitrary = sized genPipelineImpllinks

genPipelineImpllinks :: Int -> Gen PipelineImpllinks
genPipelineImpllinks n =
  PipelineImpllinks
    <$> arbitraryReducedMaybe n -- pipelineImpllinksRuns :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineImpllinksQueue :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineImpllinksActions :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineImpllinksClass :: Maybe Text
  
instance Arbitrary PipelineRun where
  arbitrary = sized genPipelineRun

genPipelineRun :: Int -> Gen PipelineRun
genPipelineRun n =
  PipelineRun
    <$> arbitraryReducedMaybe n -- pipelineRunClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunArtifacts :: Maybe [PipelineRunartifacts]
    <*> arbitraryReducedMaybe n -- pipelineRunDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunEnQueueTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunEndTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunRunSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunState :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunType :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunCommitId :: Maybe Text
  
instance Arbitrary PipelineRunImpl where
  arbitrary = sized genPipelineRunImpl

genPipelineRunImpl :: Int -> Gen PipelineRunImpl
genPipelineRunImpl n =
  PipelineRunImpl
    <$> arbitraryReducedMaybe n -- pipelineRunImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplLinks :: Maybe PipelineRunImpllinks
    <*> arbitraryReducedMaybe n -- pipelineRunImplDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunImplEnQueueTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplEndTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunImplId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplRunSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplState :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplType :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunImplCommitId :: Maybe Text
  
instance Arbitrary PipelineRunImpllinks where
  arbitrary = sized genPipelineRunImpllinks

genPipelineRunImpllinks :: Int -> Gen PipelineRunImpllinks
genPipelineRunImpllinks n =
  PipelineRunImpllinks
    <$> arbitraryReducedMaybe n -- pipelineRunImpllinksNodes :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineRunImpllinksLog :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineRunImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineRunImpllinksActions :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineRunImpllinksSteps :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineRunImpllinksClass :: Maybe Text
  
instance Arbitrary PipelineRunNode where
  arbitrary = sized genPipelineRunNode

genPipelineRunNode :: Int -> Gen PipelineRunNode
genPipelineRunNode n =
  PipelineRunNode
    <$> arbitraryReducedMaybe n -- pipelineRunNodeClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunNodeEdges :: Maybe [PipelineRunNodeedges]
    <*> arbitraryReducedMaybe n -- pipelineRunNodeId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeState :: Maybe Text
  
instance Arbitrary PipelineRunNodeedges where
  arbitrary = sized genPipelineRunNodeedges

genPipelineRunNodeedges :: Int -> Gen PipelineRunNodeedges
genPipelineRunNodeedges n =
  PipelineRunNodeedges
    <$> arbitraryReducedMaybe n -- pipelineRunNodeedgesId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunNodeedgesClass :: Maybe Text
  
instance Arbitrary PipelineRunartifacts where
  arbitrary = sized genPipelineRunartifacts

genPipelineRunartifacts :: Int -> Gen PipelineRunartifacts
genPipelineRunartifacts n =
  PipelineRunartifacts
    <$> arbitraryReducedMaybe n -- pipelineRunartifactsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunartifactsSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineRunartifactsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineRunartifactsClass :: Maybe Text
  
instance Arbitrary PipelineStepImpl where
  arbitrary = sized genPipelineStepImpl

genPipelineStepImpl :: Int -> Gen PipelineStepImpl
genPipelineStepImpl n =
  PipelineStepImpl
    <$> arbitraryReducedMaybe n -- pipelineStepImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineStepImplLinks :: Maybe PipelineStepImpllinks
    <*> arbitraryReducedMaybe n -- pipelineStepImplDisplayName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineStepImplDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelineStepImplId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineStepImplInput :: Maybe InputStepImpl
    <*> arbitraryReducedMaybe n -- pipelineStepImplResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineStepImplStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelineStepImplState :: Maybe Text
  
instance Arbitrary PipelineStepImpllinks where
  arbitrary = sized genPipelineStepImpllinks

genPipelineStepImpllinks :: Int -> Gen PipelineStepImpllinks
genPipelineStepImpllinks n =
  PipelineStepImpllinks
    <$> arbitraryReducedMaybe n -- pipelineStepImpllinksSelf :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineStepImpllinksActions :: Maybe Link
    <*> arbitraryReducedMaybe n -- pipelineStepImpllinksClass :: Maybe Text
  
instance Arbitrary PipelinelatestRun where
  arbitrary = sized genPipelinelatestRun

genPipelinelatestRun :: Int -> Gen PipelinelatestRun
genPipelinelatestRun n =
  PipelinelatestRun
    <$> arbitraryReducedMaybe n -- pipelinelatestRunArtifacts :: Maybe [PipelinelatestRunartifacts]
    <*> arbitraryReducedMaybe n -- pipelinelatestRunDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelinelatestRunEstimatedDurationInMillis :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelinelatestRunEnQueueTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunEndTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunOrganization :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunResult :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunRunSummary :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunStartTime :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunState :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunType :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunCommitId :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunClass :: Maybe Text
  
instance Arbitrary PipelinelatestRunartifacts where
  arbitrary = sized genPipelinelatestRunartifacts

genPipelinelatestRunartifacts :: Int -> Gen PipelinelatestRunartifacts
genPipelinelatestRunartifacts n =
  PipelinelatestRunartifacts
    <$> arbitraryReducedMaybe n -- pipelinelatestRunartifactsName :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunartifactsSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- pipelinelatestRunartifactsUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- pipelinelatestRunartifactsClass :: Maybe Text
  
instance Arbitrary Queue where
  arbitrary = sized genQueue

genQueue :: Int -> Gen Queue
genQueue n =
  Queue
    <$> arbitraryReducedMaybe n -- queueClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueItems :: Maybe [QueueBlockedItem]
  
instance Arbitrary QueueBlockedItem where
  arbitrary = sized genQueueBlockedItem

genQueueBlockedItem :: Int -> Gen QueueBlockedItem
genQueueBlockedItem n =
  QueueBlockedItem
    <$> arbitraryReducedMaybe n -- queueBlockedItemClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueBlockedItemActions :: Maybe [CauseAction]
    <*> arbitraryReducedMaybe n -- queueBlockedItemBlocked :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueBlockedItemBuildable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueBlockedItemId :: Maybe Int
    <*> arbitraryReducedMaybe n -- queueBlockedItemInQueueSince :: Maybe Int
    <*> arbitraryReducedMaybe n -- queueBlockedItemParams :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueBlockedItemStuck :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueBlockedItemTask :: Maybe FreeStyleProject
    <*> arbitraryReducedMaybe n -- queueBlockedItemUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueBlockedItemWhy :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueBlockedItemBuildableStartMilliseconds :: Maybe Int
  
instance Arbitrary QueueItemImpl where
  arbitrary = sized genQueueItemImpl

genQueueItemImpl :: Int -> Gen QueueItemImpl
genQueueItemImpl n =
  QueueItemImpl
    <$> arbitraryReducedMaybe n -- queueItemImplClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueItemImplExpectedBuildNumber :: Maybe Int
    <*> arbitraryReducedMaybe n -- queueItemImplId :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueItemImplPipeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueItemImplQueuedTime :: Maybe Int
  
instance Arbitrary QueueLeftItem where
  arbitrary = sized genQueueLeftItem

genQueueLeftItem :: Int -> Gen QueueLeftItem
genQueueLeftItem n =
  QueueLeftItem
    <$> arbitraryReducedMaybe n -- queueLeftItemClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueLeftItemActions :: Maybe [CauseAction]
    <*> arbitraryReducedMaybe n -- queueLeftItemBlocked :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueLeftItemBuildable :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueLeftItemId :: Maybe Int
    <*> arbitraryReducedMaybe n -- queueLeftItemInQueueSince :: Maybe Int
    <*> arbitraryReducedMaybe n -- queueLeftItemParams :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueLeftItemStuck :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueLeftItemTask :: Maybe FreeStyleProject
    <*> arbitraryReducedMaybe n -- queueLeftItemUrl :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueLeftItemWhy :: Maybe Text
    <*> arbitraryReducedMaybe n -- queueLeftItemCancelled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queueLeftItemExecutable :: Maybe FreeStyleBuild
  
instance Arbitrary ResponseTimeMonitorData where
  arbitrary = sized genResponseTimeMonitorData

genResponseTimeMonitorData :: Int -> Gen ResponseTimeMonitorData
genResponseTimeMonitorData n =
  ResponseTimeMonitorData
    <$> arbitraryReducedMaybe n -- responseTimeMonitorDataClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseTimeMonitorDataTimestamp :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseTimeMonitorDataAverage :: Maybe Int
  
instance Arbitrary StringParameterDefinition where
  arbitrary = sized genStringParameterDefinition

genStringParameterDefinition :: Int -> Gen StringParameterDefinition
genStringParameterDefinition n =
  StringParameterDefinition
    <$> arbitraryReducedMaybe n -- stringParameterDefinitionClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- stringParameterDefinitionDefaultParameterValue :: Maybe StringParameterValue
    <*> arbitraryReducedMaybe n -- stringParameterDefinitionDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- stringParameterDefinitionName :: Maybe Text
    <*> arbitraryReducedMaybe n -- stringParameterDefinitionType :: Maybe Text
  
instance Arbitrary StringParameterValue where
  arbitrary = sized genStringParameterValue

genStringParameterValue :: Int -> Gen StringParameterValue
genStringParameterValue n =
  StringParameterValue
    <$> arbitraryReducedMaybe n -- stringParameterValueClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- stringParameterValueName :: Maybe Text
    <*> arbitraryReducedMaybe n -- stringParameterValueValue :: Maybe Text
  
instance Arbitrary SwapSpaceMonitorMemoryUsage2 where
  arbitrary = sized genSwapSpaceMonitorMemoryUsage2

genSwapSpaceMonitorMemoryUsage2 :: Int -> Gen SwapSpaceMonitorMemoryUsage2
genSwapSpaceMonitorMemoryUsage2 n =
  SwapSpaceMonitorMemoryUsage2
    <$> arbitraryReducedMaybe n -- swapSpaceMonitorMemoryUsage2Class :: Maybe Text
    <*> arbitraryReducedMaybe n -- swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Maybe Int
    <*> arbitraryReducedMaybe n -- swapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Maybe Int
    <*> arbitraryReducedMaybe n -- swapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Maybe Int
    <*> arbitraryReducedMaybe n -- swapSpaceMonitorMemoryUsage2TotalSwapSpace :: Maybe Int
  
instance Arbitrary UnlabeledLoadStatistics where
  arbitrary = sized genUnlabeledLoadStatistics

genUnlabeledLoadStatistics :: Int -> Gen UnlabeledLoadStatistics
genUnlabeledLoadStatistics n =
  UnlabeledLoadStatistics
    <$> arbitraryReducedMaybe n -- unlabeledLoadStatisticsClass :: Maybe Text
  
instance Arbitrary User where
  arbitrary = sized genUser

genUser :: Int -> Gen User
genUser n =
  User
    <$> arbitraryReducedMaybe n -- userClass :: Maybe Text
    <*> arbitraryReducedMaybe n -- userId :: Maybe Text
    <*> arbitraryReducedMaybe n -- userFullName :: Maybe Text
    <*> arbitraryReducedMaybe n -- userEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- userName :: Maybe Text
  



