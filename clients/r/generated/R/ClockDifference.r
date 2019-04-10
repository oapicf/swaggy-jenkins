# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' ClockDifference Class
#'
#' @field _class 
#' @field diff 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClockDifference <- R6::R6Class(
  'ClockDifference',
  public = list(
    `_class` = NULL,
    `diff` = NULL,
    initialize = function(`_class`, `diff`){
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!missing(`diff`)) {
        stopifnot(is.numeric(`diff`), length(`diff`) == 1)
        self$`diff` <- `diff`
      }
    },
    toJSON = function() {
      ClockDifferenceObject <- list()
      if (!is.null(self$`_class`)) {
        ClockDifferenceObject[['_class']] <- self$`_class`
      }
      if (!is.null(self$`diff`)) {
        ClockDifferenceObject[['diff']] <- self$`diff`
      }

      ClockDifferenceObject
    },
    fromJSON = function(ClockDifferenceJson) {
      ClockDifferenceObject <- jsonlite::fromJSON(ClockDifferenceJson)
      if (!is.null(ClockDifferenceObject$`_class`)) {
        self$`_class` <- ClockDifferenceObject$`_class`
      }
      if (!is.null(ClockDifferenceObject$`diff`)) {
        self$`diff` <- ClockDifferenceObject$`diff`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "_class": %s,
           "diff": %d
        }',
        self$`_class`,
        self$`diff`
      )
    },
    fromJSONString = function(ClockDifferenceJson) {
      ClockDifferenceObject <- jsonlite::fromJSON(ClockDifferenceJson)
      self$`_class` <- ClockDifferenceObject$`_class`
      self$`diff` <- ClockDifferenceObject$`diff`
    }
  )
)
