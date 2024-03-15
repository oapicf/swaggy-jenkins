#' Create a new ExtensionClassImpl
#'
#' @description
#' ExtensionClassImpl Class
#'
#' @docType class
#' @title ExtensionClassImpl
#' @description ExtensionClassImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{ExtensionClassImpllinks} [optional]
#' @field classes  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtensionClassImpl <- R6::R6Class(
  "ExtensionClassImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `classes` = NULL,
    #' Initialize a new ExtensionClassImpl class.
    #'
    #' @description
    #' Initialize a new ExtensionClassImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param classes classes
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `classes` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`classes`)) {
        stopifnot(is.vector(`classes`), length(`classes`) != 0)
        sapply(`classes`, function(x) stopifnot(is.character(x)))
        self$`classes` <- `classes`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassImpl in JSON format
    #' @export
    toJSON = function() {
      ExtensionClassImplObject <- list()
      if (!is.null(self$`_class`)) {
        ExtensionClassImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        ExtensionClassImplObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`classes`)) {
        ExtensionClassImplObject[["classes"]] <-
          self$`classes`
      }
      ExtensionClassImplObject
    },
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassImpl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- ExtensionClassImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`classes`)) {
        self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassImpl in JSON format
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
        if (!is.null(self$`_links`)) {
          sprintf(
          '"_links":
          %s
          ',
          jsonlite::toJSON(self$`_links`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`classes`)) {
          sprintf(
          '"classes":
             [%s]
          ',
          paste(unlist(lapply(self$`classes`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassImpl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- ExtensionClassImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`classes` <- ApiClient$new()$deserializeObj(this_object$`classes`, "array[character]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to ExtensionClassImpl
    #'
    #' @description
    #' Validate JSON input with respect to ExtensionClassImpl and throw an exception if invalid
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
    #' @return String representation of ExtensionClassImpl
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
# ExtensionClassImpl$unlock()
#
## Below is an example to define the print function
# ExtensionClassImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtensionClassImpl$lock()

