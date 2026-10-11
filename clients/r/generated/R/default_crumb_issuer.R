#' Create a new DefaultCrumbIssuer
#'
#' @description
#' DefaultCrumbIssuer Class
#'
#' @docType class
#' @title DefaultCrumbIssuer
#' @description DefaultCrumbIssuer Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field crumb  character [optional]
#' @field crumbRequestField  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultCrumbIssuer <- R6::R6Class(
  "DefaultCrumbIssuer",
  public = list(
    `_class` = NULL,
    `crumb` = NULL,
    `crumbRequestField` = NULL,

    #' @description
    #' Initialize a new DefaultCrumbIssuer class.
    #'
    #' @param _class _class
    #' @param crumb crumb
    #' @param crumbRequestField crumbRequestField
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `crumb` = NULL, `crumbRequestField` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`crumb`)) {
        if (!(is.character(`crumb`) && length(`crumb`) == 1)) {
          stop(paste("Error! Invalid data for `crumb`. Must be a string:", `crumb`))
        }
        self$`crumb` <- `crumb`
      }
      if (!is.null(`crumbRequestField`)) {
        if (!(is.character(`crumbRequestField`) && length(`crumbRequestField`) == 1)) {
          stop(paste("Error! Invalid data for `crumbRequestField`. Must be a string:", `crumbRequestField`))
        }
        self$`crumbRequestField` <- `crumbRequestField`
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
    #' @return DefaultCrumbIssuer as a base R list.
    #' @examples
    #' # convert array of DefaultCrumbIssuer (x) to a data frame
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
    #' Convert DefaultCrumbIssuer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DefaultCrumbIssuerObject <- list()
      if (!is.null(self$`_class`)) {
        DefaultCrumbIssuerObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`crumb`)) {
        DefaultCrumbIssuerObject[["crumb"]] <-
          self$`crumb`
      }
      if (!is.null(self$`crumbRequestField`)) {
        DefaultCrumbIssuerObject[["crumbRequestField"]] <-
          self$`crumbRequestField`
      }
      return(DefaultCrumbIssuerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultCrumbIssuer
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`crumb`)) {
        self$`crumb` <- this_object$`crumb`
      }
      if (!is.null(this_object$`crumbRequestField`)) {
        self$`crumbRequestField` <- this_object$`crumbRequestField`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DefaultCrumbIssuer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultCrumbIssuer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`crumb` <- this_object$`crumb`
      self$`crumbRequestField` <- this_object$`crumbRequestField`
      self
    },

    #' @description
    #' Validate JSON input with respect to DefaultCrumbIssuer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DefaultCrumbIssuer
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
# DefaultCrumbIssuer$unlock()
#
## Below is an example to define the print function
# DefaultCrumbIssuer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DefaultCrumbIssuer$lock()

