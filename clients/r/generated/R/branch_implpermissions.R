#' Create a new BranchImplpermissions
#'
#' @description
#' BranchImplpermissions Class
#'
#' @docType class
#' @title BranchImplpermissions
#' @description BranchImplpermissions Class
#' @format An \code{R6Class} generator object
#' @field create  character [optional]
#' @field read  character [optional]
#' @field start  character [optional]
#' @field stop  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BranchImplpermissions <- R6::R6Class(
  "BranchImplpermissions",
  public = list(
    `create` = NULL,
    `read` = NULL,
    `start` = NULL,
    `stop` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new BranchImplpermissions class.
    #'
    #' @param create create
    #' @param read read
    #' @param start start
    #' @param stop stop
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`create` = NULL, `read` = NULL, `start` = NULL, `stop` = NULL, `_class` = NULL, ...) {
      if (!is.null(`create`)) {
        if (!(is.logical(`create`) && length(`create`) == 1)) {
          stop(paste("Error! Invalid data for `create`. Must be a boolean:", `create`))
        }
        self$`create` <- `create`
      }
      if (!is.null(`read`)) {
        if (!(is.logical(`read`) && length(`read`) == 1)) {
          stop(paste("Error! Invalid data for `read`. Must be a boolean:", `read`))
        }
        self$`read` <- `read`
      }
      if (!is.null(`start`)) {
        if (!(is.logical(`start`) && length(`start`) == 1)) {
          stop(paste("Error! Invalid data for `start`. Must be a boolean:", `start`))
        }
        self$`start` <- `start`
      }
      if (!is.null(`stop`)) {
        if (!(is.logical(`stop`) && length(`stop`) == 1)) {
          stop(paste("Error! Invalid data for `stop`. Must be a boolean:", `stop`))
        }
        self$`stop` <- `stop`
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
    #' @return BranchImplpermissions as a base R list.
    #' @examples
    #' # convert array of BranchImplpermissions (x) to a data frame
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
    #' Convert BranchImplpermissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BranchImplpermissionsObject <- list()
      if (!is.null(self$`create`)) {
        BranchImplpermissionsObject[["create"]] <-
          self$`create`
      }
      if (!is.null(self$`read`)) {
        BranchImplpermissionsObject[["read"]] <-
          self$`read`
      }
      if (!is.null(self$`start`)) {
        BranchImplpermissionsObject[["start"]] <-
          self$`start`
      }
      if (!is.null(self$`stop`)) {
        BranchImplpermissionsObject[["stop"]] <-
          self$`stop`
      }
      if (!is.null(self$`_class`)) {
        BranchImplpermissionsObject[["_class"]] <-
          self$`_class`
      }
      return(BranchImplpermissionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BranchImplpermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of BranchImplpermissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`create`)) {
        self$`create` <- this_object$`create`
      }
      if (!is.null(this_object$`read`)) {
        self$`read` <- this_object$`read`
      }
      if (!is.null(this_object$`start`)) {
        self$`start` <- this_object$`start`
      }
      if (!is.null(this_object$`stop`)) {
        self$`stop` <- this_object$`stop`
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
    #' @return BranchImplpermissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BranchImplpermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of BranchImplpermissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`create` <- this_object$`create`
      self$`read` <- this_object$`read`
      self$`start` <- this_object$`start`
      self$`stop` <- this_object$`stop`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to BranchImplpermissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BranchImplpermissions
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
# BranchImplpermissions$unlock()
#
## Below is an example to define the print function
# BranchImplpermissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BranchImplpermissions$lock()

