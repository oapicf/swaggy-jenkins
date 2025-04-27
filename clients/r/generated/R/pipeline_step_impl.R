#' Create a new PipelineStepImpl
#'
#' @description
#' PipelineStepImpl Class
#'
#' @docType class
#' @title PipelineStepImpl
#' @description PipelineStepImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{PipelineStepImpllinks} [optional]
#' @field displayName  character [optional]
#' @field durationInMillis  integer [optional]
#' @field id  character [optional]
#' @field input  \link{InputStepImpl} [optional]
#' @field result  character [optional]
#' @field startTime  character [optional]
#' @field state  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineStepImpl <- R6::R6Class(
  "PipelineStepImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `displayName` = NULL,
    `durationInMillis` = NULL,
    `id` = NULL,
    `input` = NULL,
    `result` = NULL,
    `startTime` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new PipelineStepImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param displayName displayName
    #' @param durationInMillis durationInMillis
    #' @param id id
    #' @param input input
    #' @param result result
    #' @param startTime startTime
    #' @param state state
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `displayName` = NULL, `durationInMillis` = NULL, `id` = NULL, `input` = NULL, `result` = NULL, `startTime` = NULL, `state` = NULL, ...) {
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
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`durationInMillis`)) {
        if (!(is.numeric(`durationInMillis`) && length(`durationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `durationInMillis`. Must be an integer:", `durationInMillis`))
        }
        self$`durationInMillis` <- `durationInMillis`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`input`)) {
        stopifnot(R6::is.R6(`input`))
        self$`input` <- `input`
      }
      if (!is.null(`result`)) {
        if (!(is.character(`result`) && length(`result`) == 1)) {
          stop(paste("Error! Invalid data for `result`. Must be a string:", `result`))
        }
        self$`result` <- `result`
      }
      if (!is.null(`startTime`)) {
        if (!(is.character(`startTime`) && length(`startTime`) == 1)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
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
    #' @return PipelineStepImpl as a base R list.
    #' @examples
    #' # convert array of PipelineStepImpl (x) to a data frame
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
    #' Convert PipelineStepImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineStepImplObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineStepImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        PipelineStepImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`displayName`)) {
        PipelineStepImplObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelineStepImplObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`id`)) {
        PipelineStepImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`input`)) {
        PipelineStepImplObject[["input"]] <-
          self$`input`$toSimpleType()
      }
      if (!is.null(self$`result`)) {
        PipelineStepImplObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`startTime`)) {
        PipelineStepImplObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelineStepImplObject[["state"]] <-
          self$`state`
      }
      return(PipelineStepImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- PipelineStepImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`durationInMillis`)) {
        self$`durationInMillis` <- this_object$`durationInMillis`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`input`)) {
        `input_object` <- InputStepImpl$new()
        `input_object`$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
        self$`input` <- `input_object`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineStepImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- PipelineStepImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`displayName` <- this_object$`displayName`
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`id` <- this_object$`id`
      self$`input` <- InputStepImpl$new()$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
      self$`result` <- this_object$`result`
      self$`startTime` <- this_object$`startTime`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineStepImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineStepImpl
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
# PipelineStepImpl$unlock()
#
## Below is an example to define the print function
# PipelineStepImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineStepImpl$lock()

