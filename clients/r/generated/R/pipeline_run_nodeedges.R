#' Create a new PipelineRunNodeedges
#'
#' @description
#' PipelineRunNodeedges Class
#'
#' @docType class
#' @title PipelineRunNodeedges
#' @description PipelineRunNodeedges Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineRunNodeedges <- R6::R6Class(
  "PipelineRunNodeedges",
  public = list(
    `id` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineRunNodeedges class.
    #'
    #' @description
    #' Initialize a new PipelineRunNodeedges class.
    #'
    #' @param id id
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`id` = NULL, `_class` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
    #' @return PipelineRunNodeedges in JSON format
    #' @export
    toJSON = function() {
      PipelineRunNodeedgesObject <- list()
      if (!is.null(self$`id`)) {
        PipelineRunNodeedgesObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`_class`)) {
        PipelineRunNodeedgesObject[["_class"]] <-
          self$`_class`
      }
      PipelineRunNodeedgesObject
    },
    #' Deserialize JSON string into an instance of PipelineRunNodeedges
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineRunNodeedges
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunNodeedges
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return PipelineRunNodeedges in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
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
    #' Deserialize JSON string into an instance of PipelineRunNodeedges
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineRunNodeedges
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunNodeedges
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineRunNodeedges
    #'
    #' @description
    #' Validate JSON input with respect to PipelineRunNodeedges and throw an exception if invalid
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
    #' @return String representation of PipelineRunNodeedges
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
# PipelineRunNodeedges$unlock()
#
## Below is an example to define the print function
# PipelineRunNodeedges$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineRunNodeedges$lock()

