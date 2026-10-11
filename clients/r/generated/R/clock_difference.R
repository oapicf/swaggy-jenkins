#' Create a new ClockDifference
#'
#' @description
#' ClockDifference Class
#'
#' @docType class
#' @title ClockDifference
#' @description ClockDifference Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field diff  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClockDifference <- R6::R6Class(
  "ClockDifference",
  public = list(
    `_class` = NULL,
    `diff` = NULL,

    #' @description
    #' Initialize a new ClockDifference class.
    #'
    #' @param _class _class
    #' @param diff diff
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `diff` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`diff`)) {
        if (!(is.numeric(`diff`) && length(`diff`) == 1)) {
          stop(paste("Error! Invalid data for `diff`. Must be an integer:", `diff`))
        }
        self$`diff` <- `diff`
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
    #' @return ClockDifference as a base R list.
    #' @examples
    #' # convert array of ClockDifference (x) to a data frame
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
    #' Convert ClockDifference to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ClockDifferenceObject <- list()
      if (!is.null(self$`_class`)) {
        ClockDifferenceObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`diff`)) {
        ClockDifferenceObject[["diff"]] <-
          self$`diff`
      }
      return(ClockDifferenceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClockDifference
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`diff`)) {
        self$`diff` <- this_object$`diff`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ClockDifference in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClockDifference
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`diff` <- this_object$`diff`
      self
    },

    #' @description
    #' Validate JSON input with respect to ClockDifference and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ClockDifference
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
# ClockDifference$unlock()
#
## Below is an example to define the print function
# ClockDifference$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ClockDifference$lock()

