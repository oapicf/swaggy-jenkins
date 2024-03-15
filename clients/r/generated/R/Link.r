#' Create a new Link
#'
#' @description
#' Link Class
#'
#' @docType class
#' @title Link
#' @description Link Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field href  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Link <- R6::R6Class(
  "Link",
  public = list(
    `_class` = NULL,
    `href` = NULL,
    #' Initialize a new Link class.
    #'
    #' @description
    #' Initialize a new Link class.
    #'
    #' @param _class _class
    #' @param href href
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `href` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`href`)) {
        if (!(is.character(`href`) && length(`href`) == 1)) {
          stop(paste("Error! Invalid data for `href`. Must be a string:", `href`))
        }
        self$`href` <- `href`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Link in JSON format
    #' @export
    toJSON = function() {
      LinkObject <- list()
      if (!is.null(self$`_class`)) {
        LinkObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`href`)) {
        LinkObject[["href"]] <-
          self$`href`
      }
      LinkObject
    },
    #' Deserialize JSON string into an instance of Link
    #'
    #' @description
    #' Deserialize JSON string into an instance of Link
    #'
    #' @param input_json the JSON input
    #' @return the instance of Link
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`href`)) {
        self$`href` <- this_object$`href`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Link in JSON format
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
        if (!is.null(self$`href`)) {
          sprintf(
          '"href":
            "%s"
                    ',
          self$`href`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Link
    #'
    #' @description
    #' Deserialize JSON string into an instance of Link
    #'
    #' @param input_json the JSON input
    #' @return the instance of Link
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`href` <- this_object$`href`
      self
    },
    #' Validate JSON input with respect to Link
    #'
    #' @description
    #' Validate JSON input with respect to Link and throw an exception if invalid
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
    #' @return String representation of Link
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
# Link$unlock()
#
## Below is an example to define the print function
# Link$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Link$lock()

