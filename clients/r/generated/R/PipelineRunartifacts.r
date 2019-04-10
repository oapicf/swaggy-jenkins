# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' PipelineRunartifacts Class
#'
#' @field name 
#' @field size 
#' @field url 
#' @field _class 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineRunartifacts <- R6::R6Class(
  'PipelineRunartifacts',
  public = list(
    `name` = NULL,
    `size` = NULL,
    `url` = NULL,
    `_class` = NULL,
    initialize = function(`name`, `size`, `url`, `_class`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`size`)) {
        stopifnot(is.numeric(`size`), length(`size`) == 1)
        self$`size` <- `size`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
    },
    toJSON = function() {
      PipelineRunartifactsObject <- list()
      if (!is.null(self$`name`)) {
        PipelineRunartifactsObject[['name']] <- self$`name`
      }
      if (!is.null(self$`size`)) {
        PipelineRunartifactsObject[['size']] <- self$`size`
      }
      if (!is.null(self$`url`)) {
        PipelineRunartifactsObject[['url']] <- self$`url`
      }
      if (!is.null(self$`_class`)) {
        PipelineRunartifactsObject[['_class']] <- self$`_class`
      }

      PipelineRunartifactsObject
    },
    fromJSON = function(PipelineRunartifactsJson) {
      PipelineRunartifactsObject <- jsonlite::fromJSON(PipelineRunartifactsJson)
      if (!is.null(PipelineRunartifactsObject$`name`)) {
        self$`name` <- PipelineRunartifactsObject$`name`
      }
      if (!is.null(PipelineRunartifactsObject$`size`)) {
        self$`size` <- PipelineRunartifactsObject$`size`
      }
      if (!is.null(PipelineRunartifactsObject$`url`)) {
        self$`url` <- PipelineRunartifactsObject$`url`
      }
      if (!is.null(PipelineRunartifactsObject$`_class`)) {
        self$`_class` <- PipelineRunartifactsObject$`_class`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "size": %d,
           "url": %s,
           "_class": %s
        }',
        self$`name`,
        self$`size`,
        self$`url`,
        self$`_class`
      )
    },
    fromJSONString = function(PipelineRunartifactsJson) {
      PipelineRunartifactsObject <- jsonlite::fromJSON(PipelineRunartifactsJson)
      self$`name` <- PipelineRunartifactsObject$`name`
      self$`size` <- PipelineRunartifactsObject$`size`
      self$`url` <- PipelineRunartifactsObject$`url`
      self$`_class` <- PipelineRunartifactsObject$`_class`
    }
  )
)
