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
    #' Initialize a new PipelineRunImpllinks class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineRunImpllinks in JSON format
    #' @export
    toJSON = function() {
      PipelineRunImpllinksObject <- list()
      if (!is.null(self$`nodes`)) {
        PipelineRunImpllinksObject[["nodes"]] <-
          self$`nodes`$toJSON()
      }
      if (!is.null(self$`log`)) {
        PipelineRunImpllinksObject[["log"]] <-
          self$`log`$toJSON()
      }
      if (!is.null(self$`item_self`)) {
        PipelineRunImpllinksObject[["self"]] <-
          self$`item_self`$toJSON()
      }
      if (!is.null(self$`actions`)) {
        PipelineRunImpllinksObject[["actions"]] <-
          self$`actions`$toJSON()
      }
      if (!is.null(self$`steps`)) {
        PipelineRunImpllinksObject[["steps"]] <-
          self$`steps`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        PipelineRunImpllinksObject[["_class"]] <-
          self$`_class`
      }
      PipelineRunImpllinksObject
    },
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpllinks
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineRunImpllinks in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`nodes`)) {
          sprintf(
          '"nodes":
          %s
          ',
          jsonlite::toJSON(self$`nodes`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`log`)) {
          sprintf(
          '"log":
          %s
          ',
          jsonlite::toJSON(self$`log`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
          %s
          ',
          jsonlite::toJSON(self$`actions`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`steps`)) {
          sprintf(
          '"steps":
          %s
          ',
          jsonlite::toJSON(self$`steps`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpllinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpllinks
    #' @export
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
    #' Validate JSON input with respect to PipelineRunImpllinks
    #'
    #' @description
    #' Validate JSON input with respect to PipelineRunImpllinks and throw an exception if invalid
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
    #' @return String representation of PipelineRunImpllinks
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
# PipelineRunImpllinks$unlock()
#
## Below is an example to define the print function
# PipelineRunImpllinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineRunImpllinks$lock()

