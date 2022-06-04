cmake_minimum_required (VERSION 2.6...3.10.2)
project (CGenerator)

cmake_policy(SET CMP0063 NEW)

set(CMAKE_C_VISIBILITY_PRESET default)
set(CMAKE_CXX_VISIBILITY_PRESET default)
set(CMAKE_VISIBILITY_INLINES_HIDDEN OFF)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

find_package(OpenSSL)

if (OPENSSL_FOUND)
    message (STATUS "OPENSSL found")

    set(CMAKE_C_FLAGS "-DOPENSSL")
    if(CMAKE_VERSION VERSION_LESS 3.4)
        include_directories(${OPENSSL_INCLUDE_DIR})
        include_directories(${OPENSSL_INCLUDE_DIRS})
        link_directories(${OPENSSL_LIBRARIES})
    endif()

    message(STATUS "Using OpenSSL ${OPENSSL_VERSION}")
else()
    message (STATUS "OpenSSL Not found.")
endif()

set(pkgName "swaggy_jenkins")

# this default version can be overridden in PreTarget.cmake
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)

if( (DEFINED CURL_INCLUDE_DIR) AND (DEFINED CURL_LIBRARIES))
    include_directories(${CURL_INCLUDE_DIR})
    set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
else()
    find_package(CURL 7.58.0 REQUIRED)
    if(CURL_FOUND)
        include_directories(${CURL_INCLUDE_DIR})
        set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} ${CURL_LIBRARIES} )
    else(CURL_FOUND)
        message(FATAL_ERROR "Could not find the CURL library and development files.")
    endif()
endif()

set(SRCS
    src/list.c
    src/apiKey.c
    src/apiClient.c
    src/binary.c
    external/cJSON.c
    model/object.c
    model/all_view.c
    model/branch_impl.c
    model/branch_impllinks.c
    model/branch_implpermissions.c
    model/cause_action.c
    model/cause_user_id_cause.c
    model/classes_by_class.c
    model/clock_difference.c
    model/computer_set.c
    model/default_crumb_issuer.c
    model/disk_space_monitor_descriptor_disk_space.c
    model/empty_change_log_set.c
    model/extension_class_container_impl1.c
    model/extension_class_container_impl1links.c
    model/extension_class_container_impl1map.c
    model/extension_class_impl.c
    model/extension_class_impllinks.c
    model/favorite_impl.c
    model/favorite_impllinks.c
    model/free_style_build.c
    model/free_style_project.c
    model/free_style_projectactions.c
    model/free_style_projecthealth_report.c
    model/generic_resource.c
    model/github_content.c
    model/github_file.c
    model/github_organization.c
    model/github_organizationlinks.c
    model/github_repositories.c
    model/github_repositorieslinks.c
    model/github_repository.c
    model/github_repositorylinks.c
    model/github_repositorypermissions.c
    model/github_respository_container.c
    model/github_respository_containerlinks.c
    model/github_scm.c
    model/github_scmlinks.c
    model/hudson.c
    model/hudson_master_computer.c
    model/hudson_master_computerexecutors.c
    model/hudson_master_computermonitor_data.c
    model/hudsonassigned_labels.c
    model/input_step_impl.c
    model/input_step_impllinks.c
    model/label1.c
    model/link.c
    model/list_view.c
    model/multibranch_pipeline.c
    model/null_scm.c
    model/organisation.c
    model/pipeline.c
    model/pipeline_activity.c
    model/pipeline_activityartifacts.c
    model/pipeline_branchesitem.c
    model/pipeline_branchesitemlatest_run.c
    model/pipeline_branchesitempull_request.c
    model/pipeline_branchesitempull_requestlinks.c
    model/pipeline_folder_impl.c
    model/pipeline_impl.c
    model/pipeline_impllinks.c
    model/pipeline_run.c
    model/pipeline_run_impl.c
    model/pipeline_run_impllinks.c
    model/pipeline_run_node.c
    model/pipeline_run_nodeedges.c
    model/pipeline_runartifacts.c
    model/pipeline_step_impl.c
    model/pipeline_step_impllinks.c
    model/pipelinelatest_run.c
    model/pipelinelatest_runartifacts.c
    model/queue.c
    model/queue_blocked_item.c
    model/queue_item_impl.c
    model/queue_left_item.c
    model/response_time_monitor_data.c
    model/string_parameter_definition.c
    model/string_parameter_value.c
    model/swap_space_monitor_memory_usage2.c
    model/unlabeled_load_statistics.c
    model/user.c
    api/BaseAPI.c
    api/BlueOceanAPI.c
    api/RemoteAccessAPI.c

)

