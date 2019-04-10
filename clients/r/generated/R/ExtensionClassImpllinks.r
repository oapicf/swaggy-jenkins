# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' ExtensionClassImpllinks Class
#'
#' @field self 
#' @field _class 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtensionClassImpllinks <- R6::R6Class(
  'ExtensionClassImpllinks',
  public = list(
    `self` = NULL,
    `_class` = NULL,
    initialize = function(`self`, `_class`){
      if (!missing(`self`)) {
        stopifnot(R6::is.R6(`self`))
        self$`self` <- `self`
      }
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
    },
    toJSON = function() {
      ExtensionClassImpllinksObject <- list()
      if (!is.null(self$`self`)) {
        ExtensionClassImpllinksObject[['self']] <- self$`self`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        ExtensionClassImpllinksObject[['_class']] <- self$`_class`
      }

      ExtensionClassImpllinksObject
    },
    fromJSON = function(ExtensionClassImpllinksJson) {
      ExtensionClassImpllinksObject <- jsonlite::fromJSON(ExtensionClassImpllinksJson)
      if (!is.null(ExtensionClassImpllinksObject$`self`)) {
        selfObject <- Link$new()
        selfObject$fromJSON(jsonlite::toJSON(ExtensionClassImpllinksObject$self, auto_unbox = TRUE))
        self$`self` <- selfObject
      }
      if (!is.null(ExtensionClassImpllinksObject$`_class`)) {
        self$`_class` <- ExtensionClassImpllinksObject$`_class`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "self": %s,
           "_class": %s
        }',
        self$`self`$toJSON(),
        self$`_class`
      )
    },
    fromJSONString = function(ExtensionClassImpllinksJson) {
      ExtensionClassImpllinksObject <- jsonlite::fromJSON(ExtensionClassImpllinksJson)
      LinkObject <- Link$new()
      self$`self` <- LinkObject$fromJSON(jsonlite::toJSON(ExtensionClassImpllinksObject$self, auto_unbox = TRUE))
      self$`_class` <- ExtensionClassImpllinksObject$`_class`
    }
  )
)
