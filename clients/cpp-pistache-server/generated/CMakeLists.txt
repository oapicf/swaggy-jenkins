cmake_minimum_required (VERSION 3.2)

project(server)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pg -g3" )

include(ExternalProject)

set(EXTERNAL_INSTALL_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/external)

ExternalProject_Add(PISTACHE
    GIT_REPOSITORY https://github.com/oktal/pistache.git
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_LOCATION}
)

ExternalProject_Add(NLOHMANN
    GIT_REPOSITORY https://github.com/nlohmann/json.git
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNAL_INSTALL_LOCATION}

)
include_directories(${EXTERNAL_INSTALL_LOCATION}/include)
include_directories(${EXTERNAL_INSTALL_LOCATION}/include/nlohmann)
link_directories(${EXTERNAL_INSTALL_LOCATION}/lib)

link_directories(/usr/local/lib/)

aux_source_directory(model MODEL_SOURCES)
file(GLOB BLUE_OCEAN_API_SOURCES
"api/BlueOceanApi.h"
"api/BlueOceanApi.cpp"
"impl/BlueOceanApiImpl.h"
"impl/BlueOceanApiImpl.cpp"
)
file(GLOB REMOTE_ACCESS_API_SOURCES
"api/RemoteAccessApi.h"
"api/RemoteAccessApi.cpp"
"impl/RemoteAccessApiImpl.h"
"impl/RemoteAccessApiImpl.cpp"
)

include_directories(model)
include_directories(api)
include_directories(impl)

set(BLUE_OCEAN_API_SERVER_SOURCES
BlueOceanApiMainServer.cpp
    ${MODEL_SOURCES}
    ${BLUE_OCEAN_API_SOURCES})
set(REMOTE_ACCESS_API_SERVER_SOURCES
RemoteAccessApiMainServer.cpp
    ${MODEL_SOURCES}
    ${REMOTE_ACCESS_API_SOURCES})

add_executable(blue_ocean_api_server
${BLUE_OCEAN_API_SERVER_SOURCES})
add_executable(remote_access_api_server
${REMOTE_ACCESS_API_SERVER_SOURCES})

target_link_libraries(blue_ocean_api_server pistache pthread)
target_link_libraries(remote_access_api_server pistache pthread)

