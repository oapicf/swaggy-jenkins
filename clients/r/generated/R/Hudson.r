# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# The version of the OpenAPI document: 1.1.2-pre.0
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Hudson
#'
#' @description Hudson Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field _class  character [optional]
#'
#' @field assignedLabels  list( \link{HudsonassignedLabels} ) [optional]
#'
#' @field mode  character [optional]
#'
#' @field nodeDescription  character [optional]
#'
#' @field nodeName  character [optional]
#'
#' @field numExecutors  integer [optional]
#'
#' @field description  character [optional]
#'
#' @field jobs  list( \link{FreeStyleProject} ) [optional]
#'
#' @field primaryView  \link{AllView} [optional]
#'
#' @field quietingDown  character [optional]
#'
#' @field slaveAgentPort  integer [optional]
#'
#' @field unlabeledLoad  \link{UnlabeledLoadStatistics} [optional]
#'
#' @field useCrumbs  character [optional]
#'
#' @field useSecurity  character [optional]
#'
#' @field views  list( \link{AllView} ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Hudson <- R6::R6Class(
  'Hudson',
  public = list(
    `_class` = NULL,
    `assignedLabels` = NULL,
    `mode` = NULL,
    `nodeDescription` = NULL,
    `nodeName` = NULL,
    `numExecutors` = NULL,
    `description` = NULL,
    `jobs` = NULL,
    `primaryView` = NULL,
    `quietingDown` = NULL,
    `slaveAgentPort` = NULL,
    `unlabeledLoad` = NULL,
    `useCrumbs` = NULL,
    `useSecurity` = NULL,
    `views` = NULL,
    initialize = function(
        `_class`=NULL, `assignedLabels`=NULL, `mode`=NULL, `nodeDescription`=NULL, `nodeName`=NULL, `numExecutors`=NULL, `description`=NULL, `jobs`=NULL, `primaryView`=NULL, `quietingDown`=NULL, `slaveAgentPort`=NULL, `unlabeledLoad`=NULL, `useCrumbs`=NULL, `useSecurity`=NULL, `views`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`_class`)) {
        stopifnot(is.character(`_class`), length(`_class`) == 1)
        self$`_class` <- `_class`
      }
      if (!is.null(`assignedLabels`)) {
        stopifnot(is.vector(`assignedLabels`), length(`assignedLabels`) != 0)
        sapply(`assignedLabels`, function(x) stopifnot(R6::is.R6(x)))
        self$`assignedLabels` <- `assignedLabels`
      }
      if (!is.null(`mode`)) {
        stopifnot(is.character(`mode`), length(`mode`) == 1)
        self$`mode` <- `mode`
      }
      if (!is.null(`nodeDescription`)) {
        stopifnot(is.character(`nodeDescription`), length(`nodeDescription`) == 1)
        self$`nodeDescription` <- `nodeDescription`
      }
      if (!is.null(`nodeName`)) {
        stopifnot(is.character(`nodeName`), length(`nodeName`) == 1)
        self$`nodeName` <- `nodeName`
      }
      if (!is.null(`numExecutors`)) {
        stopifnot(is.numeric(`numExecutors`), length(`numExecutors`) == 1)
        self$`numExecutors` <- `numExecutors`
      }
      if (!is.null(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!is.null(`jobs`)) {
        stopifnot(is.vector(`jobs`), length(`jobs`) != 0)
        sapply(`jobs`, function(x) stopifnot(R6::is.R6(x)))
        self$`jobs` <- `jobs`
      }
      if (!is.null(`primaryView`)) {
        stopifnot(R6::is.R6(`primaryView`))
        self$`primaryView` <- `primaryView`
      }
      if (!is.null(`quietingDown`)) {
        stopifnot(is.logical(`quietingDown`), length(`quietingDown`) == 1)
        self$`quietingDown` <- `quietingDown`
      }
      if (!is.null(`slaveAgentPort`)) {
        stopifnot(is.numeric(`slaveAgentPort`), length(`slaveAgentPort`) == 1)
        self$`slaveAgentPort` <- `slaveAgentPort`
      }
      if (!is.null(`unlabeledLoad`)) {
        stopifnot(R6::is.R6(`unlabeledLoad`))
        self$`unlabeledLoad` <- `unlabeledLoad`
      }
      if (!is.null(`useCrumbs`)) {
        stopifnot(is.logical(`useCrumbs`), length(`useCrumbs`) == 1)
        self$`useCrumbs` <- `useCrumbs`
      }
      if (!is.null(`useSecurity`)) {
        stopifnot(is.logical(`useSecurity`), length(`useSecurity`) == 1)
        self$`useSecurity` <- `useSecurity`
      }
      if (!is.null(`views`)) {
        stopifnot(is.vector(`views`), length(`views`) != 0)
        sapply(`views`, function(x) stopifnot(R6::is.R6(x)))
        self$`views` <- `views`
      }
    },
    toJSON = function() {
      HudsonObject <- list()
      if (!is.null(self$`_class`)) {
        HudsonObject[['_class']] <-
          self$`_class`
      }
      if (!is.null(self$`assignedLabels`)) {
        HudsonObject[['assignedLabels']] <-
          lapply(self$`assignedLabels`, function(x) x$toJSON())
      }
      if (!is.null(self$`mode`)) {
        HudsonObject[['mode']] <-
          self$`mode`
      }
      if (!is.null(self$`nodeDescription`)) {
        HudsonObject[['nodeDescription']] <-
          self$`nodeDescription`
      }
      if (!is.null(self$`nodeName`)) {
        HudsonObject[['nodeName']] <-
          self$`nodeName`
      }
      if (!is.null(self$`numExecutors`)) {
        HudsonObject[['numExecutors']] <-
          self$`numExecutors`
      }
      if (!is.null(self$`description`)) {
        HudsonObject[['description']] <-
          self$`description`
      }
      if (!is.null(self$`jobs`)) {
        HudsonObject[['jobs']] <-
          lapply(self$`jobs`, function(x) x$toJSON())
      }
      if (!is.null(self$`primaryView`)) {
        HudsonObject[['primaryView']] <-
          self$`primaryView`$toJSON()
      }
      if (!is.null(self$`quietingDown`)) {
        HudsonObject[['quietingDown']] <-
          self$`quietingDown`
      }
      if (!is.null(self$`slaveAgentPort`)) {
        HudsonObject[['slaveAgentPort']] <-
          self$`slaveAgentPort`
      }
      if (!is.null(self$`unlabeledLoad`)) {
        HudsonObject[['unlabeledLoad']] <-
          self$`unlabeledLoad`$toJSON()
      }
      if (!is.null(self$`useCrumbs`)) {
        HudsonObject[['useCrumbs']] <-
          self$`useCrumbs`
      }
      if (!is.null(self$`useSecurity`)) {
        HudsonObject[['useSecurity']] <-
          self$`useSecurity`
      }
      if (!is.null(self$`views`)) {
        HudsonObject[['views']] <-
          lapply(self$`views`, function(x) x$toJSON())
      }

      HudsonObject
    },
    fromJSON = function(HudsonJson) {
      HudsonObject <- jsonlite::fromJSON(HudsonJson)
      if (!is.null(HudsonObject$`_class`)) {
        self$`_class` <- HudsonObject$`_class`
      }
      if (!is.null(HudsonObject$`assignedLabels`)) {
        self$`assignedLabels` <- ApiClient$new()$deserializeObj(HudsonObject$`assignedLabels`, "array[HudsonassignedLabels]", loadNamespace("openapi"))
      }
      if (!is.null(HudsonObject$`mode`)) {
        self$`mode` <- HudsonObject$`mode`
      }
      if (!is.null(HudsonObject$`nodeDescription`)) {
        self$`nodeDescription` <- HudsonObject$`nodeDescription`
      }
      if (!is.null(HudsonObject$`nodeName`)) {
        self$`nodeName` <- HudsonObject$`nodeName`
      }
      if (!is.null(HudsonObject$`numExecutors`)) {
        self$`numExecutors` <- HudsonObject$`numExecutors`
      }
      if (!is.null(HudsonObject$`description`)) {
        self$`description` <- HudsonObject$`description`
      }
      if (!is.null(HudsonObject$`jobs`)) {
        self$`jobs` <- ApiClient$new()$deserializeObj(HudsonObject$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      }
      if (!is.null(HudsonObject$`primaryView`)) {
        primaryViewObject <- AllView$new()
        primaryViewObject$fromJSON(jsonlite::toJSON(HudsonObject$primaryView, auto_unbox = TRUE, digits = NA))
        self$`primaryView` <- primaryViewObject
      }
      if (!is.null(HudsonObject$`quietingDown`)) {
        self$`quietingDown` <- HudsonObject$`quietingDown`
      }
      if (!is.null(HudsonObject$`slaveAgentPort`)) {
        self$`slaveAgentPort` <- HudsonObject$`slaveAgentPort`
      }
      if (!is.null(HudsonObject$`unlabeledLoad`)) {
        unlabeledLoadObject <- UnlabeledLoadStatistics$new()
        unlabeledLoadObject$fromJSON(jsonlite::toJSON(HudsonObject$unlabeledLoad, auto_unbox = TRUE, digits = NA))
        self$`unlabeledLoad` <- unlabeledLoadObject
      }
      if (!is.null(HudsonObject$`useCrumbs`)) {
        self$`useCrumbs` <- HudsonObject$`useCrumbs`
      }
      if (!is.null(HudsonObject$`useSecurity`)) {
        self$`useSecurity` <- HudsonObject$`useSecurity`
      }
      if (!is.null(HudsonObject$`views`)) {
        self$`views` <- ApiClient$new()$deserializeObj(HudsonObject$`views`, "array[AllView]", loadNamespace("openapi"))
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
        if (!is.null(self$`assignedLabels`)) {
        sprintf(
        '"assignedLabels":
        [%s]
',
        paste(sapply(self$`assignedLabels`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`mode`)) {
        sprintf(
        '"mode":
          "%s"
                ',
        self$`mode`
        )},
        if (!is.null(self$`nodeDescription`)) {
        sprintf(
        '"nodeDescription":
          "%s"
                ',
        self$`nodeDescription`
        )},
        if (!is.null(self$`nodeName`)) {
        sprintf(
        '"nodeName":
          "%s"
                ',
        self$`nodeName`
        )},
        if (!is.null(self$`numExecutors`)) {
        sprintf(
        '"numExecutors":
          %d
                ',
        self$`numExecutors`
        )},
        if (!is.null(self$`description`)) {
        sprintf(
        '"description":
          "%s"
                ',
        self$`description`
        )},
        if (!is.null(self$`jobs`)) {
        sprintf(
        '"jobs":
        [%s]
',
        paste(sapply(self$`jobs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`primaryView`)) {
        sprintf(
        '"primaryView":
        %s
        ',
        jsonlite::toJSON(self$`primaryView`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`quietingDown`)) {
        sprintf(
        '"quietingDown":
          %s
                ',
        tolower(self$`quietingDown`)
        )},
        if (!is.null(self$`slaveAgentPort`)) {
        sprintf(
        '"slaveAgentPort":
          %d
                ',
        self$`slaveAgentPort`
        )},
        if (!is.null(self$`unlabeledLoad`)) {
        sprintf(
        '"unlabeledLoad":
        %s
        ',
        jsonlite::toJSON(self$`unlabeledLoad`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`useCrumbs`)) {
        sprintf(
        '"useCrumbs":
          %s
                ',
        tolower(self$`useCrumbs`)
        )},
        if (!is.null(self$`useSecurity`)) {
        sprintf(
        '"useSecurity":
          %s
                ',
        tolower(self$`useSecurity`)
        )},
        if (!is.null(self$`views`)) {
        sprintf(
        '"views":
        [%s]
',
        paste(sapply(self$`views`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(HudsonJson) {
      HudsonObject <- jsonlite::fromJSON(HudsonJson)
      self$`_class` <- HudsonObject$`_class`
      self$`assignedLabels` <- ApiClient$new()$deserializeObj(HudsonObject$`assignedLabels`, "array[HudsonassignedLabels]", loadNamespace("openapi"))
      self$`mode` <- HudsonObject$`mode`
      self$`nodeDescription` <- HudsonObject$`nodeDescription`
      self$`nodeName` <- HudsonObject$`nodeName`
      self$`numExecutors` <- HudsonObject$`numExecutors`
      self$`description` <- HudsonObject$`description`
      self$`jobs` <- ApiClient$new()$deserializeObj(HudsonObject$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      self$`primaryView` <- AllView$new()$fromJSON(jsonlite::toJSON(HudsonObject$primaryView, auto_unbox = TRUE, digits = NA))
      self$`quietingDown` <- HudsonObject$`quietingDown`
      self$`slaveAgentPort` <- HudsonObject$`slaveAgentPort`
      self$`unlabeledLoad` <- UnlabeledLoadStatistics$new()$fromJSON(jsonlite::toJSON(HudsonObject$unlabeledLoad, auto_unbox = TRUE, digits = NA))
      self$`useCrumbs` <- HudsonObject$`useCrumbs`
      self$`useSecurity` <- HudsonObject$`useSecurity`
      self$`views` <- ApiClient$new()$deserializeObj(HudsonObject$`views`, "array[AllView]", loadNamespace("openapi"))
      self
    }
  )
)
