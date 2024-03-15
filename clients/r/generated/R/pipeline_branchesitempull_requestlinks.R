#' Create a new PipelineBranchesitempullRequestlinks
#'
#' @description
#' PipelineBranchesitempullRequestlinks Class
#'
#' @docType class
#' @title PipelineBranchesitempullRequestlinks
#' @description PipelineBranchesitempullRequestlinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineBranchesitempullRequestlinks <- R6::R6Class(
  "PipelineBranchesitempullRequestlinks",
  public = list(
    `item_self` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineBranchesitempullRequestlinks class.
    #'
    #' @description
    #' Initialize a new PipelineBranchesitempullRequestlinks class.
    #'
    #' @param item_self item_self
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`item_self` = NULL, `_class` = NULL, ...) {
      if (!is.null(`item_self`)) {
        if (!(is.character(`item_self`) && length(`item_self`) == 1)) {
          stop(paste("Error! Invalid data for `item_self`. Must be a string:", `item_self`))
        }
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
    #' @return PipelineBranchesitempullRequestlinks in JSON format
    #' @export
    toJSON = function() {
      PipelineBranchesitempullRequestlinksObject <- list()
      if (!is.null(self$`item_self`)) {
        PipelineBranchesitempullRequestlinksObject[["self"]] <-
          self$`item_self`
      }
      if (!is.null(self$`_class`)) {
        PipelineBranchesitempullRequestlinksObject[["_class"]] <-
          self$`_class`
      }
      PipelineBranchesitempullRequestlinksObject
    },
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequestlinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequestlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequestlinks
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        self$`item_self` <- this_object$`self`
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
    #' @return PipelineBranchesitempullRequestlinks in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`item_self`)) {
          sprintf(
          '"self":
            "%s"
                    ',
          self$`item_self`
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
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequestlinks
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequestlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequestlinks
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- this_object$`item_self`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineBranchesitempullRequestlinks
    #'
    #' @description
    #' Validate JSON input with respect to PipelineBranchesitempullRequestlinks and throw an exception if invalid
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
    #' @return String representation of PipelineBranchesitempullRequestlinks
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
# PipelineBranchesitempullRequestlinks$unlock()
#
## Below is an example to define the print function
# PipelineBranchesitempullRequestlinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineBranchesitempullRequestlinks$lock()

