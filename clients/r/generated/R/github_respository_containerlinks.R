#' Create a new GithubRespositoryContainerlinks
#'
#' @description
#' GithubRespositoryContainerlinks Class
#'
#' @docType class
#' @title GithubRespositoryContainerlinks
#' @description GithubRespositoryContainerlinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRespositoryContainerlinks <- R6::R6Class(
  "GithubRespositoryContainerlinks",
  public = list(
    `item_self` = NULL,
    `_class` = NULL,
    #' Initialize a new GithubRespositoryContainerlinks class.
    #'
    #' @description
    #' Initialize a new GithubRespositoryContainerlinks class.
    #'
    #' @param item_self item_self
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`item_self` = NULL, `_class` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
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
    #' @return GithubRespositoryContainerlinks in JSON format
    #' @export
    toJSON = function() {
      GithubRespositoryContainerlinksObject <- list()
      if (!is.null(self$`item_self`)) {
        GithubRespositoryContainerlinksObject[["self"]] <-
          self$`item_self`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        GithubRespositoryContainerlinksObject[["_class"]] <-
          self$`_class`
      }
      GithubRespositoryContainerlinksObject
    },
    #' Deserialize JSON string into an instance of GithubRespositoryContainerlinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRespositoryContainerlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRespositoryContainerlinks
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- Link$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
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
    #' @return GithubRespositoryContainerlinks in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`item_self`)) {
          sprintf(
          '"self":
          %s
          ',
          jsonlite::toJSON(self$`item_self`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of GithubRespositoryContainerlinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRespositoryContainerlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRespositoryContainerlinks
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to GithubRespositoryContainerlinks
    #'
    #' @description
    #' Validate JSON input with respect to GithubRespositoryContainerlinks and throw an exception if invalid
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
    #' @return String representation of GithubRespositoryContainerlinks
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
# GithubRespositoryContainerlinks$unlock()
#
## Below is an example to define the print function
# GithubRespositoryContainerlinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRespositoryContainerlinks$lock()

