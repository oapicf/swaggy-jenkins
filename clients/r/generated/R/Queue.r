#' Create a new Queue
#'
#' @description
#' Queue Class
#'
#' @docType class
#' @title Queue
#' @description Queue Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field items  list(\link{QueueBlockedItem}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Queue <- R6::R6Class(
  "Queue",
  public = list(
    `_class` = NULL,
    `items` = NULL,
    #' Initialize a new Queue class.
    #'
    #' @description
    #' Initialize a new Queue class.
    #'
    #' @param _class _class
    #' @param items items
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `items` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Queue in JSON format
    #' @export
    toJSON = function() {
      QueueObject <- list()
      if (!is.null(self$`_class`)) {
        QueueObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`items`)) {
        QueueObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      QueueObject
    },
    #' Deserialize JSON string into an instance of Queue
    #'
    #' @description
    #' Deserialize JSON string into an instance of Queue
    #'
    #' @param input_json the JSON input
    #' @return the instance of Queue
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QueueBlockedItem]", loadNamespace("openapi"))
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Queue in JSON format
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
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Queue
    #'
    #' @description
    #' Deserialize JSON string into an instance of Queue
    #'
    #' @param input_json the JSON input
    #' @return the instance of Queue
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QueueBlockedItem]", loadNamespace("openapi"))
      self
    },
    #' Validate JSON input with respect to Queue
    #'
    #' @description
    #' Validate JSON input with respect to Queue and throw an exception if invalid
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
    #' @return String representation of Queue
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
# Queue$unlock()
#
## Below is an example to define the print function
# Queue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Queue$lock()

