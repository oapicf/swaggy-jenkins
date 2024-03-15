#' Create a new GenericResource
#'
#' @description
#' GenericResource Class
#'
#' @docType class
#' @title GenericResource
#' @description GenericResource Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field durationInMillis  integer [optional]
#' @field id  character [optional]
#' @field result  character [optional]
#' @field startTime  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenericResource <- R6::R6Class(
  "GenericResource",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `durationInMillis` = NULL,
    `id` = NULL,
    `result` = NULL,
    `startTime` = NULL,
    #' Initialize a new GenericResource class.
    #'
    #' @description
    #' Initialize a new GenericResource class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param durationInMillis durationInMillis
    #' @param id id
    #' @param result result
    #' @param startTime startTime
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `displayName` = NULL, `durationInMillis` = NULL, `id` = NULL, `result` = NULL, `startTime` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`durationInMillis`)) {
        if (!(is.numeric(`durationInMillis`) && length(`durationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `durationInMillis`. Must be an integer:", `durationInMillis`))
        }
        self$`durationInMillis` <- `durationInMillis`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`result`)) {
        if (!(is.character(`result`) && length(`result`) == 1)) {
          stop(paste("Error! Invalid data for `result`. Must be a string:", `result`))
        }
        self$`result` <- `result`
      }
      if (!is.null(`startTime`)) {
        if (!(is.character(`startTime`) && length(`startTime`) == 1)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GenericResource in JSON format
    #' @export
    toJSON = function() {
      GenericResourceObject <- list()
      if (!is.null(self$`_class`)) {
        GenericResourceObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        GenericResourceObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`durationInMillis`)) {
        GenericResourceObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`id`)) {
        GenericResourceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`result`)) {
        GenericResourceObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`startTime`)) {
        GenericResourceObject[["startTime"]] <-
          self$`startTime`
      }
      GenericResourceObject
    },
    #' Deserialize JSON string into an instance of GenericResource
    #'
    #' @description
    #' Deserialize JSON string into an instance of GenericResource
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenericResource
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`durationInMillis`)) {
        self$`durationInMillis` <- this_object$`durationInMillis`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GenericResource in JSON format
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
        if (!is.null(self$`displayName`)) {
          sprintf(
          '"displayName":
            "%s"
                    ',
          self$`displayName`
          )
        },
        if (!is.null(self$`durationInMillis`)) {
          sprintf(
          '"durationInMillis":
            %d
                    ',
          self$`durationInMillis`
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
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
          )
        },
        if (!is.null(self$`startTime`)) {
          sprintf(
          '"startTime":
            "%s"
                    ',
          self$`startTime`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GenericResource
    #'
    #' @description
    #' Deserialize JSON string into an instance of GenericResource
    #'
    #' @param input_json the JSON input
    #' @return the instance of GenericResource
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`id` <- this_object$`id`
      self$`result` <- this_object$`result`
      self$`startTime` <- this_object$`startTime`
      self
    },
    #' Validate JSON input with respect to GenericResource
    #'
    #' @description
    #' Validate JSON input with respect to GenericResource and throw an exception if invalid
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
    #' @return String representation of GenericResource
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
# GenericResource$unlock()
#
## Below is an example to define the print function
# GenericResource$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GenericResource$lock()

