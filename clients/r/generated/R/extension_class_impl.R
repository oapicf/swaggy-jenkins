#' Create a new ExtensionClassImpl
#'
#' @description
#' ExtensionClassImpl Class
#'
#' @docType class
#' @title ExtensionClassImpl
#' @description ExtensionClassImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{ExtensionClassImpllinks} [optional]
#' @field classes  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtensionClassImpl <- R6::R6Class(
  "ExtensionClassImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `classes` = NULL,

    #' @description
    #' Initialize a new ExtensionClassImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param classes classes
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `classes` = NULL, ...) {
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
      if (!is.null(`classes`)) {
        stopifnot(is.vector(`classes`), length(`classes`) != 0)
        sapply(`classes`, function(x) stopifnot(is.character(x)))
        self$`classes` <- `classes`
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
    #' @return ExtensionClassImpl as a base R list.
    #' @examples
    #' # convert array of ExtensionClassImpl (x) to a data frame
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
    #' Convert ExtensionClassImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExtensionClassImplObject <- list()
      if (!is.null(self$`_class`)) {
        ExtensionClassImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        ExtensionClassImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`classes`)) {
        ExtensionClassImplObject[["classes"]] <-
          self$`classes`
      }
      return(ExtensionClassImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- ExtensionClassImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`classes`)) {
        self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExtensionClassImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- ExtensionClassImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExtensionClassImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExtensionClassImpl
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
# ExtensionClassImpl$unlock()
#
## Below is an example to define the print function
# ExtensionClassImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtensionClassImpl$lock()

