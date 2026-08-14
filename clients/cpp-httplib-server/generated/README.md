# cpp-httplib-server - C++ Server

## Overview

This server was generated using the [OpenAPI Generator](https://openapi-generator.tech) project.
It uses the [cpp-httplib](https://github.com/yhirose/cpp-httplib) library to implement a lightweight HTTP server
with JSON request/response handling via [nlohmann/json](https://github.com/nlohmann/json).

## Requirements

- C++17 compatible compiler
- CMake (3.14 or higher)
- OpenSSL (for HTTPS support)
- ZLIB (for compression support)

**Note:** The following libraries are automatically downloaded via CMake FetchContent:
- [cpp-httplib](https://github.com/yhirose/cpp-httplib) v0.15.3
- [nlohmann/json](https://github.com/nlohmann/json) v3.11.3

### Platform-Specific Installation

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install -y libssl-dev zlib1g-dev cmake build-essential
```

**macOS:**
```bash
brew install openssl zlib cmake
```

**Windows:**
```powershell
# Using vcpkg
vcpkg install openssl:x64-windows zlib:x64-windows

# Then configure CMake with vcpkg toolchain:
cmake -B build -DCMAKE_TOOLCHAIN_FILE=[vcpkg_root]/scripts/buildsystems/vcpkg.cmake
```

## Project Structure

```
├── CMakeLists.txt          # Project build configuration
├── README.md               # This file
├── models/                  # Generated model classes
└── api/                    # Generated API handler classes
```

## Building the Project

```bash
mkdir build
cd build
cmake ..
make
```

## Working with Models

### Model Classes

#### models::AllView

```cpp
// Create a model
auto model = models::AllView();
model.setClass(/* value */);  // Set _class
model.setName(/* value */);  // Set name
model.setUrl(/* value */);  // Set url

// Serialize to JSON
nlohmann::json json = models::AllView::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::AllView::fromJson(nlohmann::json::parse(jsonString));
```
#### models::BranchImpl

```cpp
// Create a model
auto model = models::BranchImpl();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setFullDisplayName(/* value */);  // Set fullDisplayName
model.setFullName(/* value */);  // Set fullName
model.setName(/* value */);  // Set name
model.setOrganization(/* value */);  // Set organization
model.setParameters(/* value */);  // Set parameters
model.setPermissions(/* value */);  // Set permissions
model.setWeatherScore(/* value */);  // Set weatherScore
model.setPullRequest(/* value */);  // Set pullRequest
model.setLinks(/* value */);  // Set _links
model.setLatestRun(/* value */);  // Set latestRun

// Serialize to JSON
nlohmann::json json = models::BranchImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::BranchImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::BranchImpllinks

```cpp
// Create a model
auto model = models::BranchImpllinks();
model.setSelf(/* value */);  // Set self
model.setActions(/* value */);  // Set actions
model.setRuns(/* value */);  // Set runs
model.setQueue(/* value */);  // Set queue
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::BranchImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::BranchImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::BranchImplpermissions

```cpp
// Create a model
auto model = models::BranchImplpermissions();
model.setCreate(/* value */);  // Set create
model.setRead(/* value */);  // Set read
model.setStart(/* value */);  // Set start
model.setStop(/* value */);  // Set stop
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::BranchImplpermissions::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::BranchImplpermissions::fromJson(nlohmann::json::parse(jsonString));
```
#### models::CauseAction

```cpp
// Create a model
auto model = models::CauseAction();
model.setClass(/* value */);  // Set _class
model.setCauses(/* value */);  // Set causes

// Serialize to JSON
nlohmann::json json = models::CauseAction::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::CauseAction::fromJson(nlohmann::json::parse(jsonString));
```
#### models::CauseUserIdCause

```cpp
// Create a model
auto model = models::CauseUserIdCause();
model.setClass(/* value */);  // Set _class
model.setShortDescription(/* value */);  // Set shortDescription
model.setUserId(/* value */);  // Set userId
model.setUserName(/* value */);  // Set userName

// Serialize to JSON
nlohmann::json json = models::CauseUserIdCause::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::CauseUserIdCause::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ClassesByClass

```cpp
// Create a model
auto model = models::ClassesByClass();
model.setClasses(/* value */);  // Set classes
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::ClassesByClass::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ClassesByClass::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ClockDifference

```cpp
// Create a model
auto model = models::ClockDifference();
model.setClass(/* value */);  // Set _class
model.setDiff(/* value */);  // Set diff

// Serialize to JSON
nlohmann::json json = models::ClockDifference::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ClockDifference::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ComputerSet

```cpp
// Create a model
auto model = models::ComputerSet();
model.setClass(/* value */);  // Set _class
model.setBusyExecutors(/* value */);  // Set busyExecutors
model.setComputer(/* value */);  // Set computer
model.setDisplayName(/* value */);  // Set displayName
model.setTotalExecutors(/* value */);  // Set totalExecutors

// Serialize to JSON
nlohmann::json json = models::ComputerSet::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ComputerSet::fromJson(nlohmann::json::parse(jsonString));
```
#### models::DefaultCrumbIssuer

```cpp
// Create a model
auto model = models::DefaultCrumbIssuer();
model.setClass(/* value */);  // Set _class
model.setCrumb(/* value */);  // Set crumb
model.setCrumbRequestField(/* value */);  // Set crumbRequestField

// Serialize to JSON
nlohmann::json json = models::DefaultCrumbIssuer::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::DefaultCrumbIssuer::fromJson(nlohmann::json::parse(jsonString));
```
#### models::DiskSpaceMonitorDescriptorDiskSpace

```cpp
// Create a model
auto model = models::DiskSpaceMonitorDescriptorDiskSpace();
model.setClass(/* value */);  // Set _class
model.setTimestamp(/* value */);  // Set timestamp
model.setPath(/* value */);  // Set path
model.setSize(/* value */);  // Set size

// Serialize to JSON
nlohmann::json json = models::DiskSpaceMonitorDescriptorDiskSpace::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::DiskSpaceMonitorDescriptorDiskSpace::fromJson(nlohmann::json::parse(jsonString));
```
#### models::EmptyChangeLogSet

```cpp
// Create a model
auto model = models::EmptyChangeLogSet();
model.setClass(/* value */);  // Set _class
model.setKind(/* value */);  // Set kind

// Serialize to JSON
nlohmann::json json = models::EmptyChangeLogSet::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::EmptyChangeLogSet::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ExtensionClassContainerImpl1

```cpp
// Create a model
auto model = models::ExtensionClassContainerImpl1();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setMap(/* value */);  // Set map

// Serialize to JSON
nlohmann::json json = models::ExtensionClassContainerImpl1::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ExtensionClassContainerImpl1::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ExtensionClassContainerImpl1links

```cpp
// Create a model
auto model = models::ExtensionClassContainerImpl1links();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::ExtensionClassContainerImpl1links::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ExtensionClassContainerImpl1links::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ExtensionClassContainerImpl1map

```cpp
// Create a model
auto model = models::ExtensionClassContainerImpl1map();
model.setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(/* value */);  // Set io.jenkins.blueocean.service.embedded.rest.PipelineImpl
model.setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(/* value */);  // Set io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::ExtensionClassContainerImpl1map::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ExtensionClassContainerImpl1map::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ExtensionClassImpl

```cpp
// Create a model
auto model = models::ExtensionClassImpl();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setClasses(/* value */);  // Set classes

// Serialize to JSON
nlohmann::json json = models::ExtensionClassImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ExtensionClassImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ExtensionClassImpllinks

```cpp
// Create a model
auto model = models::ExtensionClassImpllinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::ExtensionClassImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ExtensionClassImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FavoriteImpl

```cpp
// Create a model
auto model = models::FavoriteImpl();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setItem(/* value */);  // Set item

// Serialize to JSON
nlohmann::json json = models::FavoriteImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FavoriteImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FavoriteImpllinks

```cpp
// Create a model
auto model = models::FavoriteImpllinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::FavoriteImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FavoriteImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FreeStyleBuild

```cpp
// Create a model
auto model = models::FreeStyleBuild();
model.setClass(/* value */);  // Set _class
model.setNumber(/* value */);  // Set number
model.setUrl(/* value */);  // Set url
model.setActions(/* value */);  // Set actions
model.setBuilding(/* value */);  // Set building
model.setDescription(/* value */);  // Set description
model.setDisplayName(/* value */);  // Set displayName
model.setDuration(/* value */);  // Set duration
model.setEstimatedDuration(/* value */);  // Set estimatedDuration
model.setExecutor(/* value */);  // Set executor
model.setFullDisplayName(/* value */);  // Set fullDisplayName
model.setId(/* value */);  // Set id
model.setKeepLog(/* value */);  // Set keepLog
model.setQueueId(/* value */);  // Set queueId
model.setResult(/* value */);  // Set result
model.setTimestamp(/* value */);  // Set timestamp
model.setBuiltOn(/* value */);  // Set builtOn
model.setChangeSet(/* value */);  // Set changeSet

// Serialize to JSON
nlohmann::json json = models::FreeStyleBuild::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FreeStyleBuild::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FreeStyleProject

```cpp
// Create a model
auto model = models::FreeStyleProject();
model.setClass(/* value */);  // Set _class
model.setName(/* value */);  // Set name
model.setUrl(/* value */);  // Set url
model.setColor(/* value */);  // Set color
model.setActions(/* value */);  // Set actions
model.setDescription(/* value */);  // Set description
model.setDisplayName(/* value */);  // Set displayName
model.setDisplayNameOrNull(/* value */);  // Set displayNameOrNull
model.setFullDisplayName(/* value */);  // Set fullDisplayName
model.setFullName(/* value */);  // Set fullName
model.setBuildable(/* value */);  // Set buildable
model.setBuilds(/* value */);  // Set builds
model.setFirstBuild(/* value */);  // Set firstBuild
model.setHealthReport(/* value */);  // Set healthReport
model.setInQueue(/* value */);  // Set inQueue
model.setKeepDependencies(/* value */);  // Set keepDependencies
model.setLastBuild(/* value */);  // Set lastBuild
model.setLastCompletedBuild(/* value */);  // Set lastCompletedBuild
model.setLastFailedBuild(/* value */);  // Set lastFailedBuild
model.setLastStableBuild(/* value */);  // Set lastStableBuild
model.setLastSuccessfulBuild(/* value */);  // Set lastSuccessfulBuild
model.setLastUnstableBuild(/* value */);  // Set lastUnstableBuild
model.setLastUnsuccessfulBuild(/* value */);  // Set lastUnsuccessfulBuild
model.setNextBuildNumber(/* value */);  // Set nextBuildNumber
model.setQueueItem(/* value */);  // Set queueItem
model.setConcurrentBuild(/* value */);  // Set concurrentBuild
model.setScm(/* value */);  // Set scm

// Serialize to JSON
nlohmann::json json = models::FreeStyleProject::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FreeStyleProject::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FreeStyleProjectactions

```cpp
// Create a model
auto model = models::FreeStyleProjectactions();
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::FreeStyleProjectactions::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FreeStyleProjectactions::fromJson(nlohmann::json::parse(jsonString));
```
#### models::FreeStyleProjecthealthReport

```cpp
// Create a model
auto model = models::FreeStyleProjecthealthReport();
model.setDescription(/* value */);  // Set description
model.setIconClassName(/* value */);  // Set iconClassName
model.setIconUrl(/* value */);  // Set iconUrl
model.setScore(/* value */);  // Set score
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::FreeStyleProjecthealthReport::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::FreeStyleProjecthealthReport::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GenericResource

```cpp
// Create a model
auto model = models::GenericResource();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setId(/* value */);  // Set id
model.setResult(/* value */);  // Set result
model.setStartTime(/* value */);  // Set startTime

// Serialize to JSON
nlohmann::json json = models::GenericResource::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GenericResource::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubContent

```cpp
// Create a model
auto model = models::GithubContent();
model.setName(/* value */);  // Set name
model.setSha(/* value */);  // Set sha
model.setClass(/* value */);  // Set _class
model.setRepo(/* value */);  // Set repo
model.setSize(/* value */);  // Set size
model.setOwner(/* value */);  // Set owner
model.setPath(/* value */);  // Set path
model.setBase64Data(/* value */);  // Set base64Data

// Serialize to JSON
nlohmann::json json = models::GithubContent::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubContent::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubFile

```cpp
// Create a model
auto model = models::GithubFile();
model.setContent(/* value */);  // Set content
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubFile::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubFile::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubOrganization

```cpp
// Create a model
auto model = models::GithubOrganization();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setJenkinsOrganizationPipeline(/* value */);  // Set jenkinsOrganizationPipeline
model.setName(/* value */);  // Set name

// Serialize to JSON
nlohmann::json json = models::GithubOrganization::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubOrganization::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubOrganizationlinks

```cpp
// Create a model
auto model = models::GithubOrganizationlinks();
model.setRepositories(/* value */);  // Set repositories
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubOrganizationlinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubOrganizationlinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRepositories

```cpp
// Create a model
auto model = models::GithubRepositories();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setItems(/* value */);  // Set items
model.setLastPage(/* value */);  // Set lastPage
model.setNextPage(/* value */);  // Set nextPage
model.setPageSize(/* value */);  // Set pageSize

// Serialize to JSON
nlohmann::json json = models::GithubRepositories::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRepositories::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRepositorieslinks

```cpp
// Create a model
auto model = models::GithubRepositorieslinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubRepositorieslinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRepositorieslinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRepository

```cpp
// Create a model
auto model = models::GithubRepository();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setDefaultBranch(/* value */);  // Set defaultBranch
model.setDescription(/* value */);  // Set description
model.setName(/* value */);  // Set name
model.setPermissions(/* value */);  // Set permissions
model.setRPrivate(/* value */);  // Set private
model.setFullName(/* value */);  // Set fullName

// Serialize to JSON
nlohmann::json json = models::GithubRepository::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRepository::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRepositorylinks

```cpp
// Create a model
auto model = models::GithubRepositorylinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubRepositorylinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRepositorylinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRepositorypermissions

```cpp
// Create a model
auto model = models::GithubRepositorypermissions();
model.setAdmin(/* value */);  // Set admin
model.setPush(/* value */);  // Set push
model.setPull(/* value */);  // Set pull
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubRepositorypermissions::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRepositorypermissions::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRespositoryContainer

```cpp
// Create a model
auto model = models::GithubRespositoryContainer();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setRepositories(/* value */);  // Set repositories

// Serialize to JSON
nlohmann::json json = models::GithubRespositoryContainer::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRespositoryContainer::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubRespositoryContainerlinks

```cpp
// Create a model
auto model = models::GithubRespositoryContainerlinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubRespositoryContainerlinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubRespositoryContainerlinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubScm

```cpp
// Create a model
auto model = models::GithubScm();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setCredentialId(/* value */);  // Set credentialId
model.setId(/* value */);  // Set id
model.setUri(/* value */);  // Set uri

// Serialize to JSON
nlohmann::json json = models::GithubScm::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubScm::fromJson(nlohmann::json::parse(jsonString));
```
#### models::GithubScmlinks

```cpp
// Create a model
auto model = models::GithubScmlinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::GithubScmlinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::GithubScmlinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Hudson

```cpp
// Create a model
auto model = models::Hudson();
model.setClass(/* value */);  // Set _class
model.setAssignedLabels(/* value */);  // Set assignedLabels
model.setMode(/* value */);  // Set mode
model.setNodeDescription(/* value */);  // Set nodeDescription
model.setNodeName(/* value */);  // Set nodeName
model.setNumExecutors(/* value */);  // Set numExecutors
model.setDescription(/* value */);  // Set description
model.setJobs(/* value */);  // Set jobs
model.setPrimaryView(/* value */);  // Set primaryView
model.setQuietingDown(/* value */);  // Set quietingDown
model.setSlaveAgentPort(/* value */);  // Set slaveAgentPort
model.setUnlabeledLoad(/* value */);  // Set unlabeledLoad
model.setUseCrumbs(/* value */);  // Set useCrumbs
model.setUseSecurity(/* value */);  // Set useSecurity
model.setViews(/* value */);  // Set views

// Serialize to JSON
nlohmann::json json = models::Hudson::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Hudson::fromJson(nlohmann::json::parse(jsonString));
```
#### models::HudsonMasterComputer

```cpp
// Create a model
auto model = models::HudsonMasterComputer();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setExecutors(/* value */);  // Set executors
model.setIcon(/* value */);  // Set icon
model.setIconClassName(/* value */);  // Set iconClassName
model.setIdle(/* value */);  // Set idle
model.setJnlpAgent(/* value */);  // Set jnlpAgent
model.setLaunchSupported(/* value */);  // Set launchSupported
model.setLoadStatistics(/* value */);  // Set loadStatistics
model.setManualLaunchAllowed(/* value */);  // Set manualLaunchAllowed
model.setMonitorData(/* value */);  // Set monitorData
model.setNumExecutors(/* value */);  // Set numExecutors
model.setOffline(/* value */);  // Set offline
model.setOfflineCause(/* value */);  // Set offlineCause
model.setOfflineCauseReason(/* value */);  // Set offlineCauseReason
model.setTemporarilyOffline(/* value */);  // Set temporarilyOffline

// Serialize to JSON
nlohmann::json json = models::HudsonMasterComputer::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::HudsonMasterComputer::fromJson(nlohmann::json::parse(jsonString));
```
#### models::HudsonMasterComputerexecutors

```cpp
// Create a model
auto model = models::HudsonMasterComputerexecutors();
model.setCurrentExecutable(/* value */);  // Set currentExecutable
model.setIdle(/* value */);  // Set idle
model.setLikelyStuck(/* value */);  // Set likelyStuck
model.setNumber(/* value */);  // Set number
model.setProgress(/* value */);  // Set progress
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::HudsonMasterComputerexecutors::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::HudsonMasterComputerexecutors::fromJson(nlohmann::json::parse(jsonString));
```
#### models::HudsonMasterComputermonitorData

```cpp
// Create a model
auto model = models::HudsonMasterComputermonitorData();
model.setHudsonNodeMonitorsSwapSpaceMonitor(/* value */);  // Set hudson.node_monitors.SwapSpaceMonitor
model.setHudsonNodeMonitorsTemporarySpaceMonitor(/* value */);  // Set hudson.node_monitors.TemporarySpaceMonitor
model.setHudsonNodeMonitorsDiskSpaceMonitor(/* value */);  // Set hudson.node_monitors.DiskSpaceMonitor
model.setHudsonNodeMonitorsArchitectureMonitor(/* value */);  // Set hudson.node_monitors.ArchitectureMonitor
model.setHudsonNodeMonitorsResponseTimeMonitor(/* value */);  // Set hudson.node_monitors.ResponseTimeMonitor
model.setHudsonNodeMonitorsClockMonitor(/* value */);  // Set hudson.node_monitors.ClockMonitor
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::HudsonMasterComputermonitorData::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::HudsonMasterComputermonitorData::fromJson(nlohmann::json::parse(jsonString));
```
#### models::HudsonassignedLabels

```cpp
// Create a model
auto model = models::HudsonassignedLabels();
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::HudsonassignedLabels::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::HudsonassignedLabels::fromJson(nlohmann::json::parse(jsonString));
```
#### models::InputStepImpl

```cpp
// Create a model
auto model = models::InputStepImpl();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setId(/* value */);  // Set id
model.setMessage(/* value */);  // Set message
model.setOk(/* value */);  // Set ok
model.setParameters(/* value */);  // Set parameters
model.setSubmitter(/* value */);  // Set submitter

// Serialize to JSON
nlohmann::json json = models::InputStepImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::InputStepImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::InputStepImpllinks

```cpp
// Create a model
auto model = models::InputStepImpllinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::InputStepImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::InputStepImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Label1

```cpp
// Create a model
auto model = models::Label1();
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::Label1::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Label1::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Link

```cpp
// Create a model
auto model = models::Link();
model.setClass(/* value */);  // Set _class
model.setHref(/* value */);  // Set href

// Serialize to JSON
nlohmann::json json = models::Link::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Link::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ListView

```cpp
// Create a model
auto model = models::ListView();
model.setClass(/* value */);  // Set _class
model.setDescription(/* value */);  // Set description
model.setJobs(/* value */);  // Set jobs
model.setName(/* value */);  // Set name
model.setUrl(/* value */);  // Set url

// Serialize to JSON
nlohmann::json json = models::ListView::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ListView::fromJson(nlohmann::json::parse(jsonString));
```
#### models::MultibranchPipeline

```cpp
// Create a model
auto model = models::MultibranchPipeline();
model.setDisplayName(/* value */);  // Set displayName
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setLatestRun(/* value */);  // Set latestRun
model.setName(/* value */);  // Set name
model.setOrganization(/* value */);  // Set organization
model.setWeatherScore(/* value */);  // Set weatherScore
model.setBranchNames(/* value */);  // Set branchNames
model.setNumberOfFailingBranches(/* value */);  // Set numberOfFailingBranches
model.setNumberOfFailingPullRequests(/* value */);  // Set numberOfFailingPullRequests
model.setNumberOfSuccessfulBranches(/* value */);  // Set numberOfSuccessfulBranches
model.setNumberOfSuccessfulPullRequests(/* value */);  // Set numberOfSuccessfulPullRequests
model.setTotalNumberOfBranches(/* value */);  // Set totalNumberOfBranches
model.setTotalNumberOfPullRequests(/* value */);  // Set totalNumberOfPullRequests
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::MultibranchPipeline::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::MultibranchPipeline::fromJson(nlohmann::json::parse(jsonString));
```
#### models::NullScm

```cpp
// Create a model
auto model = models::NullScm();
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::NullScm::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::NullScm::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Organisation

```cpp
// Create a model
auto model = models::Organisation();
model.setClass(/* value */);  // Set _class
model.setName(/* value */);  // Set name

// Serialize to JSON
nlohmann::json json = models::Organisation::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Organisation::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Pipeline

```cpp
// Create a model
auto model = models::Pipeline();
model.setClass(/* value */);  // Set _class
model.setOrganization(/* value */);  // Set organization
model.setName(/* value */);  // Set name
model.setDisplayName(/* value */);  // Set displayName
model.setFullName(/* value */);  // Set fullName
model.setWeatherScore(/* value */);  // Set weatherScore
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setLatestRun(/* value */);  // Set latestRun

// Serialize to JSON
nlohmann::json json = models::Pipeline::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Pipeline::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineActivity

```cpp
// Create a model
auto model = models::PipelineActivity();
model.setClass(/* value */);  // Set _class
model.setArtifacts(/* value */);  // Set artifacts
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setEnQueueTime(/* value */);  // Set enQueueTime
model.setEndTime(/* value */);  // Set endTime
model.setId(/* value */);  // Set id
model.setOrganization(/* value */);  // Set organization
model.setPipeline(/* value */);  // Set pipeline
model.setResult(/* value */);  // Set result
model.setRunSummary(/* value */);  // Set runSummary
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state
model.setType(/* value */);  // Set type
model.setCommitId(/* value */);  // Set commitId

// Serialize to JSON
nlohmann::json json = models::PipelineActivity::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineActivity::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineActivityartifacts

```cpp
// Create a model
auto model = models::PipelineActivityartifacts();
model.setName(/* value */);  // Set name
model.setSize(/* value */);  // Set size
model.setUrl(/* value */);  // Set url
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineActivityartifacts::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineActivityartifacts::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineBranchesitem

```cpp
// Create a model
auto model = models::PipelineBranchesitem();
model.setDisplayName(/* value */);  // Set displayName
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setName(/* value */);  // Set name
model.setWeatherScore(/* value */);  // Set weatherScore
model.setLatestRun(/* value */);  // Set latestRun
model.setOrganization(/* value */);  // Set organization
model.setPullRequest(/* value */);  // Set pullRequest
model.setTotalNumberOfPullRequests(/* value */);  // Set totalNumberOfPullRequests
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineBranchesitem::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineBranchesitem::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineBranchesitemlatestRun

```cpp
// Create a model
auto model = models::PipelineBranchesitemlatestRun();
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setEnQueueTime(/* value */);  // Set enQueueTime
model.setEndTime(/* value */);  // Set endTime
model.setId(/* value */);  // Set id
model.setOrganization(/* value */);  // Set organization
model.setPipeline(/* value */);  // Set pipeline
model.setResult(/* value */);  // Set result
model.setRunSummary(/* value */);  // Set runSummary
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state
model.setType(/* value */);  // Set type
model.setCommitId(/* value */);  // Set commitId
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineBranchesitemlatestRun::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineBranchesitemlatestRun::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineBranchesitempullRequest

```cpp
// Create a model
auto model = models::PipelineBranchesitempullRequest();
model.setLinks(/* value */);  // Set _links
model.setAuthor(/* value */);  // Set author
model.setId(/* value */);  // Set id
model.setTitle(/* value */);  // Set title
model.setUrl(/* value */);  // Set url
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineBranchesitempullRequest::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineBranchesitempullRequest::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineBranchesitempullRequestlinks

```cpp
// Create a model
auto model = models::PipelineBranchesitempullRequestlinks();
model.setSelf(/* value */);  // Set self
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineBranchesitempullRequestlinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineBranchesitempullRequestlinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineFolderImpl

```cpp
// Create a model
auto model = models::PipelineFolderImpl();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setFullName(/* value */);  // Set fullName
model.setName(/* value */);  // Set name
model.setOrganization(/* value */);  // Set organization
model.setNumberOfFolders(/* value */);  // Set numberOfFolders
model.setNumberOfPipelines(/* value */);  // Set numberOfPipelines

// Serialize to JSON
nlohmann::json json = models::PipelineFolderImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineFolderImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineImpl

```cpp
// Create a model
auto model = models::PipelineImpl();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setFullName(/* value */);  // Set fullName
model.setLatestRun(/* value */);  // Set latestRun
model.setName(/* value */);  // Set name
model.setOrganization(/* value */);  // Set organization
model.setWeatherScore(/* value */);  // Set weatherScore
model.setLinks(/* value */);  // Set _links

// Serialize to JSON
nlohmann::json json = models::PipelineImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineImpllinks

```cpp
// Create a model
auto model = models::PipelineImpllinks();
model.setSelf(/* value */);  // Set self
model.setActions(/* value */);  // Set actions
model.setRuns(/* value */);  // Set runs
model.setQueue(/* value */);  // Set queue
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRun

```cpp
// Create a model
auto model = models::PipelineRun();
model.setClass(/* value */);  // Set _class
model.setArtifacts(/* value */);  // Set artifacts
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setEnQueueTime(/* value */);  // Set enQueueTime
model.setEndTime(/* value */);  // Set endTime
model.setId(/* value */);  // Set id
model.setOrganization(/* value */);  // Set organization
model.setPipeline(/* value */);  // Set pipeline
model.setResult(/* value */);  // Set result
model.setRunSummary(/* value */);  // Set runSummary
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state
model.setType(/* value */);  // Set type
model.setCommitId(/* value */);  // Set commitId

// Serialize to JSON
nlohmann::json json = models::PipelineRun::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRun::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRunImpl

```cpp
// Create a model
auto model = models::PipelineRunImpl();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEnQueueTime(/* value */);  // Set enQueueTime
model.setEndTime(/* value */);  // Set endTime
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setId(/* value */);  // Set id
model.setOrganization(/* value */);  // Set organization
model.setPipeline(/* value */);  // Set pipeline
model.setResult(/* value */);  // Set result
model.setRunSummary(/* value */);  // Set runSummary
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state
model.setType(/* value */);  // Set type
model.setCommitId(/* value */);  // Set commitId

// Serialize to JSON
nlohmann::json json = models::PipelineRunImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRunImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRunImpllinks

```cpp
// Create a model
auto model = models::PipelineRunImpllinks();
model.setNodes(/* value */);  // Set nodes
model.setLog(/* value */);  // Set log
model.setSelf(/* value */);  // Set self
model.setActions(/* value */);  // Set actions
model.setSteps(/* value */);  // Set steps
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineRunImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRunImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRunNode

```cpp
// Create a model
auto model = models::PipelineRunNode();
model.setClass(/* value */);  // Set _class
model.setDisplayName(/* value */);  // Set displayName
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEdges(/* value */);  // Set edges
model.setId(/* value */);  // Set id
model.setResult(/* value */);  // Set result
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state

// Serialize to JSON
nlohmann::json json = models::PipelineRunNode::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRunNode::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRunNodeedges

```cpp
// Create a model
auto model = models::PipelineRunNodeedges();
model.setId(/* value */);  // Set id
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineRunNodeedges::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRunNodeedges::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineRunartifacts

```cpp
// Create a model
auto model = models::PipelineRunartifacts();
model.setName(/* value */);  // Set name
model.setSize(/* value */);  // Set size
model.setUrl(/* value */);  // Set url
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineRunartifacts::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineRunartifacts::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineStepImpl

```cpp
// Create a model
auto model = models::PipelineStepImpl();
model.setClass(/* value */);  // Set _class
model.setLinks(/* value */);  // Set _links
model.setDisplayName(/* value */);  // Set displayName
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setId(/* value */);  // Set id
model.setInput(/* value */);  // Set input
model.setResult(/* value */);  // Set result
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state

// Serialize to JSON
nlohmann::json json = models::PipelineStepImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineStepImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelineStepImpllinks

```cpp
// Create a model
auto model = models::PipelineStepImpllinks();
model.setSelf(/* value */);  // Set self
model.setActions(/* value */);  // Set actions
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelineStepImpllinks::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelineStepImpllinks::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelinelatestRun

```cpp
// Create a model
auto model = models::PipelinelatestRun();
model.setArtifacts(/* value */);  // Set artifacts
model.setDurationInMillis(/* value */);  // Set durationInMillis
model.setEstimatedDurationInMillis(/* value */);  // Set estimatedDurationInMillis
model.setEnQueueTime(/* value */);  // Set enQueueTime
model.setEndTime(/* value */);  // Set endTime
model.setId(/* value */);  // Set id
model.setOrganization(/* value */);  // Set organization
model.setPipeline(/* value */);  // Set pipeline
model.setResult(/* value */);  // Set result
model.setRunSummary(/* value */);  // Set runSummary
model.setStartTime(/* value */);  // Set startTime
model.setState(/* value */);  // Set state
model.setType(/* value */);  // Set type
model.setCommitId(/* value */);  // Set commitId
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelinelatestRun::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelinelatestRun::fromJson(nlohmann::json::parse(jsonString));
```
#### models::PipelinelatestRunartifacts

```cpp
// Create a model
auto model = models::PipelinelatestRunartifacts();
model.setName(/* value */);  // Set name
model.setSize(/* value */);  // Set size
model.setUrl(/* value */);  // Set url
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::PipelinelatestRunartifacts::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::PipelinelatestRunartifacts::fromJson(nlohmann::json::parse(jsonString));
```
#### models::Queue

```cpp
// Create a model
auto model = models::Queue();
model.setClass(/* value */);  // Set _class
model.setItems(/* value */);  // Set items

// Serialize to JSON
nlohmann::json json = models::Queue::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::Queue::fromJson(nlohmann::json::parse(jsonString));
```
#### models::QueueBlockedItem

```cpp
// Create a model
auto model = models::QueueBlockedItem();
model.setClass(/* value */);  // Set _class
model.setActions(/* value */);  // Set actions
model.setBlocked(/* value */);  // Set blocked
model.setBuildable(/* value */);  // Set buildable
model.setId(/* value */);  // Set id
model.setInQueueSince(/* value */);  // Set inQueueSince
model.setParams(/* value */);  // Set params
model.setStuck(/* value */);  // Set stuck
model.setTask(/* value */);  // Set task
model.setUrl(/* value */);  // Set url
model.setWhy(/* value */);  // Set why
model.setBuildableStartMilliseconds(/* value */);  // Set buildableStartMilliseconds

// Serialize to JSON
nlohmann::json json = models::QueueBlockedItem::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::QueueBlockedItem::fromJson(nlohmann::json::parse(jsonString));
```
#### models::QueueItemImpl

```cpp
// Create a model
auto model = models::QueueItemImpl();
model.setClass(/* value */);  // Set _class
model.setExpectedBuildNumber(/* value */);  // Set expectedBuildNumber
model.setId(/* value */);  // Set id
model.setPipeline(/* value */);  // Set pipeline
model.setQueuedTime(/* value */);  // Set queuedTime

// Serialize to JSON
nlohmann::json json = models::QueueItemImpl::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::QueueItemImpl::fromJson(nlohmann::json::parse(jsonString));
```
#### models::QueueLeftItem

```cpp
// Create a model
auto model = models::QueueLeftItem();
model.setClass(/* value */);  // Set _class
model.setActions(/* value */);  // Set actions
model.setBlocked(/* value */);  // Set blocked
model.setBuildable(/* value */);  // Set buildable
model.setId(/* value */);  // Set id
model.setInQueueSince(/* value */);  // Set inQueueSince
model.setParams(/* value */);  // Set params
model.setStuck(/* value */);  // Set stuck
model.setTask(/* value */);  // Set task
model.setUrl(/* value */);  // Set url
model.setWhy(/* value */);  // Set why
model.setCancelled(/* value */);  // Set cancelled
model.setExecutable(/* value */);  // Set executable

// Serialize to JSON
nlohmann::json json = models::QueueLeftItem::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::QueueLeftItem::fromJson(nlohmann::json::parse(jsonString));
```
#### models::ResponseTimeMonitorData

```cpp
// Create a model
auto model = models::ResponseTimeMonitorData();
model.setClass(/* value */);  // Set _class
model.setTimestamp(/* value */);  // Set timestamp
model.setAverage(/* value */);  // Set average

// Serialize to JSON
nlohmann::json json = models::ResponseTimeMonitorData::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::ResponseTimeMonitorData::fromJson(nlohmann::json::parse(jsonString));
```
#### models::StringParameterDefinition

```cpp
// Create a model
auto model = models::StringParameterDefinition();
model.setClass(/* value */);  // Set _class
model.setDefaultParameterValue(/* value */);  // Set defaultParameterValue
model.setDescription(/* value */);  // Set description
model.setName(/* value */);  // Set name
model.setType(/* value */);  // Set type

// Serialize to JSON
nlohmann::json json = models::StringParameterDefinition::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::StringParameterDefinition::fromJson(nlohmann::json::parse(jsonString));
```
#### models::StringParameterValue

```cpp
// Create a model
auto model = models::StringParameterValue();
model.setClass(/* value */);  // Set _class
model.setName(/* value */);  // Set name
model.setValue(/* value */);  // Set value

// Serialize to JSON
nlohmann::json json = models::StringParameterValue::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::StringParameterValue::fromJson(nlohmann::json::parse(jsonString));
```
#### models::SwapSpaceMonitorMemoryUsage2

```cpp
// Create a model
auto model = models::SwapSpaceMonitorMemoryUsage2();
model.setClass(/* value */);  // Set _class
model.setAvailablePhysicalMemory(/* value */);  // Set availablePhysicalMemory
model.setAvailableSwapSpace(/* value */);  // Set availableSwapSpace
model.setTotalPhysicalMemory(/* value */);  // Set totalPhysicalMemory
model.setTotalSwapSpace(/* value */);  // Set totalSwapSpace

// Serialize to JSON
nlohmann::json json = models::SwapSpaceMonitorMemoryUsage2::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::SwapSpaceMonitorMemoryUsage2::fromJson(nlohmann::json::parse(jsonString));
```
#### models::UnlabeledLoadStatistics

```cpp
// Create a model
auto model = models::UnlabeledLoadStatistics();
model.setClass(/* value */);  // Set _class

// Serialize to JSON
nlohmann::json json = models::UnlabeledLoadStatistics::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::UnlabeledLoadStatistics::fromJson(nlohmann::json::parse(jsonString));
```
#### models::User

```cpp
// Create a model
auto model = models::User();
model.setClass(/* value */);  // Set _class
model.setId(/* value */);  // Set id
model.setFullName(/* value */);  // Set fullName
model.setEmail(/* value */);  // Set email
model.setName(/* value */);  // Set name

// Serialize to JSON
nlohmann::json json = models::User::toJson(model);
std::string jsonString = json.dump();

// Deserialize from JSON
auto parsedModel = models::User::fromJson(nlohmann::json::parse(jsonString));
```

## Implementing API Handlers

### API Classes

Each API is generated as an abstract base class with pure virtual methods that you must implement.

#### Base

Create a class that inherits from the generated base class:

```cpp
#include "api/BaseApi.h"

class BaseImpl : public Api::Base {
public:
    CrumbIssuerapijsonGetResponse handleGetForCrumbIssuerapijson() override {

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_DEFAULT_CRUMB_ISSUER):
        models::DefaultCrumbIssuer successResponse;
        // ... populate response ...
        return successResponse;
    }

};
```
#### BlueOcean

Create a class that inherits from the generated base class:

```cpp
#include "api/BlueOceanApi.h"

class BlueOceanImpl : public Api::BlueOcean {
public:
    void handleDeleteForBluerestorganizationsorganizationpipelinespipelinequeuequeue(const BluerestorganizationsorganizationpipelinespipelinequeuequeueDeleteRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    BluerestorganizationsorganizationuserGetResponse handleGetForBluerestorganizationsorganizationuser(const BluerestorganizationsorganizationuserGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_USER):
        models::User successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestclassesclassGetResponse handleGetForBluerestclassesclass(const BluerestclassesclassGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_r_class

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    JwtAuthjwkskeyGetResponse handleGetForJwtAuthjwkskey(const JwtAuthjwkskeyGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_key

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    JwtAuthtokenGetResponse handleGetForJwtAuthtoken(const JwtAuthtokenGetRequest& params) override {
        // Access request parameters:
        // Query: params.m_expiryTimeInMins (optional)
        // Query: params.m_maxExpiryTimeInMins (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationGetResponse handleGetForBluerestorganizationsorganization(const BluerestorganizationsorganizationGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_ORGANISATION):
        models::Organisation successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsGetResponse handleGetForBluerestorganizations() override {

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_ORGANISATION):
        models::Organisation successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelineGetResponse handleGetForBluerestorganizationsorganizationpipelinespipeline(const BluerestorganizationsorganizationpipelinespipelineGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE):
        models::Pipeline successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelineactivitiesGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelineactivities(const BluerestorganizationsorganizationpipelinespipelineactivitiesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_ACTIVITY):
        models::PipelineActivity successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinebranchesbranchGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinebranchesbranch(const BluerestorganizationsorganizationpipelinespipelinebranchesbranchGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_branch

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_BRANCH_IMPL):
        models::BranchImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinebranchesbranchrunsrunGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinebranchesbranchrunsrun(const BluerestorganizationsorganizationpipelinespipelinebranchesbranchrunsrunGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_branch
        // Path: params.m_run

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN):
        models::PipelineRun successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinebranchesGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinebranches(const BluerestorganizationsorganizationpipelinespipelinebranchesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_MULTIBRANCH_PIPELINE):
        models::MultibranchPipeline successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinesfolderGetResponse handleGetForBluerestorganizationsorganizationpipelinesfolder(const BluerestorganizationsorganizationpipelinesfolderGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_folder

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_FOLDER_IMPL):
        models::PipelineFolderImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinesfolderpipelinespipelineGetResponse handleGetForBluerestorganizationsorganizationpipelinesfolderpipelinespipeline(const BluerestorganizationsorganizationpipelinesfolderpipelinespipelineGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_folder

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_IMPL):
        models::PipelineImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinequeueGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinequeue(const BluerestorganizationsorganizationpipelinespipelinequeueGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_QUEUE_ITEM_IMPL):
        models::QueueItemImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrun(const BluerestorganizationsorganizationpipelinespipelinerunsrunGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN):
        models::PipelineRun successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunlogGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunlog(const BluerestorganizationsorganizationpipelinespipelinerunsrunlogGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Query: params.m_start (optional)
        // Query: params.m_download (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodeGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunnodesnode(const BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodeGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Path: params.m_node

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN_NODE):
        models::PipelineRunNode successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepsstepGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepsstep(const BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepsstepGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Path: params.m_node
        // Path: params.m_step

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_STEP_IMPL):
        models::PipelineStepImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepssteplogGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepssteplog(const BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepssteplogGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Path: params.m_node
        // Path: params.m_step

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepsGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodesteps(const BluerestorganizationsorganizationpipelinespipelinerunsrunnodesnodestepsGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Path: params.m_node

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_STEP_IMPL):
        models::PipelineStepImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunnodesGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelinerunsrunnodes(const BluerestorganizationsorganizationpipelinespipelinerunsrunnodesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN_NODE):
        models::PipelineRunNode successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsGetResponse handleGetForBluerestorganizationsorganizationpipelinespipelineruns(const BluerestorganizationsorganizationpipelinespipelinerunsGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN):
        models::PipelineRun successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinesGetResponse handleGetForBluerestorganizationsorganizationpipelines(const BluerestorganizationsorganizationpipelinesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE):
        models::Pipeline successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationscmscmGetResponse handleGetForBluerestorganizationsorganizationscmscm(const BluerestorganizationsorganizationscmscmGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_scm

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_GITHUB_SCM):
        models::GithubScm successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositoriesGetResponse handleGetForBluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositories(const BluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositoriesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_scm
        // Path: params.m_scmOrganisation
        // Query: params.m_credentialId (optional)
        // Query: params.m_pageSize (optional)
        // Query: params.m_pageNumber (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_GITHUB_ORGANIZATION):
        models::GithubOrganization successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositoriesrepositoryGetResponse handleGetForBluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositoriesrepository(const BluerestorganizationsorganizationscmscmorganizationsscmOrganisationrepositoriesrepositoryGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_scm
        // Path: params.m_scmOrganisation
        // Path: params.m_repository
        // Query: params.m_credentialId (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_GITHUB_ORGANIZATION):
        models::GithubOrganization successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationscmscmorganizationsGetResponse handleGetForBluerestorganizationsorganizationscmscmorganizations(const BluerestorganizationsorganizationscmscmorganizationsGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_scm
        // Query: params.m_credentialId (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_GITHUB_ORGANIZATION):
        models::GithubOrganization successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationusersuserGetResponse handleGetForBluerestorganizationsorganizationusersuser(const BluerestorganizationsorganizationusersuserGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_user

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_USER):
        models::User successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestusersuserfavoritesGetResponse handleGetForBluerestusersuserfavorites(const BluerestusersuserfavoritesGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_user

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_FAVORITE_IMPL):
        models::FavoriteImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationusersGetResponse handleGetForBluerestorganizationsorganizationusers(const BluerestorganizationsorganizationusersGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_USER):
        models::User successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunreplayPostResponse handlePostForBluerestorganizationsorganizationpipelinespipelinerunsrunreplay(const BluerestorganizationsorganizationpipelinespipelinerunsrunreplayPostRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_QUEUE_ITEM_IMPL):
        models::QueueItemImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsPostResponse handlePostForBluerestorganizationsorganizationpipelinespipelineruns(const BluerestorganizationsorganizationpipelinespipelinerunsPostRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_QUEUE_ITEM_IMPL):
        models::QueueItemImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinefavoritePutResponse handlePutForBluerestorganizationsorganizationpipelinespipelinefavorite(const BluerestorganizationsorganizationpipelinespipelinefavoritePutRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Body: params.m_request (std::optional<models::Boolean>)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_FAVORITE_IMPL):
        models::FavoriteImpl successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestorganizationsorganizationpipelinespipelinerunsrunstopPutResponse handlePutForBluerestorganizationsorganizationpipelinespipelinerunsrunstop(const BluerestorganizationsorganizationpipelinespipelinerunsrunstopPutRequest& params) override {
        // Access request parameters:
        // Path: params.m_organization
        // Path: params.m_pipeline
        // Path: params.m_run
        // Query: params.m_blocking (optional)
        // Query: params.m_timeOutInSecs (optional)

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PIPELINE_RUN):
        models::PipelineRun successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestsearchGetResponse handleGetForBluerestsearch(const BluerestsearchGetRequest& params) override {
        // Access request parameters:
        // Query: params.m_q

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    BluerestclassesGetResponse handleGetForBluerestclasses(const BluerestclassesGetRequest& params) override {
        // Access request parameters:
        // Query: params.m_q

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

};
```
#### RemoteAccess

Create a class that inherits from the generated base class:

```cpp
#include "api/RemoteAccessApi.h"

class RemoteAccessImpl : public Api::RemoteAccess {
public:
    ComputerapijsonGetResponse handleGetForComputerapijson(const ComputerapijsonGetRequest& params) override {
        // Access request parameters:
        // Query: params.m_depth

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_COMPUTER_SET):
        models::ComputerSet successResponse;
        // ... populate response ...
        return successResponse;
    }

    ApijsonGetResponse handleGetForApijson() override {

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_HUDSON):
        models::Hudson successResponse;
        // ... populate response ...
        return successResponse;
    }

    JobnameapijsonGetResponse handleGetForJobnameapijson(const JobnameapijsonGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_name

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_FREE_STYLE_PROJECT):
        models::FreeStyleProject successResponse;
        // ... populate response ...
        return successResponse;
    }

    JobnameconfigxmlGetResponse handleGetForJobnameconfigxml(const JobnameconfigxmlGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_name

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    JobnamelastBuildapijsonGetResponse handleGetForJobnamelastBuildapijson(const JobnamelastBuildapijsonGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_name

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_FREE_STYLE_BUILD):
        models::FreeStyleBuild successResponse;
        // ... populate response ...
        return successResponse;
    }

    void handleGetForJobnamenumberlogTextprogressiveText(const JobnamenumberlogTextprogressiveTextGetRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    QueueapijsonGetResponse handleGetForQueueapijson() override {

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_QUEUE):
        models::Queue successResponse;
        // ... populate response ...
        return successResponse;
    }

    QueueitemnumberapijsonGetResponse handleGetForQueueitemnumberapijson(const QueueitemnumberapijsonGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_number

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_QUEUE):
        models::Queue successResponse;
        // ... populate response ...
        return successResponse;
    }

    ViewnameapijsonGetResponse handleGetForViewnameapijson(const ViewnameapijsonGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_name

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_LIST_VIEW):
        models::ListView successResponse;
        // ... populate response ...
        return successResponse;
    }

    ViewnameconfigxmlGetResponse handleGetForViewnameconfigxml(const ViewnameconfigxmlGetRequest& params) override {
        // Access request parameters:
        // Path: params.m_name

        // Implement your business logic here

        // Return success response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        std::string successResponse;
        // ... populate response ...
        return successResponse;
    }

    void handleHeadForApijson() override {
        // Implement your logic here
    }

    CreateItemPostResponse handlePostForCreateItem(const CreateItemPostRequest& params) override {
        // Access request parameters:
        // Query: params.m_name
        // Query: params.m_from (optional)
        // Query: params.m_mode (optional)
        // Header: params.m_jenkinsCrumb (optional)
        // Header: params.m_contentType (optional)
        // Body: params.m_request (std::optional<models::String>)

        // Implement your business logic here


        // Or return error response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        // std::string errorResponse;
        // return errorResponse;
    }

    CreateViewPostResponse handlePostForCreateView(const CreateViewPostRequest& params) override {
        // Access request parameters:
        // Query: params.m_name
        // Header: params.m_jenkinsCrumb (optional)
        // Header: params.m_contentType (optional)
        // Body: params.m_request (std::optional<models::String>)

        // Implement your business logic here


        // Or return error response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        // std::string errorResponse;
        // return errorResponse;
    }

    void handlePostForJobnamebuild(const JobnamebuildPostRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    JobnameconfigxmlPostResponse handlePostForJobnameconfigxml(const JobnameconfigxmlPostRequest& params) override {
        // Access request parameters:
        // Path: params.m_name
        // Header: params.m_jenkinsCrumb (optional)
        // Body: params.m_request (std::optional<models::String>)

        // Implement your business logic here


        // Or return error response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        // std::string errorResponse;
        // return errorResponse;
    }

    void handlePostForJobnamedoDelete(const JobnamedoDeletePostRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    void handlePostForJobnamedisable(const JobnamedisablePostRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    void handlePostForJobnameenable(const JobnameenablePostRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    void handlePostForJobnamelastBuildstop(const JobnamelastBuildstopPostRequest& params) override {
        // Access request parameters from params struct
        // Implement your logic here
    }

    ViewnameconfigxmlPostResponse handlePostForViewnameconfigxml(const ViewnameconfigxmlPostRequest& params) override {
        // Access request parameters:
        // Path: params.m_name
        // Header: params.m_jenkinsCrumb (optional)
        // Body: params.m_request (std::optional<models::String>)

        // Implement your business logic here


        // Or return error response (HTTP HTTP_RESPONSE_CODE_PRIMITIVE_STRING):
        // std::string errorResponse;
        // return errorResponse;
    }

};
```

## Running the Server

Here's a complete example of setting up and running the server:

```cpp
#include <httplib.h>
#include <memory>

#include "api/BaseApi.h"

#include "api/BlueOceanApi.h"

#include "api/RemoteAccessApi.h"

#include "api/AuthenticationManager.h"

int main() {
    httplib::Server server;

    // Create authentication manager (required for this API)
    auto authMgr = std::make_shared<MyAuthManager>();

    // Create API implementations

    BaseImpl base;

    BlueOceanImpl blueOcean;

    RemoteAccessImpl remoteAccess;


    // Register routes

    base.registerRoutes(server, authMgr);

    blueOcean.registerRoutes(server, authMgr);

    remoteAccess.registerRoutes(server, authMgr);


    // Start server
    std::cout << "Server starting on http://localhost:8080" << std::endl;
    server.listen("localhost", 8080);

    return 0;
}
```

### With Authentication

When authentication is required, you must:
1. Implement the `AuthenticationManager` interface (see Authentication section below)
2. Pass the authentication manager to `registerRoutes()`


## Authentication

This API requires authentication. Implement the `AuthenticationManager` interface to provide your authentication logic:

```cpp
#include "api/AuthenticationManager.h"

class MyAuthManager : public Api::AuthenticationManager {
public:
    bool validateApiKey(const std::string& key) override {
        // Validate API key from header, query, or cookie
        // Example: check against database or cache
        return checkApiKeyInDatabase(key);
    }

    bool validateBearerToken(const std::string& token) override {
        // Validate JWT or other bearer tokens
        // Example: verify signature and expiration
        return jwt::verify(token, secret_key);
    }

    bool validateBasicAuth(const std::string& username, const std::string& password) override {
        // Validate username/password credentials
        // Example: check against user database with hashed passwords
        auto user = findUser(username);
        return user && bcrypt::verify(password, user->passwordHash);
    }

    bool validateOAuth2(const std::string& token, const std::vector<std::string>& scopes) override {
        // Validate OAuth2 token and check required scopes
        // Example: introspect token and verify scopes
        auto introspection = oauthProvider.introspect(token);
        return introspection.active && hasAllScopes(introspection.scopes, scopes);
    }
};
```

### Authentication Flow

1. The server automatically extracts credentials from requests (headers, query params, cookies)
2. Before calling your handler, it validates credentials using your `AuthenticationManager`
3. If validation fails, the server returns HTTP 401 Unauthorized automatically
4. If validation succeeds, your handler is called

### Security Schemes

The generated code supports:
- **API Key**: Header, query parameter, or cookie-based authentication
- **Bearer Token**: Authorization header with "Bearer" scheme (e.g., JWT)
- **Basic Auth**: HTTP Basic authentication (username:password)
- **OAuth2**: OAuth 2.0 token-based authentication with scope validation


## Error Handling

### Response Variants

Each API endpoint that returns data uses `std::variant` to represent multiple possible response types (success and errors):

```cpp
// Example: endpoint returns success (User) or errors (NotFound, ServerError)
using GetUserResponse = std::variant<User, NotFound, ServerError>;

GetUserResponse handleGetUser(const GetUserRequest& params) override {
    if (userExists(params.m_userId)) {
        User user = fetchUser(params.m_userId);
        return user;  // Automatically sets HTTP 200
    } else {
        NotFound error;
        error.setMessage("User not found");
        return error;  // Automatically sets HTTP 404
    }
}
```

The server automatically:
- Detects which type is returned from the variant
- Sets the appropriate HTTP status code
- Serializes the response to JSON

### HTTP Status Codes

Status codes are automatically set based on the response type you return. Each model type is associated with a specific HTTP status code defined in your OpenAPI specification.

**Optimized Status Code Constants:**
The generator only creates HTTP status code constants (e.g., `HTTP_RESPONSE_CODE_200`, `HTTP_RESPONSE_CODE_404`) for codes actually used by your API operations. This reduces code bloat and compilation time compared to generating all possible HTTP status codes.

### Parameter Validation

The generated code automatically validates:
- **Required parameters**: Returns HTTP 400 if missing
- **Type conversion**: Returns HTTP 400 if parameter cannot be converted to expected type
- **JSON parsing**: Returns HTTP 400 if request body is invalid JSON

Custom validation logic should be implemented in your handler methods.

### Working with Optional Parameters

Optional parameters and model fields use `std::optional`:

```cpp
void handleRequest(const RequestParams& params) override {
    // Check if optional query parameter is present
    if (params.m_optionalParam) {
        auto value = *params.m_optionalParam;  // Dereference to get value
        // Use value...
    }

    // Check if optional request body is present
    if (params.m_request) {
        auto body = *params.m_request;  // Dereference to get body
        // Use body...
    }
}
```

## Advanced Features

### Parameter Serialization Styles

The generator supports various parameter serialization styles as defined in OpenAPI:

- **simple**: Comma-separated values (default for path/header)
- **form**: Ampersand-separated values (default for query)
- **spaceDelimited**: Space-separated values
- **pipeDelimited**: Pipe-separated values
- **deepObject**: Nested object notation for query parameters

These are automatically handled during parameter parsing.

### Enum Handling

All generated enums automatically include an `UNSPECIFIED` value as the first enum entry for safe initialization:

```cpp
enum class Status {
    UNSPECIFIED = 0,  // Added automatically for safety
    PENDING,
    APPROVED,
    REJECTED
};

// Safe default initialization
Status status;  // Defaults to UNSPECIFIED (0)

// Explicit initialization
Status activeStatus = Status::APPROVED;

// Enum serialization/deserialization
// UNSPECIFIED is not a valid API value and indicates uninitialized state
```

**Why UNSPECIFIED?**
- Provides a safe default value for uninitialized enums
- Prevents undefined behavior from using uninitialized enum values
- Makes it clear when an enum hasn't been set vs. having a valid API value
- Does not appear in OpenAPI spec - internal C++ implementation detail

### Union Types (anyOf/oneOf)

When your OpenAPI spec uses `anyOf` or `oneOf`, the generated code uses `std::variant`:

```cpp
// OpenAPI: { "anyOf": [{"type": "string"}, {"type": "number"}] }
using MyUnionType = std::variant<std::string, double>;

// In your model:
MyUnionType value;

// Use std::visit to handle different types:
std::visit([](const auto& v) {
    using T = std::decay_t<decltype(v)>;
    if constexpr (std::is_same_v<T, std::string>) {
        std::cout << "String: " << v << std::endl;
    } else if constexpr (std::is_same_v<T, double>) {
        std::cout << "Number: " << v << std::endl;
    }
}, value);
```

## Additional Resources

- [cpp-httplib Documentation](https://github.com/yhirose/cpp-httplib)
- [nlohmann/json Documentation](https://github.com/nlohmann/json)
- [OpenAPI Generator Documentation](https://openapi-generator.tech/docs/generators/cpp-httplib-server)
- [OpenAPI Specification](https://swagger.io/specification/)

- [cpp-httplib Documentation](https://github.com/yhirose/cpp-httplib)
- [nlohmann/json Documentation](https://github.com/nlohmann/json)
- [OpenAPI Generator Documentation](https://openapi-generator.tech/docs/generators/)
