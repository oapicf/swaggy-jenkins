# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# The version of the OpenAPI document: 1.5.1-pre.0
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title User
#'
#' @description User Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field _class  character [optional]
#'
#' @field id  character [optional]
#'
#' @field fullName  character [optional]
#'
#' @field email  character [optional]
#'
#' @field name  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  'User',
  public = list(
    `_class` = NULL,
    `id` = NULL,
    `fullName` = NULL,
    `email` = NULL,
    `name` = NULL,
    initialize = function(
        `_class`=NULL, `id`=NULL, `fullName`=NULL, `email`=NULL, `name`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`fullName`)) {
        stopifnot(is.character(`fullName`), length(`fullName`) == 1)
        self$`fullName` <- `fullName`
      }
      if (!is.null(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      UserObject <- list()
      if (!is.null(self$`_class`)) {
        UserObject[['_class']] <-
          self$`_class`
      }
      if (!is.null(self$`id`)) {
        UserObject[['id']] <-
          self$`id`
      }
      if (!is.null(self$`fullName`)) {
        UserObject[['fullName']] <-
          self$`fullName`
      }
      if (!is.null(self$`email`)) {
        UserObject[['email']] <-
          self$`email`
      }
      if (!is.null(self$`name`)) {
        UserObject[['name']] <-
          self$`name`
      }

      UserObject
    },
    fromJSON = function(UserJson) {
      UserObject <- jsonlite::fromJSON(UserJson)
      if (!is.null(UserObject$`_class`)) {
        self$`_class` <- UserObject$`_class`
      }
      if (!is.null(UserObject$`id`)) {
        self$`id` <- UserObject$`id`
      }
      if (!is.null(UserObject$`fullName`)) {
        self$`fullName` <- UserObject$`fullName`
      }
      if (!is.null(UserObject$`email`)) {
        self$`email` <- UserObject$`email`
      }
      if (!is.null(UserObject$`name`)) {
        self$`name` <- UserObject$`name`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`_class`)) {
        sprintf(
        '"_class":
          "%s"
                ',
        self$`_class`
        )},
        if (!is.null(self$`id`)) {
        sprintf(
        '"id":
          "%s"
                ',
        self$`id`
        )},
        if (!is.null(self$`fullName`)) {
        sprintf(
        '"fullName":
          "%s"
                ',
        self$`fullName`
        )},
        if (!is.null(self$`email`)) {
        sprintf(
        '"email":
          "%s"
                ',
        self$`email`
        )},
        if (!is.null(self$`name`)) {
        sprintf(
        '"name":
          "%s"
                ',
        self$`name`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(UserJson) {
      UserObject <- jsonlite::fromJSON(UserJson)
      self$`_class` <- UserObject$`_class`
      self$`id` <- UserObject$`id`
      self$`fullName` <- UserObject$`fullName`
      self$`email` <- UserObject$`email`
      self$`name` <- UserObject$`name`
      self
    }
  )
)
