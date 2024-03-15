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
    #' Initialize a new QueueItemImpl class.
    #'
    #' @description
    #' Initialize a new QueueItemImpl class.
    #'
    #' @param _class _class
    #' @param expectedBuildNumber expectedBuildNumber
    #' @param id id
    #' @param pipeline pipeline
    #' @param queuedTime queuedTime
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QueueItemImpl in JSON format
    #' @export
    toJSON = function() {
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
      QueueItemImplObject
    },
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueItemImpl
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QueueItemImpl in JSON format
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
        if (!is.null(self$`expectedBuildNumber`)) {
          sprintf(
          '"expectedBuildNumber":
            %d
                    ',
          self$`expectedBuildNumber`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`pipeline`)) {
          sprintf(
          '"pipeline":
            "%s"
                    ',
          self$`pipeline`
          )
        },
        if (!is.null(self$`queuedTime`)) {
          sprintf(
          '"queuedTime":
            %d
                    ',
          self$`queuedTime`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of QueueItemImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueItemImpl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`expectedBuildNumber` <- this_object$`expectedBuildNumber`
      self$`id` <- this_object$`id`
      self$`pipeline` <- this_object$`pipeline`
      self$`queuedTime` <- this_object$`queuedTime`
      self
    },
    #' Validate JSON input with respect to QueueItemImpl
    #'
    #' @description
    #' Validate JSON input with respect to QueueItemImpl and throw an exception if invalid
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
    #' @return String representation of QueueItemImpl
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
# QueueItemImpl$unlock()
#
## Below is an example to define the print function
# QueueItemImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueueItemImpl$lock()

