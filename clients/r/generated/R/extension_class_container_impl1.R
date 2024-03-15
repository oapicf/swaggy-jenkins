#' Create a new ExtensionClassContainerImpl1
#'
#' @description
#' ExtensionClassContainerImpl1 Class
#'
#' @docType class
#' @title ExtensionClassContainerImpl1
#' @description ExtensionClassContainerImpl1 Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{ExtensionClassContainerImpl1links} [optional]
#' @field map  \link{ExtensionClassContainerImpl1map} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtensionClassContainerImpl1 <- R6::R6Class(
  "ExtensionClassContainerImpl1",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `map` = NULL,
    #' Initialize a new ExtensionClassContainerImpl1 class.
    #'
    #' @description
    #' Initialize a new ExtensionClassContainerImpl1 class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param map map
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `map` = NULL, ...) {
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
      if (!is.null(`map`)) {
        stopifnot(R6::is.R6(`map`))
        self$`map` <- `map`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassContainerImpl1 in JSON format
    #' @export
    toJSON = function() {
      ExtensionClassContainerImpl1Object <- list()
      if (!is.null(self$`_class`)) {
        ExtensionClassContainerImpl1Object[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        ExtensionClassContainerImpl1Object[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`map`)) {
        ExtensionClassContainerImpl1Object[["map"]] <-
          self$`map`$toJSON()
      }
      ExtensionClassContainerImpl1Object
    },
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- ExtensionClassContainerImpl1links$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`map`)) {
        `map_object` <- ExtensionClassContainerImpl1map$new()
        `map_object`$fromJSON(jsonlite::toJSON(this_object$`map`, auto_unbox = TRUE, digits = NA))
        self$`map` <- `map_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassContainerImpl1 in JSON format
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
        if (!is.null(self$`map`)) {
          sprintf(
          '"map":
          %s
          ',
          jsonlite::toJSON(self$`map`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- ExtensionClassContainerImpl1links$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`map` <- ExtensionClassContainerImpl1map$new()$fromJSON(jsonlite::toJSON(this_object$`map`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to ExtensionClassContainerImpl1
    #'
    #' @description
    #' Validate JSON input with respect to ExtensionClassContainerImpl1 and throw an exception if invalid
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
    #' @return String representation of ExtensionClassContainerImpl1
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
# ExtensionClassContainerImpl1$unlock()
#
## Below is an example to define the print function
# ExtensionClassContainerImpl1$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtensionClassContainerImpl1$lock()

