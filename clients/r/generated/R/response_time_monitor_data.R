#' Create a new ResponseTimeMonitorData
#'
#' @description
#' ResponseTimeMonitorData Class
#'
#' @docType class
#' @title ResponseTimeMonitorData
#' @description ResponseTimeMonitorData Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field timestamp  integer [optional]
#' @field average  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeMonitorData <- R6::R6Class(
  "ResponseTimeMonitorData",
  public = list(
    `_class` = NULL,
    `timestamp` = NULL,
    `average` = NULL,
    #' Initialize a new ResponseTimeMonitorData class.
    #'
    #' @description
    #' Initialize a new ResponseTimeMonitorData class.
    #'
    #' @param _class _class
    #' @param timestamp timestamp
    #' @param average average
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `timestamp` = NULL, `average` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.numeric(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be an integer:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`average`)) {
        if (!(is.numeric(`average`) && length(`average`) == 1)) {
          stop(paste("Error! Invalid data for `average`. Must be an integer:", `average`))
        }
        self$`average` <- `average`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ResponseTimeMonitorData in JSON format
    #' @export
    toJSON = function() {
      ResponseTimeMonitorDataObject <- list()
      if (!is.null(self$`_class`)) {
        ResponseTimeMonitorDataObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`timestamp`)) {
        ResponseTimeMonitorDataObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`average`)) {
        ResponseTimeMonitorDataObject[["average"]] <-
          self$`average`
      }
      ResponseTimeMonitorDataObject
    },
    #' Deserialize JSON string into an instance of ResponseTimeMonitorData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResponseTimeMonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResponseTimeMonitorData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`average`)) {
        self$`average` <- this_object$`average`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ResponseTimeMonitorData in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            %d
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`average`)) {
          sprintf(
          '"average":
            %d
                    ',
          self$`average`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ResponseTimeMonitorData
    #'
    #' @description
    #' Deserialize JSON string into an instance of ResponseTimeMonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ResponseTimeMonitorData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`timestamp` <- this_object$`timestamp`
      self$`average` <- this_object$`average`
      self
    },
    #' Validate JSON input with respect to ResponseTimeMonitorData
    #'
    #' @description
    #' Validate JSON input with respect to ResponseTimeMonitorData and throw an exception if invalid
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
    #' @return String representation of ResponseTimeMonitorData
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
# ResponseTimeMonitorData$unlock()
#
## Below is an example to define the print function
# ResponseTimeMonitorData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ResponseTimeMonitorData$lock()

