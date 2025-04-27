#' Create a new EmptyChangeLogSet
#'
#' @description
#' EmptyChangeLogSet Class
#'
#' @docType class
#' @title EmptyChangeLogSet
#' @description EmptyChangeLogSet Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field kind  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmptyChangeLogSet <- R6::R6Class(
  "EmptyChangeLogSet",
  public = list(
    `_class` = NULL,
    `kind` = NULL,

    #' @description
    #' Initialize a new EmptyChangeLogSet class.
    #'
    #' @param _class _class
    #' @param kind kind
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `kind` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`kind`)) {
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
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
    #' @return EmptyChangeLogSet as a base R list.
    #' @examples
    #' # convert array of EmptyChangeLogSet (x) to a data frame
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
    #' Convert EmptyChangeLogSet to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmptyChangeLogSetObject <- list()
      if (!is.null(self$`_class`)) {
        EmptyChangeLogSetObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`kind`)) {
        EmptyChangeLogSetObject[["kind"]] <-
          self$`kind`
      }
      return(EmptyChangeLogSetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmptyChangeLogSet
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`kind`)) {
        self$`kind` <- this_object$`kind`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmptyChangeLogSet in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmptyChangeLogSet
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`kind` <- this_object$`kind`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmptyChangeLogSet and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmptyChangeLogSet
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
# EmptyChangeLogSet$unlock()
#
## Below is an example to define the print function
# EmptyChangeLogSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmptyChangeLogSet$lock()

