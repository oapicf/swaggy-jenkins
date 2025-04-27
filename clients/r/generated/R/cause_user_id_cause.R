#' Create a new CauseUserIdCause
#'
#' @description
#' CauseUserIdCause Class
#'
#' @docType class
#' @title CauseUserIdCause
#' @description CauseUserIdCause Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field shortDescription  character [optional]
#' @field userId  character [optional]
#' @field userName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CauseUserIdCause <- R6::R6Class(
  "CauseUserIdCause",
  public = list(
    `_class` = NULL,
    `shortDescription` = NULL,
    `userId` = NULL,
    `userName` = NULL,

    #' @description
    #' Initialize a new CauseUserIdCause class.
    #'
    #' @param _class _class
    #' @param shortDescription shortDescription
    #' @param userId userId
    #' @param userName userName
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `shortDescription` = NULL, `userId` = NULL, `userName` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`shortDescription`)) {
        if (!(is.character(`shortDescription`) && length(`shortDescription`) == 1)) {
          stop(paste("Error! Invalid data for `shortDescription`. Must be a string:", `shortDescription`))
        }
        self$`shortDescription` <- `shortDescription`
      }
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`userName`)) {
        if (!(is.character(`userName`) && length(`userName`) == 1)) {
          stop(paste("Error! Invalid data for `userName`. Must be a string:", `userName`))
        }
        self$`userName` <- `userName`
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
    #' @return CauseUserIdCause as a base R list.
    #' @examples
    #' # convert array of CauseUserIdCause (x) to a data frame
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
    #' Convert CauseUserIdCause to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CauseUserIdCauseObject <- list()
      if (!is.null(self$`_class`)) {
        CauseUserIdCauseObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`shortDescription`)) {
        CauseUserIdCauseObject[["shortDescription"]] <-
          self$`shortDescription`
      }
      if (!is.null(self$`userId`)) {
        CauseUserIdCauseObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`userName`)) {
        CauseUserIdCauseObject[["userName"]] <-
          self$`userName`
      }
      return(CauseUserIdCauseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseUserIdCause
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`shortDescription`)) {
        self$`shortDescription` <- this_object$`shortDescription`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`userName`)) {
        self$`userName` <- this_object$`userName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CauseUserIdCause in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseUserIdCause
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`shortDescription` <- this_object$`shortDescription`
      self$`userId` <- this_object$`userId`
      self$`userName` <- this_object$`userName`
      self
    },

    #' @description
    #' Validate JSON input with respect to CauseUserIdCause and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CauseUserIdCause
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
# CauseUserIdCause$unlock()
#
## Below is an example to define the print function
# CauseUserIdCause$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CauseUserIdCause$lock()

