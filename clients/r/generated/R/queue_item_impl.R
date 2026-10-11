#' Create a new QueueItemImpl
#'
#' @description
#' QueueItemImpl Class
#'
#' @docType class
#' @title QueueItemImpl
#' @description QueueItemImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field expectedBuildNumber  integer [optional]
#' @field id  character [optional]
#' @field pipeline  character [optional]
#' @field queuedTime  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueueItemImpl <- R6::R6Class(
  "QueueItemImpl",
  public = list(
    `_class` = NULL,
    `expectedBuildNumber` = NULL,
    `id` = NULL,
    `pipeline` = NULL,
    `queuedTime` = NULL,

    #' @description
    #' Initialize a new QueueItemImpl class.
    #'
    #' @param _class _class
    #' @param expectedBuildNumber expectedBuildNumber
    #' @param id id
    #' @param pipeline pipeline
    #' @param queuedTime queuedTime
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `expectedBuildNumber` = NULL, `id` = NULL, `pipeline` = NULL, `queuedTime` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`expectedBuildNumber`)) {
        if (!(is.numeric(`expectedBuildNumber`) && length(`expectedBuildNumber`) == 1)) {
          stop(paste("Error! Invalid data for `expectedBuildNumber`. Must be an integer:", `expectedBuildNumber`))
        }
        self$`expectedBuildNumber` <- `expectedBuildNumber`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`pipeline`)) {
        if (!(is.character(`pipeline`) && length(`pipeline`) == 1)) {
          stop(paste("Error! Invalid data for `pipeline`. Must be a string:", `pipeline`))
        }
        self$`pipeline` <- `pipeline`
      }
      if (!is.null(`queuedTime`)) {
        if (!(is.numeric(`queuedTime`) && length(`queuedTime`) == 1)) {
          stop(paste("Error! Invalid data for `queuedTime`. Must be an integer:", `queuedTime`))
        }
        self$`queuedTime` <- `queuedTime`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return QueueItemImpl as a base R list.
    #' @examples
    #' # convert array of QueueItemImpl (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert QueueItemImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QueueItemImplObject <- list()
      if (!is.null(self$`_class`)) {
        QueueItemImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`expectedBuildNumber`)) {
        QueueItemImplObject[["expectedBuildNumber"]] <-
          self$`expectedBuildNumber`
      }
      if (!is.null(self$`id`)) {
        QueueItemImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`pipeline`)) {
        QueueItemImplObject[["pipeline"]] <-
          self$`pipeline`
      }
      if (!is.null(self$`queuedTime`)) {
        QueueItemImplObject[["queuedTime"]] <-
          self$`queuedTime`
      }
      return(QueueItemImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueItemImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`expectedBuildNumber`)) {
        self$`expectedBuildNumber` <- this_object$`expectedBuildNumber`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`pipeline`)) {
        self$`pipeline` <- this_object$`pipeline`
      }
      if (!is.null(this_object$`queuedTime`)) {
        self$`queuedTime` <- this_object$`queuedTime`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QueueItemImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueItemImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`expectedBuildNumber` <- this_object$`expectedBuildNumber`
      self$`id` <- this_object$`id`
      self$`pipeline` <- this_object$`pipeline`
      self$`queuedTime` <- this_object$`queuedTime`
      self
    },

    #' @description
    #' Validate JSON input with respect to QueueItemImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QueueItemImpl
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# QueueItemImpl$unlock()
#
## Below is an example to define the print function
# QueueItemImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueueItemImpl$lock()

