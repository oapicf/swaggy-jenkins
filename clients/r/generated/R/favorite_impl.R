#' Create a new FavoriteImpl
#'
#' @description
#' FavoriteImpl Class
#'
#' @docType class
#' @title FavoriteImpl
#' @description FavoriteImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{FavoriteImpllinks} [optional]
#' @field item  \link{PipelineImpl} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FavoriteImpl <- R6::R6Class(
  "FavoriteImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `item` = NULL,
    #' Initialize a new FavoriteImpl class.
    #'
    #' @description
    #' Initialize a new FavoriteImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param item item
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `item` = NULL, ...) {
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
      if (!is.null(`item`)) {
        stopifnot(R6::is.R6(`item`))
        self$`item` <- `item`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FavoriteImpl in JSON format
    #' @export
    toJSON = function() {
      FavoriteImplObject <- list()
      if (!is.null(self$`_class`)) {
        FavoriteImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        FavoriteImplObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`item`)) {
        FavoriteImplObject[["item"]] <-
          self$`item`$toJSON()
      }
      FavoriteImplObject
    },
    #' Deserialize JSON string into an instance of FavoriteImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of FavoriteImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of FavoriteImpl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- FavoriteImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`item`)) {
        `item_object` <- PipelineImpl$new()
        `item_object`$fromJSON(jsonlite::toJSON(this_object$`item`, auto_unbox = TRUE, digits = NA))
        self$`item` <- `item_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FavoriteImpl in JSON format
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
        if (!is.null(self$`item`)) {
          sprintf(
          '"item":
          %s
          ',
          jsonlite::toJSON(self$`item`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FavoriteImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of FavoriteImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of FavoriteImpl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- FavoriteImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`item` <- PipelineImpl$new()$fromJSON(jsonlite::toJSON(this_object$`item`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FavoriteImpl
    #'
    #' @description
    #' Validate JSON input with respect to FavoriteImpl and throw an exception if invalid
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
    #' @return String representation of FavoriteImpl
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
# FavoriteImpl$unlock()
#
## Below is an example to define the print function
# FavoriteImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FavoriteImpl$lock()

