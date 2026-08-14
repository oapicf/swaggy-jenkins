cmake_minimum_required(VERSION 3.14)
project(CppBoostBeastOpenAPIClient VERSION 1.0.0 LANGUAGES CXX)

include(GNUInstallDirs)

if (POLICY CMP0167)
    cmake_policy(SET CMP0167 OLD)
endif ()

find_package(Boost 1.75 REQUIRED)
set(THREADS_TARGET_PREDEFINED FALSE)
if (TARGET Threads::Threads)
    set(THREADS_TARGET_PREDEFINED TRUE)
endif ()
set(THREADS_PREFER_PTHREAD_FLAG TRUE)
find_package(Threads REQUIRED)

if (NOT THREADS_TARGET_PREDEFINED)
    set_property(TARGET Threads::Threads PROPERTY IMPORTED_GLOBAL TRUE)
endif ()

set(OPENSSL_SSL_TARGET_PREDEFINED FALSE)
set(OPENSSL_CRYPTO_TARGET_PREDEFINED FALSE)
if (TARGET OpenSSL::SSL)
    set(OPENSSL_SSL_TARGET_PREDEFINED TRUE)
endif ()
if (TARGET OpenSSL::Crypto)
    set(OPENSSL_CRYPTO_TARGET_PREDEFINED TRUE)
endif ()

find_package(OpenSSL 1.1.0 REQUIRED COMPONENTS SSL Crypto)

# Imported targets created in this subdirectory are otherwise invisible to
# sibling consumers when this project is included with add_subdirectory().
if (NOT OPENSSL_SSL_TARGET_PREDEFINED)
    set_property(TARGET OpenSSL::SSL PROPERTY IMPORTED_GLOBAL TRUE)
endif ()
if (NOT OPENSSL_CRYPTO_TARGET_PREDEFINED)
    set_property(TARGET OpenSSL::Crypto PROPERTY IMPORTED_GLOBAL TRUE)
endif ()


if (MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else ()
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall")
endif ()


add_library(${PROJECT_NAME} SHARED)

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_EXTENSIONS OFF)

