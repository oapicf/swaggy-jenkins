#' Create a new NullSCM
#'
#' @description
#' NullSCM Class
#'
#' @docType class
#' @title NullSCM
#' @description NullSCM Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NullSCM <- R6::R6Class(
  "NullSCM",
  public = list(
    `_class` = NULL,
    #' Initialize a new NullSCM class.
    #'
    #' @description
    #' Initialize a new NullSCM class.
    #'
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NullSCM in JSON format
    #' @export
    toJSON = function() {
      NullSCMObject <- list()
      if (!is.null(self$`_class`)) {
        NullSCMObject[["_class"]] <-
          self$`_class`
      }
      NullSCMObject
    },
    #' Deserialize JSON string into an instance of NullSCM
    #'
    #' @description
    #' Deserialize JSON string into an instance of NullSCM
    #'
    #' @param input_json the JSON input
    #' @return the instance of NullSCM
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return NullSCM in JSON format
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
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of NullSCM
    #'
    #' @description
    #' Deserialize JSON string into an instance of NullSCM
    #'
    #' @param input_json the JSON input
    #' @return the instance of NullSCM
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to NullSCM
    #'
    #' @description
    #' Validate JSON input with respect to NullSCM and throw an exception if invalid
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
    #' @return String representation of NullSCM
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
# NullSCM$unlock()
#
## Below is an example to define the print function
# NullSCM$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NullSCM$lock()

