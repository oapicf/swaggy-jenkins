#' Create a new PipelineRunImpllinks
#'
#' @description
#' PipelineRunImpllinks Class
#'
#' @docType class
#' @title PipelineRunImpllinks
#' @description PipelineRunImpllinks Class
#' @format An \code{R6Class} generator object
#' @field nodes  \link{Link} [optional]
#' @field log  \link{Link} [optional]
#' @field item_self  \link{Link} [optional]
#' @field actions  \link{Link} [optional]
#' @field steps  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineRunImpllinks <- R6::R6Class(
  "PipelineRunImpllinks",
  public = list(
    `nodes` = NULL,
    `log` = NULL,
    `item_self` = NULL,
    `actions` = NULL,
    `steps` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new PipelineRunImpllinks class.
    #'
    #' @param nodes nodes
    #' @param log log
    #' @param item_self item_self
    #' @param actions actions
    #' @param steps steps
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`nodes` = NULL, `log` = NULL, `item_self` = NULL, `actions` = NULL, `steps` = NULL, `_class` = NULL, ...) {
      if (!is.null(`nodes`)) {
        stopifnot(R6::is.R6(`nodes`))
        self$`nodes` <- `nodes`
      }
      if (!is.null(`log`)) {
        stopifnot(R6::is.R6(`log`))
        self$`log` <- `log`
      }
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`actions`)) {
        stopifnot(R6::is.R6(`actions`))
        self$`actions` <- `actions`
      }
      if (!is.null(`steps`)) {
        stopifnot(R6::is.R6(`steps`))
        self$`steps` <- `steps`
      }
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
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
    #' @return PipelineRunImpllinks as a base R list.
    #' @examples
    #' # convert array of PipelineRunImpllinks (x) to a data frame
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
    #' Convert PipelineRunImpllinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineRunImpllinksObject <- list()
      if (!is.null(self$`nodes`)) {
        PipelineRunImpllinksObject[["nodes"]] <-
          self$`nodes`$toSimpleType()
      }
      if (!is.null(self$`log`)) {
        PipelineRunImpllinksObject[["log"]] <-
          self$`log`$toSimpleType()
      }
      if (!is.null(self$`item_self`)) {
        PipelineRunImpllinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`actions`)) {
        PipelineRunImpllinksObject[["actions"]] <-
          self$`actions`$toSimpleType()
      }
      if (!is.null(self$`steps`)) {
        PipelineRunImpllinksObject[["steps"]] <-
          self$`steps`$toSimpleType()
      }
      if (!is.null(self$`_class`)) {
        PipelineRunImpllinksObject[["_class"]] <-
          self$`_class`
      }
      return(PipelineRunImpllinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpllinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nodes`)) {
        `nodes_object` <- Link$new()
        `nodes_object`$fromJSON(jsonlite::toJSON(this_object$`nodes`, auto_unbox = TRUE, digits = NA))
        self$`nodes` <- `nodes_object`
      }
      if (!is.null(this_object$`log`)) {
        `log_object` <- Link$new()
        `log_object`$fromJSON(jsonlite::toJSON(this_object$`log`, auto_unbox = TRUE, digits = NA))
        self$`log` <- `log_object`
      }
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- Link$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`actions`)) {
        `actions_object` <- Link$new()
        `actions_object`$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
        self$`actions` <- `actions_object`
      }
      if (!is.null(this_object$`steps`)) {
        `steps_object` <- Link$new()
        `steps_object`$fromJSON(jsonlite::toJSON(this_object$`steps`, auto_unbox = TRUE, digits = NA))
        self$`steps` <- `steps_object`
      }
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineRunImpllinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpllinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nodes` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`nodes`, auto_unbox = TRUE, digits = NA))
      self$`log` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`log`, auto_unbox = TRUE, digits = NA))
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`actions` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
      self$`steps` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`steps`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineRunImpllinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineRunImpllinks
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
# PipelineRunImpllinks$unlock()
#
## Below is an example to define the print function
# PipelineRunImpllinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineRunImpllinks$lock()

