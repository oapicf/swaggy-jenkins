#' Create a new PipelineImpllinks
#'
#' @description
#' PipelineImpllinks Class
#'
#' @docType class
#' @title PipelineImpllinks
#' @description PipelineImpllinks Class
#' @format An \code{R6Class} generator object
#' @field runs  \link{Link} [optional]
#' @field item_self  \link{Link} [optional]
#' @field queue  \link{Link} [optional]
#' @field actions  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineImpllinks <- R6::R6Class(
  "PipelineImpllinks",
  public = list(
    `runs` = NULL,
    `item_self` = NULL,
    `queue` = NULL,
    `actions` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineImpllinks class.
    #'
    #' @description
    #' Initialize a new PipelineImpllinks class.
    #'
    #' @param runs runs
    #' @param item_self item_self
    #' @param queue queue
    #' @param actions actions
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`runs` = NULL, `item_self` = NULL, `queue` = NULL, `actions` = NULL, `_class` = NULL, ...) {
      if (!is.null(`runs`)) {
        stopifnot(R6::is.R6(`runs`))
        self$`runs` <- `runs`
      }
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`queue`)) {
        stopifnot(R6::is.R6(`queue`))
        self$`queue` <- `queue`
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
    #' @return PipelineImpllinks in JSON format
    #' @export
    toJSON = function() {
      PipelineImpllinksObject <- list()
      if (!is.null(self$`runs`)) {
        PipelineImpllinksObject[["runs"]] <-
          self$`runs`$toJSON()
      }
      if (!is.null(self$`item_self`)) {
        PipelineImpllinksObject[["self"]] <-
          self$`item_self`$toJSON()
      }
      if (!is.null(self$`queue`)) {
        PipelineImpllinksObject[["queue"]] <-
          self$`queue`$toJSON()
      }
      if (!is.null(self$`actions`)) {
        PipelineImpllinksObject[["actions"]] <-
          self$`actions`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        PipelineImpllinksObject[["_class"]] <-
          self$`_class`
      }
      PipelineImpllinksObject
    },
    #' Deserialize JSON string into an instance of PipelineImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpllinks
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`runs`)) {
        `runs_object` <- Link$new()
        `runs_object`$fromJSON(jsonlite::toJSON(this_object$`runs`, auto_unbox = TRUE, digits = NA))
        self$`runs` <- `runs_object`
      }
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- Link$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`queue`)) {
        `queue_object` <- Link$new()
        `queue_object`$fromJSON(jsonlite::toJSON(this_object$`queue`, auto_unbox = TRUE, digits = NA))
        self$`queue` <- `queue_object`
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
    #' @return PipelineImpllinks in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`runs`)) {
          sprintf(
          '"runs":
          %s
          ',
          jsonlite::toJSON(self$`runs`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`item_self`)) {
          sprintf(
          '"self":
          %s
          ',
          jsonlite::toJSON(self$`item_self`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`queue`)) {
          sprintf(
          '"queue":
          %s
          ',
          jsonlite::toJSON(self$`queue`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of PipelineImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpllinks
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`runs` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`runs`, auto_unbox = TRUE, digits = NA))
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`queue` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`queue`, auto_unbox = TRUE, digits = NA))
      self$`actions` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`actions`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineImpllinks
    #'
    #' @description
    #' Validate JSON input with respect to PipelineImpllinks and throw an exception if invalid
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
    #' @return String representation of PipelineImpllinks
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
# PipelineImpllinks$unlock()
#
## Below is an example to define the print function
# PipelineImpllinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineImpllinks$lock()

