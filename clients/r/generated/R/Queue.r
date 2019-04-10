# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' Queue Class
#'
#' @field _class 
#' @field items 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Queue <- R6::R6Class(
  'Queue',
  public = list(
    `_class` = NULL,
    `items` = NULL,
    initialize = function(`_class`, `items`){
      if (!missing(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!missing(`items`)) {
        stopifnot(is.list(`items`), length(`items`) != 0)
        lapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
    },
    toJSON = function() {
      QueueObject <- list()
      if (!is.null(self$`_class`)) {
        QueueObject[['_class']] <- self$`_class`
      }
      if (!is.null(self$`items`)) {
        QueueObject[['items']] <- lapply(self$`items`, function(x) x$toJSON())
      }

      QueueObject
    },
    fromJSON = function(QueueJson) {
      QueueObject <- jsonlite::fromJSON(QueueJson)
      if (!is.null(QueueObject$`_class`)) {
        self$`_class` <- QueueObject$`_class`
      }
      if (!is.null(QueueObject$`items`)) {
        self$`items` <- lapply(QueueObject$`items`, function(x) {
          itemsObject <- QueueBlockedItem$new()
          itemsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          itemsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "_class": %s,
           "items": [%s]
        }',
        self$`_class`,
        lapply(self$`items`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(QueueJson) {
      QueueObject <- jsonlite::fromJSON(QueueJson)
      self$`_class` <- QueueObject$`_class`
      self$`items` <- lapply(QueueObject$`items`, function(x) QueueBlockedItem$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
