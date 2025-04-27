#' Create a new HudsonMasterComputerexecutors
#'
#' @description
#' HudsonMasterComputerexecutors Class
#'
#' @docType class
#' @title HudsonMasterComputerexecutors
#' @description HudsonMasterComputerexecutors Class
#' @format An \code{R6Class} generator object
#' @field currentExecutable  \link{FreeStyleBuild} [optional]
#' @field idle  character [optional]
#' @field likelyStuck  character [optional]
#' @field number  integer [optional]
#' @field progress  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HudsonMasterComputerexecutors <- R6::R6Class(
  "HudsonMasterComputerexecutors",
  public = list(
    `currentExecutable` = NULL,
    `idle` = NULL,
    `likelyStuck` = NULL,
    `number` = NULL,
    `progress` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new HudsonMasterComputerexecutors class.
    #'
    #' @param currentExecutable currentExecutable
    #' @param idle idle
    #' @param likelyStuck likelyStuck
    #' @param number number
    #' @param progress progress
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`currentExecutable` = NULL, `idle` = NULL, `likelyStuck` = NULL, `number` = NULL, `progress` = NULL, `_class` = NULL, ...) {
      if (!is.null(`currentExecutable`)) {
        stopifnot(R6::is.R6(`currentExecutable`))
        self$`currentExecutable` <- `currentExecutable`
      }
      if (!is.null(`idle`)) {
        if (!(is.logical(`idle`) && length(`idle`) == 1)) {
          stop(paste("Error! Invalid data for `idle`. Must be a boolean:", `idle`))
        }
        self$`idle` <- `idle`
      }
      if (!is.null(`likelyStuck`)) {
        if (!(is.logical(`likelyStuck`) && length(`likelyStuck`) == 1)) {
          stop(paste("Error! Invalid data for `likelyStuck`. Must be a boolean:", `likelyStuck`))
        }
        self$`likelyStuck` <- `likelyStuck`
      }
      if (!is.null(`number`)) {
        if (!(is.numeric(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be an integer:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`progress`)) {
        if (!(is.numeric(`progress`) && length(`progress`) == 1)) {
          stop(paste("Error! Invalid data for `progress`. Must be an integer:", `progress`))
        }
        self$`progress` <- `progress`
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
    #' @return HudsonMasterComputerexecutors as a base R list.
    #' @examples
    #' # convert array of HudsonMasterComputerexecutors (x) to a data frame
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
    #' Convert HudsonMasterComputerexecutors to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HudsonMasterComputerexecutorsObject <- list()
      if (!is.null(self$`currentExecutable`)) {
        HudsonMasterComputerexecutorsObject[["currentExecutable"]] <-
          self$`currentExecutable`$toSimpleType()
      }
      if (!is.null(self$`idle`)) {
        HudsonMasterComputerexecutorsObject[["idle"]] <-
          self$`idle`
      }
      if (!is.null(self$`likelyStuck`)) {
        HudsonMasterComputerexecutorsObject[["likelyStuck"]] <-
          self$`likelyStuck`
      }
      if (!is.null(self$`number`)) {
        HudsonMasterComputerexecutorsObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`progress`)) {
        HudsonMasterComputerexecutorsObject[["progress"]] <-
          self$`progress`
      }
      if (!is.null(self$`_class`)) {
        HudsonMasterComputerexecutorsObject[["_class"]] <-
          self$`_class`
      }
      return(HudsonMasterComputerexecutorsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputerexecutors
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentExecutable`)) {
        `currentexecutable_object` <- FreeStyleBuild$new()
        `currentexecutable_object`$fromJSON(jsonlite::toJSON(this_object$`currentExecutable`, auto_unbox = TRUE, digits = NA))
        self$`currentExecutable` <- `currentexecutable_object`
      }
      if (!is.null(this_object$`idle`)) {
        self$`idle` <- this_object$`idle`
      }
      if (!is.null(this_object$`likelyStuck`)) {
        self$`likelyStuck` <- this_object$`likelyStuck`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`progress`)) {
        self$`progress` <- this_object$`progress`
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
    #' @return HudsonMasterComputerexecutors in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputerexecutors
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentExecutable` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`currentExecutable`, auto_unbox = TRUE, digits = NA))
      self$`idle` <- this_object$`idle`
      self$`likelyStuck` <- this_object$`likelyStuck`
      self$`number` <- this_object$`number`
      self$`progress` <- this_object$`progress`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to HudsonMasterComputerexecutors and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HudsonMasterComputerexecutors
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
# HudsonMasterComputerexecutors$unlock()
#
## Below is an example to define the print function
# HudsonMasterComputerexecutors$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HudsonMasterComputerexecutors$lock()

