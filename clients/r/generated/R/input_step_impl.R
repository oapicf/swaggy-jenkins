#' Create a new InputStepImpl
#'
#' @description
#' InputStepImpl Class
#'
#' @docType class
#' @title InputStepImpl
#' @description InputStepImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{InputStepImpllinks} [optional]
#' @field id  character [optional]
#' @field message  character [optional]
#' @field ok  character [optional]
#' @field parameters  list(\link{StringParameterDefinition}) [optional]
#' @field submitter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InputStepImpl <- R6::R6Class(
  "InputStepImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `id` = NULL,
    `message` = NULL,
    `ok` = NULL,
    `parameters` = NULL,
    `submitter` = NULL,

    #' @description
    #' Initialize a new InputStepImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param id id
    #' @param message message
    #' @param ok ok
    #' @param parameters parameters
    #' @param submitter submitter
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `id` = NULL, `message` = NULL, `ok` = NULL, `parameters` = NULL, `submitter` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`ok`)) {
        if (!(is.character(`ok`) && length(`ok`) == 1)) {
          stop(paste("Error! Invalid data for `ok`. Must be a string:", `ok`))
        }
        self$`ok` <- `ok`
      }
      if (!is.null(`parameters`)) {
        stopifnot(is.vector(`parameters`), length(`parameters`) != 0)
        sapply(`parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameters` <- `parameters`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
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
    #' @return InputStepImpl as a base R list.
    #' @examples
    #' # convert array of InputStepImpl (x) to a data frame
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
    #' Convert InputStepImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InputStepImplObject <- list()
      if (!is.null(self$`_class`)) {
        InputStepImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        InputStepImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`id`)) {
        InputStepImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`message`)) {
        InputStepImplObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`ok`)) {
        InputStepImplObject[["ok"]] <-
          self$`ok`
      }
      if (!is.null(self$`parameters`)) {
        InputStepImplObject[["parameters"]] <-
          lapply(self$`parameters`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`submitter`)) {
        InputStepImplObject[["submitter"]] <-
          self$`submitter`
      }
      return(InputStepImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStepImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- InputStepImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`ok`)) {
        self$`ok` <- this_object$`ok`
      }
      if (!is.null(this_object$`parameters`)) {
        self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InputStepImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStepImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- InputStepImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`message` <- this_object$`message`
      self$`ok` <- this_object$`ok`
      self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      self$`submitter` <- this_object$`submitter`
      self
    },

    #' @description
    #' Validate JSON input with respect to InputStepImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InputStepImpl
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
# InputStepImpl$unlock()
#
## Below is an example to define the print function
# InputStepImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InputStepImpl$lock()

