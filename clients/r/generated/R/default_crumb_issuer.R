#' Create a new DefaultCrumbIssuer
#'
#' @description
#' DefaultCrumbIssuer Class
#'
#' @docType class
#' @title DefaultCrumbIssuer
#' @description DefaultCrumbIssuer Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field crumb  character [optional]
#' @field crumbRequestField  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultCrumbIssuer <- R6::R6Class(
  "DefaultCrumbIssuer",
  public = list(
    `_class` = NULL,
    `crumb` = NULL,
    `crumbRequestField` = NULL,
    #' Initialize a new DefaultCrumbIssuer class.
    #'
    #' @description
    #' Initialize a new DefaultCrumbIssuer class.
    #'
    #' @param _class _class
    #' @param crumb crumb
    #' @param crumbRequestField crumbRequestField
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `crumb` = NULL, `crumbRequestField` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`crumb`)) {
        if (!(is.character(`crumb`) && length(`crumb`) == 1)) {
          stop(paste("Error! Invalid data for `crumb`. Must be a string:", `crumb`))
        }
        self$`crumb` <- `crumb`
      }
      if (!is.null(`crumbRequestField`)) {
        if (!(is.character(`crumbRequestField`) && length(`crumbRequestField`) == 1)) {
          stop(paste("Error! Invalid data for `crumbRequestField`. Must be a string:", `crumbRequestField`))
        }
        self$`crumbRequestField` <- `crumbRequestField`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DefaultCrumbIssuer in JSON format
    #' @export
    toJSON = function() {
      DefaultCrumbIssuerObject <- list()
      if (!is.null(self$`_class`)) {
        DefaultCrumbIssuerObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`crumb`)) {
        DefaultCrumbIssuerObject[["crumb"]] <-
          self$`crumb`
      }
      if (!is.null(self$`crumbRequestField`)) {
        DefaultCrumbIssuerObject[["crumbRequestField"]] <-
          self$`crumbRequestField`
      }
      DefaultCrumbIssuerObject
    },
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @description
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultCrumbIssuer
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`crumb`)) {
        self$`crumb` <- this_object$`crumb`
      }
      if (!is.null(this_object$`crumbRequestField`)) {
        self$`crumbRequestField` <- this_object$`crumbRequestField`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DefaultCrumbIssuer in JSON format
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
        if (!is.null(self$`crumb`)) {
          sprintf(
          '"crumb":
            "%s"
                    ',
          self$`crumb`
          )
        },
        if (!is.null(self$`crumbRequestField`)) {
          sprintf(
          '"crumbRequestField":
            "%s"
                    ',
          self$`crumbRequestField`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @description
    #' Deserialize JSON string into an instance of DefaultCrumbIssuer
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultCrumbIssuer
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`crumb` <- this_object$`crumb`
      self$`crumbRequestField` <- this_object$`crumbRequestField`
      self
    },
    #' Validate JSON input with respect to DefaultCrumbIssuer
    #'
    #' @description
    #' Validate JSON input with respect to DefaultCrumbIssuer and throw an exception if invalid
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
    #' @return String representation of DefaultCrumbIssuer
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
# DefaultCrumbIssuer$unlock()
#
## Below is an example to define the print function
# DefaultCrumbIssuer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DefaultCrumbIssuer$lock()

