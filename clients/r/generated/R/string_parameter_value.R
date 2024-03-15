#' Create a new StringParameterValue
#'
#' @description
#' StringParameterValue Class
#'
#' @docType class
#' @title StringParameterValue
#' @description StringParameterValue Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field name  character [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StringParameterValue <- R6::R6Class(
  "StringParameterValue",
  public = list(
    `_class` = NULL,
    `name` = NULL,
    `value` = NULL,
    #' Initialize a new StringParameterValue class.
    #'
    #' @description
    #' Initialize a new StringParameterValue class.
    #'
    #' @param _class _class
    #' @param name name
    #' @param value value
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `name` = NULL, `value` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StringParameterValue in JSON format
    #' @export
    toJSON = function() {
      StringParameterValueObject <- list()
      if (!is.null(self$`_class`)) {
        StringParameterValueObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`name`)) {
        StringParameterValueObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`value`)) {
        StringParameterValueObject[["value"]] <-
          self$`value`
      }
      StringParameterValueObject
    },
    #' Deserialize JSON string into an instance of StringParameterValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of StringParameterValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterValue
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StringParameterValue in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`value`)) {
          sprintf(
          '"value":
            "%s"
                    ',
          self$`value`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StringParameterValue
    #'
    #' @description
    #' Deserialize JSON string into an instance of StringParameterValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterValue
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`name` <- this_object$`name`
      self$`value` <- this_object$`value`
      self
    },
    #' Validate JSON input with respect to StringParameterValue
    #'
    #' @description
    #' Validate JSON input with respect to StringParameterValue and throw an exception if invalid
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
    #' @return String representation of StringParameterValue
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
# StringParameterValue$unlock()
#
## Below is an example to define the print function
# StringParameterValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StringParameterValue$lock()

