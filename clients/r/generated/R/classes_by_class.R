#' Create a new ClassesByClass
#'
#' @description
#' ClassesByClass Class
#'
#' @docType class
#' @title ClassesByClass
#' @description ClassesByClass Class
#' @format An \code{R6Class} generator object
#' @field classes  list(character) [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClassesByClass <- R6::R6Class(
  "ClassesByClass",
  public = list(
    `classes` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new ClassesByClass class.
    #'
    #' @param classes classes
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`classes` = NULL, `_class` = NULL, ...) {
      if (!is.null(`classes`)) {
        stopifnot(is.vector(`classes`), length(`classes`) != 0)
        sapply(`classes`, function(x) stopifnot(is.character(x)))
        self$`classes` <- `classes`
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
    #' @return ClassesByClass as a base R list.
    #' @examples
    #' # convert array of ClassesByClass (x) to a data frame
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
    #' Convert ClassesByClass to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ClassesByClassObject <- list()
      if (!is.null(self$`classes`)) {
        ClassesByClassObject[["classes"]] <-
          self$`classes`
      }
      if (!is.null(self$`_class`)) {
        ClassesByClassObject[["_class"]] <-
          self$`_class`
      }
      return(ClassesByClassObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClassesByClass
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`classes`)) {
        self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
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
    #' @return ClassesByClass in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClassesByClass
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to ClassesByClass and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ClassesByClass
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
# ClassesByClass$unlock()
#
## Below is an example to define the print function
# ClassesByClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ClassesByClass$lock()

