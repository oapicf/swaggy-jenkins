#' Create a new GithubFile
#'
#' @description
#' GithubFile Class
#'
#' @docType class
#' @title GithubFile
#' @description GithubFile Class
#' @format An \code{R6Class} generator object
#' @field content  \link{GithubContent} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubFile <- R6::R6Class(
  "GithubFile",
  public = list(
    `content` = NULL,
    `_class` = NULL,
    #' Initialize a new GithubFile class.
    #'
    #' @description
    #' Initialize a new GithubFile class.
    #'
    #' @param content content
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`content` = NULL, `_class` = NULL, ...) {
      if (!is.null(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
      }
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
    #' @return GithubFile in JSON format
    #' @export
    toJSON = function() {
      GithubFileObject <- list()
      if (!is.null(self$`content`)) {
        GithubFileObject[["content"]] <-
          self$`content`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        GithubFileObject[["_class"]] <-
          self$`_class`
      }
      GithubFileObject
    },
    #' Deserialize JSON string into an instance of GithubFile
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubFile
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubFile
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        `content_object` <- GithubContent$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
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
    #' @return GithubFile in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`content`)) {
          sprintf(
          '"content":
          %s
          ',
          jsonlite::toJSON(self$`content`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
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
    #' Deserialize JSON string into an instance of GithubFile
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubFile
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubFile
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- GithubContent$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to GithubFile
    #'
    #' @description
    #' Validate JSON input with respect to GithubFile and throw an exception if invalid
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
    #' @return String representation of GithubFile
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
# GithubFile$unlock()
#
## Below is an example to define the print function
# GithubFile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubFile$lock()

