# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' GithubRepository Class
#'
#' @field _class 
#' @field _links 
#' @field defaultBranch 
#' @field description 
#' @field name 
#' @field permissions 
#' @field private 
#' @field fullName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepository <- R6::R6Class(
  'GithubRepository',
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `defaultBranch` = NULL,
    `description` = NULL,
    `name` = NULL,
    `permissions` = NULL,
    `private` = NULL,
    `fullName` = NULL,
    initialize = function(`_class`, `_links`, `defaultBranch`, `description`, `name`, `permissions`, `private`, `fullName`){
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!missing(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!missing(`defaultBranch`)) {
        stopifnot(is.character(`defaultBranch`), length(`defaultBranch`) == 1)
        self$`defaultBranch` <- `defaultBranch`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!missing(`private`)) {
        self$`private` <- `private`
      }
      if (!missing(`fullName`)) {
        stopifnot(is.character(`fullName`), length(`fullName`) == 1)
        self$`fullName` <- `fullName`
      }
    },
    toJSON = function() {
      GithubRepositoryObject <- list()
      if (!is.null(self$`_class`)) {
        GithubRepositoryObject[['_class']] <- self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubRepositoryObject[['_links']] <- self$`_links`$toJSON()
      }
      if (!is.null(self$`defaultBranch`)) {
        GithubRepositoryObject[['defaultBranch']] <- self$`defaultBranch`
      }
      if (!is.null(self$`description`)) {
        GithubRepositoryObject[['description']] <- self$`description`
      }
      if (!is.null(self$`name`)) {
        GithubRepositoryObject[['name']] <- self$`name`
      }
      if (!is.null(self$`permissions`)) {
        GithubRepositoryObject[['permissions']] <- self$`permissions`$toJSON()
      }
      if (!is.null(self$`private`)) {
        GithubRepositoryObject[['private']] <- self$`private`
      }
      if (!is.null(self$`fullName`)) {
        GithubRepositoryObject[['fullName']] <- self$`fullName`
      }

      GithubRepositoryObject
    },
    fromJSON = function(GithubRepositoryJson) {
      GithubRepositoryObject <- jsonlite::fromJSON(GithubRepositoryJson)
      if (!is.null(GithubRepositoryObject$`_class`)) {
        self$`_class` <- GithubRepositoryObject$`_class`
      }
      if (!is.null(GithubRepositoryObject$`_links`)) {
        _linksObject <- GithubRepositorylinks$new()
        _linksObject$fromJSON(jsonlite::toJSON(GithubRepositoryObject$_links, auto_unbox = TRUE))
        self$`_links` <- _linksObject
      }
      if (!is.null(GithubRepositoryObject$`defaultBranch`)) {
        self$`defaultBranch` <- GithubRepositoryObject$`defaultBranch`
      }
      if (!is.null(GithubRepositoryObject$`description`)) {
        self$`description` <- GithubRepositoryObject$`description`
      }
      if (!is.null(GithubRepositoryObject$`name`)) {
        self$`name` <- GithubRepositoryObject$`name`
      }
      if (!is.null(GithubRepositoryObject$`permissions`)) {
        permissionsObject <- GithubRepositorypermissions$new()
        permissionsObject$fromJSON(jsonlite::toJSON(GithubRepositoryObject$permissions, auto_unbox = TRUE))
        self$`permissions` <- permissionsObject
      }
      if (!is.null(GithubRepositoryObject$`private`)) {
        self$`private` <- GithubRepositoryObject$`private`
      }
      if (!is.null(GithubRepositoryObject$`fullName`)) {
        self$`fullName` <- GithubRepositoryObject$`fullName`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "_class": %s,
           "_links": %s,
           "defaultBranch": %s,
           "description": %s,
           "name": %s,
           "permissions": %s,
           "private": %s,
           "fullName": %s
        }',
        self$`_class`,
        self$`_links`$toJSON(),
        self$`defaultBranch`,
        self$`description`,
        self$`name`,
        self$`permissions`$toJSON(),
        self$`private`,
        self$`fullName`
      )
    },
    fromJSONString = function(GithubRepositoryJson) {
      GithubRepositoryObject <- jsonlite::fromJSON(GithubRepositoryJson)
      self$`_class` <- GithubRepositoryObject$`_class`
      GithubRepositorylinksObject <- GithubRepositorylinks$new()
      self$`_links` <- GithubRepositorylinksObject$fromJSON(jsonlite::toJSON(GithubRepositoryObject$_links, auto_unbox = TRUE))
      self$`defaultBranch` <- GithubRepositoryObject$`defaultBranch`
      self$`description` <- GithubRepositoryObject$`description`
      self$`name` <- GithubRepositoryObject$`name`
      GithubRepositorypermissionsObject <- GithubRepositorypermissions$new()
      self$`permissions` <- GithubRepositorypermissionsObject$fromJSON(jsonlite::toJSON(GithubRepositoryObject$permissions, auto_unbox = TRUE))
      self$`private` <- GithubRepositoryObject$`private`
      self$`fullName` <- GithubRepositoryObject$`fullName`
    }
  )
)
