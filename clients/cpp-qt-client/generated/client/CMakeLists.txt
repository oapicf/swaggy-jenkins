cmake_minimum_required(VERSION 3.5)

project(QtOpenAPIClient)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIAllView.h
  OAIBranchImpl.h
  OAIBranchImpllinks.h
  OAIBranchImplpermissions.h
  OAICauseAction.h
  OAICauseUserIdCause.h
  OAIClassesByClass.h
  OAIClockDifference.h
  OAIComputerSet.h
  OAIDefaultCrumbIssuer.h
  OAIDiskSpaceMonitorDescriptorDiskSpace.h
  OAIEmptyChangeLogSet.h
  OAIExtensionClassContainerImpl1.h
  OAIExtensionClassContainerImpl1links.h
  OAIExtensionClassContainerImpl1map.h
  OAIExtensionClassImpl.h
  OAIExtensionClassImpllinks.h
  OAIFavoriteImpl.h
  OAIFavoriteImpllinks.h
  OAIFreeStyleBuild.h
  OAIFreeStyleProject.h
  OAIFreeStyleProjectactions.h
  OAIFreeStyleProjecthealthReport.h
  OAIGenericResource.h
  OAIGithubContent.h
  OAIGithubFile.h
  OAIGithubOrganization.h
  OAIGithubOrganizationlinks.h
  OAIGithubRepositories.h
  OAIGithubRepositorieslinks.h
  OAIGithubRepository.h
  OAIGithubRepositorylinks.h
  OAIGithubRepositorypermissions.h
  OAIGithubRespositoryContainer.h
  OAIGithubRespositoryContainerlinks.h
  OAIGithubScm.h
  OAIGithubScmlinks.h
  OAIHudson.h
  OAIHudsonMasterComputer.h
  OAIHudsonMasterComputerexecutors.h
  OAIHudsonMasterComputermonitorData.h
  OAIHudsonassignedLabels.h
  OAIInputStepImpl.h
  OAIInputStepImpllinks.h
  OAILabel1.h
  OAILink.h
  OAIListView.h
  OAIMultibranchPipeline.h
  OAINullSCM.h
  OAIOrganisation.h
  OAIPipeline.h
  OAIPipelineActivity.h
  OAIPipelineActivityartifacts.h
  OAIPipelineBranchesitem.h
  OAIPipelineBranchesitemlatestRun.h
  OAIPipelineBranchesitempullRequest.h
  OAIPipelineBranchesitempullRequestlinks.h
  OAIPipelineFolderImpl.h
  OAIPipelineImpl.h
  OAIPipelineImpllinks.h
  OAIPipelineRun.h
  OAIPipelineRunImpl.h
  OAIPipelineRunImpllinks.h
  OAIPipelineRunNode.h
  OAIPipelineRunNodeedges.h
  OAIPipelineRunartifacts.h
  OAIPipelineStepImpl.h
  OAIPipelineStepImpllinks.h
  OAIPipelinelatestRun.h
  OAIPipelinelatestRunartifacts.h
  OAIQueue.h
  OAIQueueBlockedItem.h
  OAIQueueItemImpl.h
  OAIQueueLeftItem.h
  OAIResponseTimeMonitorData.h
  OAIStringParameterDefinition.h
  OAIStringParameterValue.h
  OAISwapSpaceMonitorMemoryUsage2.h
  OAIUnlabeledLoadStatistics.h
  OAIUser.h
  OAIBaseApi.h
  OAIBlueOceanApi.h
  OAIRemoteAccessApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
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

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
