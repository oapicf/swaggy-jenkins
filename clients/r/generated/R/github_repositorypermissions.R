#' Create a new GithubRepositorypermissions
#'
#' @description
#' GithubRepositorypermissions Class
#'
#' @docType class
#' @title GithubRepositorypermissions
#' @description GithubRepositorypermissions Class
#' @format An \code{R6Class} generator object
#' @field admin  character [optional]
#' @field push  character [optional]
#' @field pull  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepositorypermissions <- R6::R6Class(
  "GithubRepositorypermissions",
  public = list(
    `admin` = NULL,
    `push` = NULL,
    `pull` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new GithubRepositorypermissions class.
    #'
    #' @param admin admin
    #' @param push push
    #' @param pull pull
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`admin` = NULL, `push` = NULL, `pull` = NULL, `_class` = NULL, ...) {
      if (!is.null(`admin`)) {
        if (!(is.logical(`admin`) && length(`admin`) == 1)) {
          stop(paste("Error! Invalid data for `admin`. Must be a boolean:", `admin`))
        }
        self$`admin` <- `admin`
      }
      if (!is.null(`push`)) {
        if (!(is.logical(`push`) && length(`push`) == 1)) {
          stop(paste("Error! Invalid data for `push`. Must be a boolean:", `push`))
        }
        self$`push` <- `push`
      }
      if (!is.null(`pull`)) {
        if (!(is.logical(`pull`) && length(`pull`) == 1)) {
          stop(paste("Error! Invalid data for `pull`. Must be a boolean:", `pull`))
        }
        self$`pull` <- `pull`
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
    #' @return GithubRepositorypermissions as a base R list.
    #' @examples
    #' # convert array of GithubRepositorypermissions (x) to a data frame
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
    #' Convert GithubRepositorypermissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubRepositorypermissionsObject <- list()
      if (!is.null(self$`admin`)) {
        GithubRepositorypermissionsObject[["admin"]] <-
          self$`admin`
      }
      if (!is.null(self$`push`)) {
        GithubRepositorypermissionsObject[["push"]] <-
          self$`push`
      }
      if (!is.null(self$`pull`)) {
        GithubRepositorypermissionsObject[["pull"]] <-
          self$`pull`
      }
      if (!is.null(self$`_class`)) {
        GithubRepositorypermissionsObject[["_class"]] <-
          self$`_class`
      }
      return(GithubRepositorypermissionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorypermissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`admin`)) {
        self$`admin` <- this_object$`admin`
      }
      if (!is.null(this_object$`push`)) {
        self$`push` <- this_object$`push`
      }
      if (!is.null(this_object$`pull`)) {
        self$`pull` <- this_object$`pull`
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
    #' @return GithubRepositorypermissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorypermissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`admin` <- this_object$`admin`
      self$`push` <- this_object$`push`
      self$`pull` <- this_object$`pull`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubRepositorypermissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubRepositorypermissions
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
# GithubRepositorypermissions$unlock()
#
## Below is an example to define the print function
# GithubRepositorypermissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepositorypermissions$lock()

