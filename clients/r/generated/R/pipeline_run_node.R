#' Create a new PipelineRunNode
#'
#' @description
#' PipelineRunNode Class
#'
#' @docType class
#' @title PipelineRunNode
#' @description PipelineRunNode Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field durationInMillis  integer [optional]
#' @field edges  list(\link{PipelineRunNodeedges}) [optional]
#' @field id  character [optional]
#' @field result  character [optional]
#' @field startTime  character [optional]
#' @field state  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineRunNode <- R6::R6Class(
  "PipelineRunNode",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `durationInMillis` = NULL,
    `edges` = NULL,
    `id` = NULL,
    `result` = NULL,
    `startTime` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new PipelineRunNode class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param durationInMillis durationInMillis
    #' @param edges edges
    #' @param id id
    #' @param result result
    #' @param startTime startTime
    #' @param state state
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `displayName` = NULL, `durationInMillis` = NULL, `edges` = NULL, `id` = NULL, `result` = NULL, `startTime` = NULL, `state` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
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
      if (!is.null(`edges`)) {
        stopifnot(is.vector(`edges`), length(`edges`) != 0)
        sapply(`edges`, function(x) stopifnot(R6::is.R6(x)))
        self$`edges` <- `edges`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
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
    #' @return PipelineRunNode as a base R list.
    #' @examples
    #' # convert array of PipelineRunNode (x) to a data frame
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
    #' Convert PipelineRunNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineRunNodeObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineRunNodeObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        PipelineRunNodeObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelineRunNodeObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`edges`)) {
        PipelineRunNodeObject[["edges"]] <-
          lapply(self$`edges`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`id`)) {
        PipelineRunNodeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`result`)) {
        PipelineRunNodeObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`startTime`)) {
        PipelineRunNodeObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelineRunNodeObject[["state"]] <-
          self$`state`
      }
      return(PipelineRunNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`durationInMillis`)) {
        self$`durationInMillis` <- this_object$`durationInMillis`
      }
      if (!is.null(this_object$`edges`)) {
        self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[PipelineRunNodeedges]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return PipelineRunNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`edges` <- ApiClient$new()$deserializeObj(this_object$`edges`, "array[PipelineRunNodeedges]", loadNamespace("openapi"))
      self$`id` <- this_object$`id`
      self$`result` <- this_object$`result`
      self$`startTime` <- this_object$`startTime`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineRunNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineRunNode
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
# PipelineRunNode$unlock()
#
## Below is an example to define the print function
# PipelineRunNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineRunNode$lock()

