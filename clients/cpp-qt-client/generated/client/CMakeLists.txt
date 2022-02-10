cmake_minimum_required(VERSION 3.2)

project(client)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else ()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
endif ()

find_package(Qt5Core REQUIRED)
find_package(Qt5Network REQUIRED)

add_library(${PROJECT_NAME}
    OAIAllView.cpp
    OAIBranchImpl.cpp
    OAIBranchImpllinks.cpp
    OAIBranchImplpermissions.cpp
    OAICauseAction.cpp
    OAICauseUserIdCause.cpp
    OAIClassesByClass.cpp
    OAIClockDifference.cpp
    OAIComputerSet.cpp
    OAIDefaultCrumbIssuer.cpp
    OAIDiskSpaceMonitorDescriptorDiskSpace.cpp
    OAIEmptyChangeLogSet.cpp
    OAIExtensionClassContainerImpl1.cpp
    OAIExtensionClassContainerImpl1links.cpp
    OAIExtensionClassContainerImpl1map.cpp
    OAIExtensionClassImpl.cpp
    OAIExtensionClassImpllinks.cpp
    OAIFavoriteImpl.cpp
    OAIFavoriteImpllinks.cpp
    OAIFreeStyleBuild.cpp
    OAIFreeStyleProject.cpp
    OAIFreeStyleProjectactions.cpp
    OAIFreeStyleProjecthealthReport.cpp
    OAIGenericResource.cpp
    OAIGithubContent.cpp
    OAIGithubFile.cpp
    OAIGithubOrganization.cpp
    OAIGithubOrganizationlinks.cpp
    OAIGithubRepositories.cpp
    OAIGithubRepositorieslinks.cpp
    OAIGithubRepository.cpp
    OAIGithubRepositorylinks.cpp
    OAIGithubRepositorypermissions.cpp
    OAIGithubRespositoryContainer.cpp
    OAIGithubRespositoryContainerlinks.cpp
    OAIGithubScm.cpp
    OAIGithubScmlinks.cpp
    OAIHudson.cpp
    OAIHudsonMasterComputer.cpp
    OAIHudsonMasterComputerexecutors.cpp
    OAIHudsonMasterComputermonitorData.cpp
    OAIHudsonassignedLabels.cpp
    OAIInputStepImpl.cpp
    OAIInputStepImpllinks.cpp
    OAILabel1.cpp
    OAILink.cpp
    OAIListView.cpp
    OAIMultibranchPipeline.cpp
    OAINullSCM.cpp
    OAIOrganisation.cpp
    OAIPipeline.cpp
    OAIPipelineActivity.cpp
    OAIPipelineActivityartifacts.cpp
    OAIPipelineBranchesitem.cpp
    OAIPipelineBranchesitemlatestRun.cpp
    OAIPipelineBranchesitempullRequest.cpp
    OAIPipelineBranchesitempullRequestlinks.cpp
    OAIPipelineFolderImpl.cpp
    OAIPipelineImpl.cpp
    OAIPipelineImpllinks.cpp
    OAIPipelineRun.cpp
    OAIPipelineRunImpl.cpp
    OAIPipelineRunImpllinks.cpp
    OAIPipelineRunNode.cpp
    OAIPipelineRunNodeedges.cpp
    OAIPipelineRunartifacts.cpp
    OAIPipelineStepImpl.cpp
    OAIPipelineStepImpllinks.cpp
    OAIPipelinelatestRun.cpp
    OAIPipelinelatestRunartifacts.cpp
    OAIQueue.cpp
    OAIQueueBlockedItem.cpp
    OAIQueueItemImpl.cpp
    OAIQueueLeftItem.cpp
    OAIResponseTimeMonitorData.cpp
    OAIStringParameterDefinition.cpp
    OAIStringParameterValue.cpp
    OAISwapSpaceMonitorMemoryUsage2.cpp
    OAIUnlabeledLoadStatistics.cpp
    OAIUser.cpp
    OAIBaseApi.cpp
    OAIBlueOceanApi.cpp
    OAIRemoteAccessApi.cpp
    OAIHelpers.cpp
    OAIHttpRequest.cpp
    OAIHttpFileElement.cpp
    OAIOauth.cpp
)
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Network)
if(NOT APPLE)
  target_link_libraries(${PROJECT_NAME} PRIVATE ssl crypto)
endif()

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_EXTENSIONS OFF)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
