#' Create a new Hudson
#'
#' @description
#' Hudson Class
#'
#' @docType class
#' @title Hudson
#' @description Hudson Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field assignedLabels  list(\link{HudsonassignedLabels}) [optional]
#' @field mode  character [optional]
#' @field nodeDescription  character [optional]
#' @field nodeName  character [optional]
#' @field numExecutors  integer [optional]
#' @field description  character [optional]
#' @field jobs  list(\link{FreeStyleProject}) [optional]
#' @field primaryView  \link{AllView} [optional]
#' @field quietingDown  character [optional]
#' @field slaveAgentPort  integer [optional]
#' @field unlabeledLoad  \link{UnlabeledLoadStatistics} [optional]
#' @field useCrumbs  character [optional]
#' @field useSecurity  character [optional]
#' @field views  list(\link{AllView}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Hudson <- R6::R6Class(
  "Hudson",
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

    #' @description
    #' Initialize a new Hudson class.
    #'
    #' @param _class _class
    #' @param assignedLabels assignedLabels
    #' @param mode mode
    #' @param nodeDescription nodeDescription
    #' @param nodeName nodeName
    #' @param numExecutors numExecutors
    #' @param description description
    #' @param jobs jobs
    #' @param primaryView primaryView
    #' @param quietingDown quietingDown
    #' @param slaveAgentPort slaveAgentPort
    #' @param unlabeledLoad unlabeledLoad
    #' @param useCrumbs useCrumbs
    #' @param useSecurity useSecurity
    #' @param views views
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `assignedLabels` = NULL, `mode` = NULL, `nodeDescription` = NULL, `nodeName` = NULL, `numExecutors` = NULL, `description` = NULL, `jobs` = NULL, `primaryView` = NULL, `quietingDown` = NULL, `slaveAgentPort` = NULL, `unlabeledLoad` = NULL, `useCrumbs` = NULL, `useSecurity` = NULL, `views` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`assignedLabels`)) {
        stopifnot(is.vector(`assignedLabels`), length(`assignedLabels`) != 0)
        sapply(`assignedLabels`, function(x) stopifnot(R6::is.R6(x)))
        self$`assignedLabels` <- `assignedLabels`
      }
      if (!is.null(`mode`)) {
        if (!(is.character(`mode`) && length(`mode`) == 1)) {
          stop(paste("Error! Invalid data for `mode`. Must be a string:", `mode`))
        }
        self$`mode` <- `mode`
      }
      if (!is.null(`nodeDescription`)) {
        if (!(is.character(`nodeDescription`) && length(`nodeDescription`) == 1)) {
          stop(paste("Error! Invalid data for `nodeDescription`. Must be a string:", `nodeDescription`))
        }
        self$`nodeDescription` <- `nodeDescription`
      }
      if (!is.null(`nodeName`)) {
        if (!(is.character(`nodeName`) && length(`nodeName`) == 1)) {
          stop(paste("Error! Invalid data for `nodeName`. Must be a string:", `nodeName`))
        }
        self$`nodeName` <- `nodeName`
      }
      if (!is.null(`numExecutors`)) {
        if (!(is.numeric(`numExecutors`) && length(`numExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `numExecutors`. Must be an integer:", `numExecutors`))
        }
        self$`numExecutors` <- `numExecutors`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
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
        if (!(is.logical(`quietingDown`) && length(`quietingDown`) == 1)) {
          stop(paste("Error! Invalid data for `quietingDown`. Must be a boolean:", `quietingDown`))
        }
        self$`quietingDown` <- `quietingDown`
      }
      if (!is.null(`slaveAgentPort`)) {
        if (!(is.numeric(`slaveAgentPort`) && length(`slaveAgentPort`) == 1)) {
          stop(paste("Error! Invalid data for `slaveAgentPort`. Must be an integer:", `slaveAgentPort`))
        }
        self$`slaveAgentPort` <- `slaveAgentPort`
      }
      if (!is.null(`unlabeledLoad`)) {
        stopifnot(R6::is.R6(`unlabeledLoad`))
        self$`unlabeledLoad` <- `unlabeledLoad`
      }
      if (!is.null(`useCrumbs`)) {
        if (!(is.logical(`useCrumbs`) && length(`useCrumbs`) == 1)) {
          stop(paste("Error! Invalid data for `useCrumbs`. Must be a boolean:", `useCrumbs`))
        }
        self$`useCrumbs` <- `useCrumbs`
      }
      if (!is.null(`useSecurity`)) {
        if (!(is.logical(`useSecurity`) && length(`useSecurity`) == 1)) {
          stop(paste("Error! Invalid data for `useSecurity`. Must be a boolean:", `useSecurity`))
        }
        self$`useSecurity` <- `useSecurity`
      }
      if (!is.null(`views`)) {
        stopifnot(is.vector(`views`), length(`views`) != 0)
        sapply(`views`, function(x) stopifnot(R6::is.R6(x)))
        self$`views` <- `views`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Hudson as a base R list.
    #' @examples
    #' # convert array of Hudson (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Hudson to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HudsonObject <- list()
      if (!is.null(self$`_class`)) {
        HudsonObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`assignedLabels`)) {
        HudsonObject[["assignedLabels"]] <-
          lapply(self$`assignedLabels`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`mode`)) {
        HudsonObject[["mode"]] <-
          self$`mode`
      }
      if (!is.null(self$`nodeDescription`)) {
        HudsonObject[["nodeDescription"]] <-
          self$`nodeDescription`
      }
      if (!is.null(self$`nodeName`)) {
        HudsonObject[["nodeName"]] <-
          self$`nodeName`
      }
      if (!is.null(self$`numExecutors`)) {
        HudsonObject[["numExecutors"]] <-
          self$`numExecutors`
      }
      if (!is.null(self$`description`)) {
        HudsonObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`jobs`)) {
        HudsonObject[["jobs"]] <-
          lapply(self$`jobs`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`primaryView`)) {
        HudsonObject[["primaryView"]] <-
          self$`primaryView`$toSimpleType()
      }
      if (!is.null(self$`quietingDown`)) {
        HudsonObject[["quietingDown"]] <-
          self$`quietingDown`
      }
      if (!is.null(self$`slaveAgentPort`)) {
        HudsonObject[["slaveAgentPort"]] <-
          self$`slaveAgentPort`
      }
      if (!is.null(self$`unlabeledLoad`)) {
        HudsonObject[["unlabeledLoad"]] <-
          self$`unlabeledLoad`$toSimpleType()
      }
      if (!is.null(self$`useCrumbs`)) {
        HudsonObject[["useCrumbs"]] <-
          self$`useCrumbs`
      }
      if (!is.null(self$`useSecurity`)) {
        HudsonObject[["useSecurity"]] <-
          self$`useSecurity`
      }
      if (!is.null(self$`views`)) {
        HudsonObject[["views"]] <-
          lapply(self$`views`, function(x) x$toSimpleType())
      }
      return(HudsonObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Hudson
    #'
    #' @param input_json the JSON input
    #' @return the instance of Hudson
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`assignedLabels`)) {
        self$`assignedLabels` <- ApiClient$new()$deserializeObj(this_object$`assignedLabels`, "array[HudsonassignedLabels]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`mode`)) {
        self$`mode` <- this_object$`mode`
      }
      if (!is.null(this_object$`nodeDescription`)) {
        self$`nodeDescription` <- this_object$`nodeDescription`
      }
      if (!is.null(this_object$`nodeName`)) {
        self$`nodeName` <- this_object$`nodeName`
      }
      if (!is.null(this_object$`numExecutors`)) {
        self$`numExecutors` <- this_object$`numExecutors`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`jobs`)) {
        self$`jobs` <- ApiClient$new()$deserializeObj(this_object$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`primaryView`)) {
        `primaryview_object` <- AllView$new()
        `primaryview_object`$fromJSON(jsonlite::toJSON(this_object$`primaryView`, auto_unbox = TRUE, digits = NA))
        self$`primaryView` <- `primaryview_object`
      }
      if (!is.null(this_object$`quietingDown`)) {
        self$`quietingDown` <- this_object$`quietingDown`
      }
      if (!is.null(this_object$`slaveAgentPort`)) {
        self$`slaveAgentPort` <- this_object$`slaveAgentPort`
      }
      if (!is.null(this_object$`unlabeledLoad`)) {
        `unlabeledload_object` <- UnlabeledLoadStatistics$new()
        `unlabeledload_object`$fromJSON(jsonlite::toJSON(this_object$`unlabeledLoad`, auto_unbox = TRUE, digits = NA))
        self$`unlabeledLoad` <- `unlabeledload_object`
      }
      if (!is.null(this_object$`useCrumbs`)) {
        self$`useCrumbs` <- this_object$`useCrumbs`
      }
      if (!is.null(this_object$`useSecurity`)) {
        self$`useSecurity` <- this_object$`useSecurity`
      }
      if (!is.null(this_object$`views`)) {
        self$`views` <- ApiClient$new()$deserializeObj(this_object$`views`, "array[AllView]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Hudson in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Hudson
    #'
    #' @param input_json the JSON input
    #' @return the instance of Hudson
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`assignedLabels` <- ApiClient$new()$deserializeObj(this_object$`assignedLabels`, "array[HudsonassignedLabels]", loadNamespace("openapi"))
      self$`mode` <- this_object$`mode`
      self$`nodeDescription` <- this_object$`nodeDescription`
      self$`nodeName` <- this_object$`nodeName`
      self$`numExecutors` <- this_object$`numExecutors`
      self$`description` <- this_object$`description`
      self$`jobs` <- ApiClient$new()$deserializeObj(this_object$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      self$`primaryView` <- AllView$new()$fromJSON(jsonlite::toJSON(this_object$`primaryView`, auto_unbox = TRUE, digits = NA))
      self$`quietingDown` <- this_object$`quietingDown`
      self$`slaveAgentPort` <- this_object$`slaveAgentPort`
      self$`unlabeledLoad` <- UnlabeledLoadStatistics$new()$fromJSON(jsonlite::toJSON(this_object$`unlabeledLoad`, auto_unbox = TRUE, digits = NA))
      self$`useCrumbs` <- this_object$`useCrumbs`
      self$`useSecurity` <- this_object$`useSecurity`
      self$`views` <- ApiClient$new()$deserializeObj(this_object$`views`, "array[AllView]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Hudson and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Hudson
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Hudson$unlock()
#
## Below is an example to define the print function
# Hudson$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Hudson$lock()

