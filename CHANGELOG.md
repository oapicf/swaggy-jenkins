# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 1.1.1 - 2019-04-10
### Changed 
- Rename baseRemoteAccess to base tag for getCrumb operation

### Removed
- Remove remoteAccess tag from getCrumb operation

## 1.1.0 - 2019-04-10
### Added
- Add baseRemoteAccess tag to getCrumb operation

### Changed
- Upgrade OpenAPI Generator to v3.3.4

## 1.0.0 - 2018-08-21
### Added
- Add JWT auth security definition and paths

### Changed
- Upgrade spec to OpenAPI v3
- Replace Swagger CodeGen with OpenAPI Generator

### Fixed
- Fix duplicated JWT-related operation IDs #2

## 0.1.0 - 2017-08-06
### Added
- Add Blue Ocean API
- Add security to all operations

### Changed
- Move getComputer operation's depth parameter from path to query

### Removed
- Remove package name and method prefix from definition names

## 0.0.1 - 2017-06-09
### Added
- Initial version
