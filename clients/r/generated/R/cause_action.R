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
    #' Initialize a new CauseAction class.
    #'
    #' @description
    #' Initialize a new CauseAction class.
    #'
    #' @param _class _class
    #' @param causes causes
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CauseAction in JSON format
    #' @export
    toJSON = function() {
      CauseActionObject <- list()
      if (!is.null(self$`_class`)) {
        CauseActionObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`causes`)) {
        CauseActionObject[["causes"]] <-
          lapply(self$`causes`, function(x) x$toJSON())
      }
      CauseActionObject
    },
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @description
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseAction
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CauseAction in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`_class`)) {
          sprintf(
          '"_class":
            "%s"
                    ',
          self$`_class`
          )
        },
        if (!is.null(self$`causes`)) {
          sprintf(
          '"causes":
          [%s]
',
          paste(sapply(self$`causes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @description
    #' Deserialize JSON string into an instance of CauseAction
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseAction
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`causes` <- ApiClient$new()$deserializeObj(this_object$`causes`, "array[CauseUserIdCause]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to CauseAction
    #'
    #' @description
    #' Validate JSON input with respect to CauseAction and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CauseAction
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
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

