#' Create a new EmptyChangeLogSet
#'
#' @description
#' EmptyChangeLogSet Class
#'
#' @docType class
#' @title EmptyChangeLogSet
#' @description EmptyChangeLogSet Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field kind  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmptyChangeLogSet <- R6::R6Class(
  "EmptyChangeLogSet",
  public = list(
    `_class` = NULL,
    `kind` = NULL,
    #' Initialize a new EmptyChangeLogSet class.
    #'
    #' @description
    #' Initialize a new EmptyChangeLogSet class.
    #'
    #' @param _class _class
    #' @param kind kind
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `kind` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`kind`)) {
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return EmptyChangeLogSet in JSON format
    #' @export
    toJSON = function() {
      EmptyChangeLogSetObject <- list()
      if (!is.null(self$`_class`)) {
        EmptyChangeLogSetObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`kind`)) {
        EmptyChangeLogSetObject[["kind"]] <-
          self$`kind`
      }
      EmptyChangeLogSetObject
    },
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmptyChangeLogSet
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`kind`)) {
        self$`kind` <- this_object$`kind`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return EmptyChangeLogSet in JSON format
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
        if (!is.null(self$`kind`)) {
          sprintf(
          '"kind":
            "%s"
                    ',
          self$`kind`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of EmptyChangeLogSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmptyChangeLogSet
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`kind` <- this_object$`kind`
      self
    },
    #' Validate JSON input with respect to EmptyChangeLogSet
    #'
    #' @description
    #' Validate JSON input with respect to EmptyChangeLogSet and throw an exception if invalid
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
    #' @return String representation of EmptyChangeLogSet
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
# EmptyChangeLogSet$unlock()
#
## Below is an example to define the print function
# EmptyChangeLogSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmptyChangeLogSet$lock()