set(HDRS
    include/apiClient.h
    include/list.h
    include/binary.h
    include/keyValuePair.h
    external/cJSON.h
    model/object.h
    model/all_view.h
    model/branch_impl.h
    model/branch_impllinks.h
    model/branch_implpermissions.h
    model/cause_action.h
    model/cause_user_id_cause.h
    model/classes_by_class.h
    model/clock_difference.h
    model/computer_set.h
    model/default_crumb_issuer.h
    model/disk_space_monitor_descriptor_disk_space.h
    model/empty_change_log_set.h
    model/extension_class_container_impl1.h
    model/extension_class_container_impl1links.h
    model/extension_class_container_impl1map.h
    model/extension_class_impl.h
    model/extension_class_impllinks.h
    model/favorite_impl.h
    model/favorite_impllinks.h
    model/free_style_build.h
    model/free_style_project.h
    model/free_style_projectactions.h
    model/free_style_projecthealth_report.h
    model/generic_resource.h
    model/github_content.h
    model/github_file.h
    model/github_organization.h
    model/github_organizationlinks.h
    model/github_repositories.h
    model/github_repositorieslinks.h
    model/github_repository.h
    model/github_repositorylinks.h
    model/github_repositorypermissions.h
    model/github_respository_container.h
    model/github_respository_containerlinks.h
    model/github_scm.h
    model/github_scmlinks.h
    model/hudson.h
    model/hudson_master_computer.h
    model/hudson_master_computerexecutors.h
    model/hudson_master_computermonitor_data.h
    model/hudsonassigned_labels.h
    model/input_step_impl.h
    model/input_step_impllinks.h
    model/label1.h
    model/link.h
    model/list_view.h
    model/multibranch_pipeline.h
    model/null_scm.h
    model/organisation.h
    model/pipeline.h
    model/pipeline_activity.h
    model/pipeline_activityartifacts.h
    model/pipeline_branchesitem.h
    model/pipeline_branchesitemlatest_run.h
    model/pipeline_branchesitempull_request.h
    model/pipeline_branchesitempull_requestlinks.h
    model/pipeline_folder_impl.h
    model/pipeline_impl.h
    model/pipeline_impllinks.h
    model/pipeline_run.h
    model/pipeline_run_impl.h
    model/pipeline_run_impllinks.h
    model/pipeline_run_node.h
    model/pipeline_run_nodeedges.h
    model/pipeline_runartifacts.h
    model/pipeline_step_impl.h
    model/pipeline_step_impllinks.h
    model/pipelinelatest_run.h
    model/pipelinelatest_runartifacts.h
    model/queue.h
    model/queue_blocked_item.h
    model/queue_item_impl.h
    model/queue_left_item.h
    model/response_time_monitor_data.h
    model/string_parameter_definition.h
    model/string_parameter_value.h
    model/swap_space_monitor_memory_usage2.h
    model/unlabeled_load_statistics.h
    model/user.h
    api/BaseAPI.h
    api/BlueOceanAPI.h
    api/RemoteAccessAPI.h

)

include(PreTarget.cmake OPTIONAL)

set(PROJECT_VERSION_STRING "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

# Add library with project file with project name as library name
add_library(${pkgName} ${SRCS} ${HDRS})
# Link dependent libraries
if(NOT CMAKE_VERSION VERSION_LESS 3.4)
    target_link_libraries(${pkgName} PRIVATE OpenSSL::SSL OpenSSL::Crypto)
endif()
target_link_libraries(${pkgName} PUBLIC ${CURL_LIBRARIES} )
target_include_directories(
    ${pkgName} PUBLIC $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

include(PostTarget.cmake OPTIONAL)

# installation of libraries, headers, and config files
if (NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in)
    install(TARGETS ${pkgName} DESTINATION lib)
else()
    include(GNUInstallDirs)
    install(TARGETS ${pkgName} DESTINATION lib EXPORT ${pkgName}Targets)

    foreach(HDR_FILE ${HDRS})
        get_filename_component(HDR_DIRECTORY ${HDR_FILE} DIRECTORY)
        get_filename_component(ABSOLUTE_HDR_DIRECTORY ${HDR_DIRECTORY} ABSOLUTE)
        file(RELATIVE_PATH RELATIVE_HDR_PATH ${CMAKE_CURRENT_SOURCE_DIR} ${ABSOLUTE_HDR_DIRECTORY})
        install(FILES ${HDR_FILE} DESTINATION include/${pkgName}/${RELATIVE_HDR_PATH})
    endforeach()

    include(CMakePackageConfigHelpers)
    write_basic_package_version_file(
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            VERSION "${PROJECT_VERSION_STRING}"
            COMPATIBILITY AnyNewerVersion
    )

    export(EXPORT ${pkgName}Targets
            FILE "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Targets.cmake"
            NAMESPACE ${pkgName}::
            )

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            @ONLY
            )

    set(ConfigPackageLocation lib/cmake/${pkgName})
    install(EXPORT ${pkgName}Targets
            FILE
            ${pkgName}Targets.cmake
            NAMESPACE
            ${pkgName}::
            DESTINATION
            ${ConfigPackageLocation}
            )
    install(
            FILES
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}Config.cmake"
            "${CMAKE_CURRENT_BINARY_DIR}/${pkgName}/${pkgName}ConfigVersion.cmake"
            DESTINATION
            ${ConfigPackageLocation}
    )
endif()

# make installation packages
include(Packing.cmake OPTIONAL)

# Setting file variables to null
set(SRCS "")
set(HDRS "")


## This section shows how to use the above compiled library to compile the source files
## set source files
#set(SRCS
#    unit-tests/manual-BaseAPI.c
#    unit-tests/manual-BlueOceanAPI.c
#    unit-tests/manual-RemoteAccessAPI.c
#)

##set header files
#set(HDRS
#)

## loop over all files in SRCS variable
#foreach(SOURCE_FILE ${SRCS})
#    # Get only the file name from the file as add_executable does not support executable with slash("/")
#    get_filename_component(FILE_NAME_ONLY ${SOURCE_FILE} NAME_WE)
#    # Remove .c from the file name and set it as executable name
#    string( REPLACE ".c" "" EXECUTABLE_FILE ${FILE_NAME_ONLY})
#    # Add executable for every source file in  SRCS
#    add_executable(unit-${EXECUTABLE_FILE} ${SOURCE_FILE})
#    # Link above created library to executable and dependent library curl
#    target_link_libraries(unit-${EXECUTABLE_FILE} ${CURL_LIBRARIES} ${pkgName} )
#endforeach(SOURCE_FILE ${SRCS})
