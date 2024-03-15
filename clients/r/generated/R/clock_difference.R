#' Create a new ClockDifference
#'
#' @description
#' ClockDifference Class
#'
#' @docType class
#' @title ClockDifference
#' @description ClockDifference Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field diff  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClockDifference <- R6::R6Class(
  "ClockDifference",
  public = list(
    `_class` = NULL,
    `diff` = NULL,
    #' Initialize a new ClockDifference class.
    #'
    #' @description
    #' Initialize a new ClockDifference class.
    #'
    #' @param _class _class
    #' @param diff diff
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `diff` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`diff`)) {
        if (!(is.numeric(`diff`) && length(`diff`) == 1)) {
          stop(paste("Error! Invalid data for `diff`. Must be an integer:", `diff`))
        }
        self$`diff` <- `diff`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ClockDifference in JSON format
    #' @export
    toJSON = function() {
      ClockDifferenceObject <- list()
      if (!is.null(self$`_class`)) {
        ClockDifferenceObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`diff`)) {
        ClockDifferenceObject[["diff"]] <-
          self$`diff`
      }
      ClockDifferenceObject
    },
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClockDifference
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`diff`)) {
        self$`diff` <- this_object$`diff`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ClockDifference in JSON format
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
        if (!is.null(self$`diff`)) {
          sprintf(
          '"diff":
            %d
                    ',
          self$`diff`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClockDifference
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClockDifference
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`diff` <- this_object$`diff`
      self
    },
    #' Validate JSON input with respect to ClockDifference
    #'
    #' @description
    #' Validate JSON input with respect to ClockDifference and throw an exception if invalid
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
    #' @return String representation of ClockDifference
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
# ClockDifference$unlock()
#
## Below is an example to define the print function
# ClockDifference$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ClockDifference$lock()

