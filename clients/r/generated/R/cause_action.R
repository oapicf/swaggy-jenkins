#' Create a new CauseAction
#'
#' @description
#' CauseAction Class
#'
#' @docType class
#' @title CauseAction
#' @description CauseAction Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field causes  list(\link{CauseUserIdCause}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CauseAction <- R6::R6Class(
  "CauseAction",
  public = list(
    `_class` = NULL,
    `causes` = NULL,

    #' @description
    #' Initialize a new CauseAction class.
    #'
    #' @param _class _class
    #' @param causes causes
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `causes` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`causes`)) {
        stopifnot(is.vector(`causes`), length(`causes`) != 0)
        sapply(`causes`, function(x) stopifnot(R6::is.R6(x)))
        self$`causes` <- `causes`
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
    #' @return CauseAction as a base R list.
    #' @examples
    #' # convert array of CauseAction (x) to a data frame
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
    #' Convert CauseAction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CauseActionObject <- list()
      if (!is.null(self$`_class`)) {
        CauseActionObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`causes`)) {
        CauseActionObject[["causes"]] <-
          lapply(self$`causes`, function(x) x$toSimpleType())
      }
      return(CauseActionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseAction
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`causes`)) {
        self$`causes` <- ApiClient$new()$deserializeObj(this_object$`causes`, "array[CauseUserIdCause]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CauseAction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseAction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`causes` <- ApiClient$new()$deserializeObj(this_object$`causes`, "array[CauseUserIdCause]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CauseAction and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CauseAction
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
# CauseAction$unlock()
#
## Below is an example to define the print function
# CauseAction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CauseAction$lock()