target_sources(${PROJECT_NAME} PRIVATE
# models
    model/AllView.cpp
    model/AllView.h
    model/BranchImpl.cpp
    model/BranchImpl.h
    model/BranchImpllinks.cpp
    model/BranchImpllinks.h
    model/BranchImplpermissions.cpp
    model/BranchImplpermissions.h
    model/CauseAction.cpp
    model/CauseAction.h
    model/CauseUserIdCause.cpp
    model/CauseUserIdCause.h
    model/ClassesByClass.cpp
    model/ClassesByClass.h
    model/ClockDifference.cpp
    model/ClockDifference.h
    model/ComputerSet.cpp
    model/ComputerSet.h
    model/DefaultCrumbIssuer.cpp
    model/DefaultCrumbIssuer.h
    model/DiskSpaceMonitorDescriptorDiskSpace.cpp
    model/DiskSpaceMonitorDescriptorDiskSpace.h
    model/EmptyChangeLogSet.cpp
    model/EmptyChangeLogSet.h
    model/ExtensionClassContainerImpl1.cpp
    model/ExtensionClassContainerImpl1.h
    model/ExtensionClassContainerImpl1links.cpp
    model/ExtensionClassContainerImpl1links.h
    model/ExtensionClassContainerImpl1map.cpp
    model/ExtensionClassContainerImpl1map.h
    model/ExtensionClassImpl.cpp
    model/ExtensionClassImpl.h
    model/ExtensionClassImpllinks.cpp
    model/ExtensionClassImpllinks.h
    model/FavoriteImpl.cpp
    model/FavoriteImpl.h
    model/FavoriteImpllinks.cpp
    model/FavoriteImpllinks.h
    model/FreeStyleBuild.cpp
    model/FreeStyleBuild.h
    model/FreeStyleProject.cpp
    model/FreeStyleProject.h
    model/FreeStyleProjectactions.cpp
    model/FreeStyleProjectactions.h
    model/FreeStyleProjecthealthReport.cpp
    model/FreeStyleProjecthealthReport.h
    model/GenericResource.cpp
    model/GenericResource.h
    model/GithubContent.cpp
    model/GithubContent.h
    model/GithubFile.cpp
    model/GithubFile.h
    model/GithubOrganization.cpp
    model/GithubOrganization.h
    model/GithubOrganizationlinks.cpp
    model/GithubOrganizationlinks.h
    model/GithubRepositories.cpp
    model/GithubRepositories.h
    model/GithubRepositorieslinks.cpp
    model/GithubRepositorieslinks.h
    model/GithubRepository.cpp
    model/GithubRepository.h
    model/GithubRepositorylinks.cpp
    model/GithubRepositorylinks.h
    model/GithubRepositorypermissions.cpp
    model/GithubRepositorypermissions.h
    model/GithubRespositoryContainer.cpp
    model/GithubRespositoryContainer.h
    model/GithubRespositoryContainerlinks.cpp
    model/GithubRespositoryContainerlinks.h
    model/GithubScm.cpp
    model/GithubScm.h
    model/GithubScmlinks.cpp
    model/GithubScmlinks.h
    model/Hudson.cpp
    model/Hudson.h
    model/HudsonMasterComputer.cpp
    model/HudsonMasterComputer.h
    model/HudsonMasterComputerexecutors.cpp
    model/HudsonMasterComputerexecutors.h
    model/HudsonMasterComputermonitorData.cpp
    model/HudsonMasterComputermonitorData.h
    model/HudsonassignedLabels.cpp
    model/HudsonassignedLabels.h
    model/InputStepImpl.cpp
    model/InputStepImpl.h
    model/InputStepImpllinks.cpp
    model/InputStepImpllinks.h
    model/Label1.cpp
    model/Label1.h
    model/Link.cpp
    model/Link.h
    model/ListView.cpp
    model/ListView.h
    model/MultibranchPipeline.cpp
    model/MultibranchPipeline.h
    model/NullSCM.cpp
    model/NullSCM.h
    model/Organisation.cpp
    model/Organisation.h
    model/Pipeline.cpp
    model/Pipeline.h
    model/PipelineActivity.cpp
    model/PipelineActivity.h
    model/PipelineActivityartifacts.cpp
    model/PipelineActivityartifacts.h
    model/PipelineBranchesitem.cpp
    model/PipelineBranchesitem.h
    model/PipelineBranchesitemlatestRun.cpp
    model/PipelineBranchesitemlatestRun.h
    model/PipelineBranchesitempullRequest.cpp
    model/PipelineBranchesitempullRequest.h
    model/PipelineBranchesitempullRequestlinks.cpp
    model/PipelineBranchesitempullRequestlinks.h
    model/PipelineFolderImpl.cpp
    model/PipelineFolderImpl.h
    model/PipelineImpl.cpp
    model/PipelineImpl.h
    model/PipelineImpllinks.cpp
    model/PipelineImpllinks.h
    model/PipelineRun.cpp
    model/PipelineRun.h
    model/PipelineRunImpl.cpp
    model/PipelineRunImpl.h
    model/PipelineRunImpllinks.cpp
    model/PipelineRunImpllinks.h
    model/PipelineRunNode.cpp
    model/PipelineRunNode.h
    model/PipelineRunNodeedges.cpp
    model/PipelineRunNodeedges.h
    model/PipelineRunartifacts.cpp
    model/PipelineRunartifacts.h
    model/PipelineStepImpl.cpp
    model/PipelineStepImpl.h
    model/PipelineStepImpllinks.cpp
    model/PipelineStepImpllinks.h
    model/PipelinelatestRun.cpp
    model/PipelinelatestRun.h
    model/PipelinelatestRunartifacts.cpp
    model/PipelinelatestRunartifacts.h
    model/Queue.cpp
    model/Queue.h
    model/QueueBlockedItem.cpp
    model/QueueBlockedItem.h
    model/QueueItemImpl.cpp
    model/QueueItemImpl.h
    model/QueueLeftItem.cpp
    model/QueueLeftItem.h
    model/ResponseTimeMonitorData.cpp
    model/ResponseTimeMonitorData.h
    model/StringParameterDefinition.cpp
    model/StringParameterDefinition.h
    model/StringParameterValue.cpp
    model/StringParameterValue.h
    model/SwapSpaceMonitorMemoryUsage2.cpp
    model/SwapSpaceMonitorMemoryUsage2.h
    model/UnlabeledLoadStatistics.cpp
    model/UnlabeledLoadStatistics.h
    model/User.cpp
    model/User.h
# apis
    api/BaseApi.cpp
    api/BaseApi.h
    api/BlueOceanApi.cpp
    api/BlueOceanApi.h
    api/RemoteAccessApi.cpp
    api/RemoteAccessApi.h
# other
    api/HttpClient.h
    api/HttpClientImpl.cpp
    api/HttpClientImpl.h
    model/AnyType.h
)


target_link_libraries(${PROJECT_NAME}
    PUBLIC Boost::boost OpenSSL::SSL Threads::Threads)

target_include_directories(${PROJECT_NAME} PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/api>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/model>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}/api>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}/model>)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}")

install(DIRECTORY api model
    DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
    FILES_MATCHING PATTERN "*.h")
