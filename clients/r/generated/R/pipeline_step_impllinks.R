#' Create a new PipelineStepImpllinks
#'
#' @description
#' PipelineStepImpllinks Class
#'
#' @docType class
#' @title PipelineStepImpllinks
#' @description PipelineStepImpllinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{Link} [optional]
#' @field actions  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineStepImpllinks <- R6::R6Class(
  "PipelineStepImpllinks",
  public = list(
    `item_self` = NULL,
    `actions` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineStepImpllinks class.
    #'
    #' @description
    #' Initialize a new PipelineStepImpllinks class.
    #'
    #' @param item_self item_self
    #' @param actions actions
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`item_self` = NULL, `actions` = NULL, `_class` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`actions`)) {
        stopifnot(R6::is.R6(`actions`))
        self$`actions` <- `actions`
      }
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineStepImpllinks in JSON format
    #' @export
    toJSON = function() {
      PipelineStepImpllinksObject <- list()
      if (!is.null(self$`item_self`)) {
        PipelineStepImpllinksObject[["self"]] <-
          self$`item_self`$toJSON()
      }
      if (!is.null(self$`actions`)) {
        PipelineStepImpllinksObject[["actions"]] <-
          self$`actions`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        PipelineStepImpllinksObject[["_class"]] <-
          self$`_class`
      }
      PipelineStepImpllinksObject
    },
    #' Deserialize JSON string into an instance of PipelineStepImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpllinks
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineStepImpllinks in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`item_self`)) {
          sprintf(
          '"self":
          %s
          ',
          jsonlite::toJSON(self$`item_self`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
          %s
          ',
          jsonlite::toJSON(self$`actions`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`_class`)) {
          sprintf(
          '"_class":
            "%s"
                    ',
          self$`_class`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineStepImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpllinks
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`actions` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineStepImpllinks
    #'
    #' @description
    #' Validate JSON input with respect to PipelineStepImpllinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineStepImpllinks
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# PipelineStepImpllinks$unlock()
#
## Below is an example to define the print function
# PipelineStepImpllinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineStepImpllinks$lock()

