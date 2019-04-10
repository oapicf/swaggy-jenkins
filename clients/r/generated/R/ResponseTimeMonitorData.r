# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' ResponseTimeMonitorData Class
#'
#' @field _class 
#' @field timestamp 
#' @field average 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeMonitorData <- R6::R6Class(
  'ResponseTimeMonitorData',
  public = list(
    `_class` = NULL,
    `timestamp` = NULL,
    `average` = NULL,
    initialize = function(`_class`, `timestamp`, `average`){
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!missing(`timestamp`)) {
        stopifnot(is.numeric(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!missing(`average`)) {
        stopifnot(is.numeric(`average`), length(`average`) == 1)
        self$`average` <- `average`
      }
    },
    toJSON = function() {
      ResponseTimeMonitorDataObject <- list()
      if (!is.null(self$`_class`)) {
        ResponseTimeMonitorDataObject[['_class']] <- self$`_class`
      }
      if (!is.null(self$`timestamp`)) {
        ResponseTimeMonitorDataObject[['timestamp']] <- self$`timestamp`
      }
      if (!is.null(self$`average`)) {
        ResponseTimeMonitorDataObject[['average']] <- self$`average`
      }

      ResponseTimeMonitorDataObject
    },
    fromJSON = function(ResponseTimeMonitorDataJson) {
      ResponseTimeMonitorDataObject <- jsonlite::fromJSON(ResponseTimeMonitorDataJson)
      if (!is.null(ResponseTimeMonitorDataObject$`_class`)) {
        self$`_class` <- ResponseTimeMonitorDataObject$`_class`
      }
      if (!is.null(ResponseTimeMonitorDataObject$`timestamp`)) {
        self$`timestamp` <- ResponseTimeMonitorDataObject$`timestamp`
      }
      if (!is.null(ResponseTimeMonitorDataObject$`average`)) {
        self$`average` <- ResponseTimeMonitorDataObject$`average`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "_class": %s,
           "timestamp": %d,
           "average": %d
        }',
        self$`_class`,
        self$`timestamp`,
        self$`average`
      )
    },
    fromJSONString = function(ResponseTimeMonitorDataJson) {
      ResponseTimeMonitorDataObject <- jsonlite::fromJSON(ResponseTimeMonitorDataJson)
      self$`_class` <- ResponseTimeMonitorDataObject$`_class`
      self$`timestamp` <- ResponseTimeMonitorDataObject$`timestamp`
      self$`average` <- ResponseTimeMonitorDataObject$`average`
    }
  )
)
