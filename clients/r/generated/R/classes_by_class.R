#' Create a new ClassesByClass
#'
#' @description
#' ClassesByClass Class
#'
#' @docType class
#' @title ClassesByClass
#' @description ClassesByClass Class
#' @format An \code{R6Class} generator object
#' @field classes  list(character) [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClassesByClass <- R6::R6Class(
  "ClassesByClass",
  public = list(
    `classes` = NULL,
    `_class` = NULL,
    #' Initialize a new ClassesByClass class.
    #'
    #' @description
    #' Initialize a new ClassesByClass class.
    #'
    #' @param classes classes
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`classes` = NULL, `_class` = NULL, ...) {
      if (!is.null(`classes`)) {
        stopifnot(is.vector(`classes`), length(`classes`) != 0)
        sapply(`classes`, function(x) stopifnot(is.character(x)))
        self$`classes` <- `classes`
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
    #' @return ClassesByClass in JSON format
    #' @export
    toJSON = function() {
      ClassesByClassObject <- list()
      if (!is.null(self$`classes`)) {
        ClassesByClassObject[["classes"]] <-
          self$`classes`
      }
      if (!is.null(self$`_class`)) {
        ClassesByClassObject[["_class"]] <-
          self$`_class`
      }
      ClassesByClassObject
    },
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClassesByClass
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`classes`)) {
        self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
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
    #' @return ClassesByClass in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`classes`)) {
          sprintf(
          '"classes":
             [%s]
          ',
          paste(unlist(lapply(self$`classes`, function(x) paste0('"', x, '"'))), collapse = ",")
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
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @description
    #' Deserialize JSON string into an instance of ClassesByClass
    #'
    #' @param input_json the JSON input
    #' @return the instance of ClassesByClass
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to ClassesByClass
    #'
    #' @description
    #' Validate JSON input with respect to ClassesByClass and throw an exception if invalid
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
    #' @return String representation of ClassesByClass
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
# ClassesByClass$unlock()
#
## Below is an example to define the print function
# ClassesByClass$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ClassesByClass$lock()

