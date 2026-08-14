#' Create a new Link
#'
#' @description
#' Link Class
#'
#' @docType class
#' @title Link
#' @description Link Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field href  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Link <- R6::R6Class(
  "Link",
  public = list(
    `_class` = NULL,
    `href` = NULL,

    #' @description
    #' Initialize a new Link class.
    #'
    #' @param _class _class
    #' @param href href
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `href` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        self$`href` <- `href`
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
    #' @return Link as a base R list.
    #' @examples
    #' # convert array of Link (x) to a data frame
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
    #' Convert Link to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LinkObject <- list()
      if (!is.null(self$`_class`)) {
        LinkObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`href`)) {
        LinkObject[["href"]] <-
          self$`href`
      }
      return(LinkObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Link
    #'
    #' @param input_json the JSON input
    #' @return the instance of Link
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`href`)) {
        self$`href` <- this_object$`href`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Link in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Link
    #'
    #' @param input_json the JSON input
    #' @return the instance of Link
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`href` <- this_object$`href`
      self
    },

    #' @description
    #' Validate JSON input with respect to Link and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Link
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
# Link$unlock()
#
## Below is an example to define the print function
# Link$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Link$lock()

