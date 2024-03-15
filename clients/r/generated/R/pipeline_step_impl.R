#' Create a new PipelineStepImpl
#'
#' @description
#' PipelineStepImpl Class
#'
#' @docType class
#' @title PipelineStepImpl
#' @description PipelineStepImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{PipelineStepImpllinks} [optional]
#' @field displayName  character [optional]
#' @field durationInMillis  integer [optional]
#' @field id  character [optional]
#' @field input  \link{InputStepImpl} [optional]
#' @field result  character [optional]
#' @field startTime  character [optional]
#' @field state  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineStepImpl <- R6::R6Class(
  "PipelineStepImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `displayName` = NULL,
    `durationInMillis` = NULL,
    `id` = NULL,
    `input` = NULL,
    `result` = NULL,
    `startTime` = NULL,
    `state` = NULL,
    #' Initialize a new PipelineStepImpl class.
    #'
    #' @description
    #' Initialize a new PipelineStepImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param displayName displayName
    #' @param durationInMillis durationInMillis
    #' @param id id
    #' @param input input
    #' @param result result
    #' @param startTime startTime
    #' @param state state
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `displayName` = NULL, `durationInMillis` = NULL, `id` = NULL, `input` = NULL, `result` = NULL, `startTime` = NULL, `state` = NULL, ...) {
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
      if (!is.null(`input`)) {
        stopifnot(R6::is.R6(`input`))
        self$`input` <- `input`
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
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineStepImpl in JSON format
    #' @export
    toJSON = function() {
      PipelineStepImplObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineStepImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        PipelineStepImplObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`displayName`)) {
        PipelineStepImplObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelineStepImplObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`id`)) {
        PipelineStepImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`input`)) {
        PipelineStepImplObject[["input"]] <-
          self$`input`$toJSON()
      }
      if (!is.null(self$`result`)) {
        PipelineStepImplObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`startTime`)) {
        PipelineStepImplObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelineStepImplObject[["state"]] <-
          self$`state`
      }
      PipelineStepImplObject
    },
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- PipelineStepImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
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
      if (!is.null(this_object$`input`)) {
        `input_object` <- InputStepImpl$new()
        `input_object`$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
        self$`input` <- `input_object`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineStepImpl in JSON format
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
        if (!is.null(self$`input`)) {
          sprintf(
          '"input":
          %s
          ',
          jsonlite::toJSON(self$`input`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        },
        if (!is.null(self$`state`)) {
          sprintf(
          '"state":
            "%s"
                    ',
          self$`state`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineStepImpl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- PipelineStepImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`displayName` <- this_object$`displayName`
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`id` <- this_object$`id`
      self$`input` <- InputStepImpl$new()$fromJSON(jsonlite::toJSON(this_object$`input`, auto_unbox = TRUE, digits = NA))
      self$`result` <- this_object$`result`
      self$`startTime` <- this_object$`startTime`
      self$`state` <- this_object$`state`
      self
    },
    #' Validate JSON input with respect to PipelineStepImpl
    #'
    #' @description
    #' Validate JSON input with respect to PipelineStepImpl and throw an exception if invalid
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
    #' @return String representation of PipelineStepImpl
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
# PipelineStepImpl$unlock()
#
## Below is an example to define the print function
# PipelineStepImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineStepImpl$lock()

