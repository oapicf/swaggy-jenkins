# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' PipelinelatestRun Class
#'
#' @field artifacts 
#' @field durationInMillis 
#' @field estimatedDurationInMillis 
#' @field enQueueTime 
#' @field endTime 
#' @field id 
#' @field organization 
#' @field pipeline 
#' @field result 
#' @field runSummary 
#' @field startTime 
#' @field state 
#' @field type 
#' @field commitId 
#' @field _class 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelinelatestRun <- R6::R6Class(
  'PipelinelatestRun',
  public = list(
    `artifacts` = NULL,
    `durationInMillis` = NULL,
    `estimatedDurationInMillis` = NULL,
    `enQueueTime` = NULL,
    `endTime` = NULL,
    `id` = NULL,
    `organization` = NULL,
    `pipeline` = NULL,
    `result` = NULL,
    `runSummary` = NULL,
    `startTime` = NULL,
    `state` = NULL,
    `type` = NULL,
    `commitId` = NULL,
    `_class` = NULL,
    initialize = function(`artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`, `_class`){
      if (!missing(`artifacts`)) {
        stopifnot(is.list(`artifacts`), length(`artifacts`) != 0)
        lapply(`artifacts`, function(x) stopifnot(R6::is.R6(x)))
        self$`artifacts` <- `artifacts`
      }
      if (!missing(`durationInMillis`)) {
        stopifnot(is.numeric(`durationInMillis`), length(`durationInMillis`) == 1)
        self$`durationInMillis` <- `durationInMillis`
      }
      if (!missing(`estimatedDurationInMillis`)) {
        stopifnot(is.numeric(`estimatedDurationInMillis`), length(`estimatedDurationInMillis`) == 1)
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
      }
      if (!missing(`enQueueTime`)) {
        stopifnot(is.character(`enQueueTime`), length(`enQueueTime`) == 1)
        self$`enQueueTime` <- `enQueueTime`
      }
      if (!missing(`endTime`)) {
        stopifnot(is.character(`endTime`), length(`endTime`) == 1)
        self$`endTime` <- `endTime`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`organization`)) {
        stopifnot(is.character(`organization`), length(`organization`) == 1)
        self$`organization` <- `organization`
      }
      if (!missing(`pipeline`)) {
        stopifnot(is.character(`pipeline`), length(`pipeline`) == 1)
        self$`pipeline` <- `pipeline`
      }
      if (!missing(`result`)) {
        stopifnot(is.character(`result`), length(`result`) == 1)
        self$`result` <- `result`
      }
      if (!missing(`runSummary`)) {
        stopifnot(is.character(`runSummary`), length(`runSummary`) == 1)
        self$`runSummary` <- `runSummary`
      }
      if (!missing(`startTime`)) {
        stopifnot(is.character(`startTime`), length(`startTime`) == 1)
        self$`startTime` <- `startTime`
      }
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`commitId`)) {
        stopifnot(is.character(`commitId`), length(`commitId`) == 1)
        self$`commitId` <- `commitId`
      }
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
    },
    toJSON = function() {
      PipelinelatestRunObject <- list()
      if (!is.null(self$`artifacts`)) {
        PipelinelatestRunObject[['artifacts']] <- lapply(self$`artifacts`, function(x) x$toJSON())
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelinelatestRunObject[['durationInMillis']] <- self$`durationInMillis`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelinelatestRunObject[['estimatedDurationInMillis']] <- self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`enQueueTime`)) {
        PipelinelatestRunObject[['enQueueTime']] <- self$`enQueueTime`
      }
      if (!is.null(self$`endTime`)) {
        PipelinelatestRunObject[['endTime']] <- self$`endTime`
      }
      if (!is.null(self$`id`)) {
        PipelinelatestRunObject[['id']] <- self$`id`
      }
      if (!is.null(self$`organization`)) {
        PipelinelatestRunObject[['organization']] <- self$`organization`
      }
      if (!is.null(self$`pipeline`)) {
        PipelinelatestRunObject[['pipeline']] <- self$`pipeline`
      }
      if (!is.null(self$`result`)) {
        PipelinelatestRunObject[['result']] <- self$`result`
      }
      if (!is.null(self$`runSummary`)) {
        PipelinelatestRunObject[['runSummary']] <- self$`runSummary`
      }
      if (!is.null(self$`startTime`)) {
        PipelinelatestRunObject[['startTime']] <- self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelinelatestRunObject[['state']] <- self$`state`
      }
      if (!is.null(self$`type`)) {
        PipelinelatestRunObject[['type']] <- self$`type`
      }
      if (!is.null(self$`commitId`)) {
        PipelinelatestRunObject[['commitId']] <- self$`commitId`
      }
      if (!is.null(self$`_class`)) {
        PipelinelatestRunObject[['_class']] <- self$`_class`
      }

      PipelinelatestRunObject
    },
    fromJSON = function(PipelinelatestRunJson) {
      PipelinelatestRunObject <- jsonlite::fromJSON(PipelinelatestRunJson)
      if (!is.null(PipelinelatestRunObject$`artifacts`)) {
        self$`artifacts` <- lapply(PipelinelatestRunObject$`artifacts`, function(x) {
          artifactsObject <- PipelinelatestRunartifacts$new()
          artifactsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          artifactsObject
        })
      }
      if (!is.null(PipelinelatestRunObject$`durationInMillis`)) {
        self$`durationInMillis` <- PipelinelatestRunObject$`durationInMillis`
      }
      if (!is.null(PipelinelatestRunObject$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- PipelinelatestRunObject$`estimatedDurationInMillis`
      }
      if (!is.null(PipelinelatestRunObject$`enQueueTime`)) {
        self$`enQueueTime` <- PipelinelatestRunObject$`enQueueTime`
      }
      if (!is.null(PipelinelatestRunObject$`endTime`)) {
        self$`endTime` <- PipelinelatestRunObject$`endTime`
      }
      if (!is.null(PipelinelatestRunObject$`id`)) {
        self$`id` <- PipelinelatestRunObject$`id`
      }
      if (!is.null(PipelinelatestRunObject$`organization`)) {
        self$`organization` <- PipelinelatestRunObject$`organization`
      }
      if (!is.null(PipelinelatestRunObject$`pipeline`)) {
        self$`pipeline` <- PipelinelatestRunObject$`pipeline`
      }
      if (!is.null(PipelinelatestRunObject$`result`)) {
        self$`result` <- PipelinelatestRunObject$`result`
      }
      if (!is.null(PipelinelatestRunObject$`runSummary`)) {
        self$`runSummary` <- PipelinelatestRunObject$`runSummary`
      }
      if (!is.null(PipelinelatestRunObject$`startTime`)) {
        self$`startTime` <- PipelinelatestRunObject$`startTime`
      }
      if (!is.null(PipelinelatestRunObject$`state`)) {
        self$`state` <- PipelinelatestRunObject$`state`
      }
      if (!is.null(PipelinelatestRunObject$`type`)) {
        self$`type` <- PipelinelatestRunObject$`type`
      }
      if (!is.null(PipelinelatestRunObject$`commitId`)) {
        self$`commitId` <- PipelinelatestRunObject$`commitId`
      }
      if (!is.null(PipelinelatestRunObject$`_class`)) {
        self$`_class` <- PipelinelatestRunObject$`_class`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "artifacts": [%s],
           "durationInMillis": %d,
           "estimatedDurationInMillis": %d,
           "enQueueTime": %s,
           "endTime": %s,
           "id": %s,
           "organization": %s,
           "pipeline": %s,
           "result": %s,
           "runSummary": %s,
           "startTime": %s,
           "state": %s,
           "type": %s,
           "commitId": %s,
           "_class": %s
        }',
        lapply(self$`artifacts`, function(x) paste(x$toJSON(), sep=",")),
        self$`durationInMillis`,
        self$`estimatedDurationInMillis`,
        self$`enQueueTime`,
        self$`endTime`,
        self$`id`,
        self$`organization`,
        self$`pipeline`,
        self$`result`,
        self$`runSummary`,
        self$`startTime`,
        self$`state`,
        self$`type`,
        self$`commitId`,
        self$`_class`
      )
    },
    fromJSONString = function(PipelinelatestRunJson) {
      PipelinelatestRunObject <- jsonlite::fromJSON(PipelinelatestRunJson)
      self$`artifacts` <- lapply(PipelinelatestRunObject$`artifacts`, function(x) PipelinelatestRunartifacts$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`durationInMillis` <- PipelinelatestRunObject$`durationInMillis`
      self$`estimatedDurationInMillis` <- PipelinelatestRunObject$`estimatedDurationInMillis`
      self$`enQueueTime` <- PipelinelatestRunObject$`enQueueTime`
      self$`endTime` <- PipelinelatestRunObject$`endTime`
      self$`id` <- PipelinelatestRunObject$`id`
      self$`organization` <- PipelinelatestRunObject$`organization`
      self$`pipeline` <- PipelinelatestRunObject$`pipeline`
      self$`result` <- PipelinelatestRunObject$`result`
      self$`runSummary` <- PipelinelatestRunObject$`runSummary`
      self$`startTime` <- PipelinelatestRunObject$`startTime`
      self$`state` <- PipelinelatestRunObject$`state`
      self$`type` <- PipelinelatestRunObject$`type`
      self$`commitId` <- PipelinelatestRunObject$`commitId`
      self$`_class` <- PipelinelatestRunObject$`_class`
    }
  )
)
