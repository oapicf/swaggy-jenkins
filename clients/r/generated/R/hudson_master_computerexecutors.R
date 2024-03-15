#' Create a new HudsonMasterComputerexecutors
#'
#' @description
#' HudsonMasterComputerexecutors Class
#'
#' @docType class
#' @title HudsonMasterComputerexecutors
#' @description HudsonMasterComputerexecutors Class
#' @format An \code{R6Class} generator object
#' @field currentExecutable  \link{FreeStyleBuild} [optional]
#' @field idle  character [optional]
#' @field likelyStuck  character [optional]
#' @field number  integer [optional]
#' @field progress  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HudsonMasterComputerexecutors <- R6::R6Class(
  "HudsonMasterComputerexecutors",
  public = list(
    `currentExecutable` = NULL,
    `idle` = NULL,
    `likelyStuck` = NULL,
    `number` = NULL,
    `progress` = NULL,
    `_class` = NULL,
    #' Initialize a new HudsonMasterComputerexecutors class.
    #'
    #' @description
    #' Initialize a new HudsonMasterComputerexecutors class.
    #'
    #' @param currentExecutable currentExecutable
    #' @param idle idle
    #' @param likelyStuck likelyStuck
    #' @param number number
    #' @param progress progress
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`currentExecutable` = NULL, `idle` = NULL, `likelyStuck` = NULL, `number` = NULL, `progress` = NULL, `_class` = NULL, ...) {
      if (!is.null(`currentExecutable`)) {
        stopifnot(R6::is.R6(`currentExecutable`))
        self$`currentExecutable` <- `currentExecutable`
      }
      if (!is.null(`idle`)) {
        if (!(is.logical(`idle`) && length(`idle`) == 1)) {
          stop(paste("Error! Invalid data for `idle`. Must be a boolean:", `idle`))
        }
        self$`idle` <- `idle`
      }
      if (!is.null(`likelyStuck`)) {
        if (!(is.logical(`likelyStuck`) && length(`likelyStuck`) == 1)) {
          stop(paste("Error! Invalid data for `likelyStuck`. Must be a boolean:", `likelyStuck`))
        }
        self$`likelyStuck` <- `likelyStuck`
      }
      if (!is.null(`number`)) {
        if (!(is.numeric(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be an integer:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`progress`)) {
        if (!(is.numeric(`progress`) && length(`progress`) == 1)) {
          stop(paste("Error! Invalid data for `progress`. Must be an integer:", `progress`))
        }
        self$`progress` <- `progress`
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
    #' @return HudsonMasterComputerexecutors in JSON format
    #' @export
    toJSON = function() {
      HudsonMasterComputerexecutorsObject <- list()
      if (!is.null(self$`currentExecutable`)) {
        HudsonMasterComputerexecutorsObject[["currentExecutable"]] <-
          self$`currentExecutable`$toJSON()
      }
      if (!is.null(self$`idle`)) {
        HudsonMasterComputerexecutorsObject[["idle"]] <-
          self$`idle`
      }
      if (!is.null(self$`likelyStuck`)) {
        HudsonMasterComputerexecutorsObject[["likelyStuck"]] <-
          self$`likelyStuck`
      }
      if (!is.null(self$`number`)) {
        HudsonMasterComputerexecutorsObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`progress`)) {
        HudsonMasterComputerexecutorsObject[["progress"]] <-
          self$`progress`
      }
      if (!is.null(self$`_class`)) {
        HudsonMasterComputerexecutorsObject[["_class"]] <-
          self$`_class`
      }
      HudsonMasterComputerexecutorsObject
    },
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputerexecutors
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currentExecutable`)) {
        `currentexecutable_object` <- FreeStyleBuild$new()
        `currentexecutable_object`$fromJSON(jsonlite::toJSON(this_object$`currentExecutable`, auto_unbox = TRUE, digits = NA))
        self$`currentExecutable` <- `currentexecutable_object`
      }
      if (!is.null(this_object$`idle`)) {
        self$`idle` <- this_object$`idle`
      }
      if (!is.null(this_object$`likelyStuck`)) {
        self$`likelyStuck` <- this_object$`likelyStuck`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`progress`)) {
        self$`progress` <- this_object$`progress`
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
    #' @return HudsonMasterComputerexecutors in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`currentExecutable`)) {
          sprintf(
          '"currentExecutable":
          %s
          ',
          jsonlite::toJSON(self$`currentExecutable`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`idle`)) {
          sprintf(
          '"idle":
            %s
                    ',
          tolower(self$`idle`)
          )
        },
        if (!is.null(self$`likelyStuck`)) {
          sprintf(
          '"likelyStuck":
            %s
                    ',
          tolower(self$`likelyStuck`)
          )
        },
        if (!is.null(self$`number`)) {
          sprintf(
          '"number":
            %d
                    ',
          self$`number`
          )
        },
        if (!is.null(self$`progress`)) {
          sprintf(
          '"progress":
            %d
                    ',
          self$`progress`
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
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputerexecutors
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputerexecutors
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currentExecutable` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`currentExecutable`, auto_unbox = TRUE, digits = NA))
      self$`idle` <- this_object$`idle`
      self$`likelyStuck` <- this_object$`likelyStuck`
      self$`number` <- this_object$`number`
      self$`progress` <- this_object$`progress`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to HudsonMasterComputerexecutors
    #'
    #' @description
    #' Validate JSON input with respect to HudsonMasterComputerexecutors and throw an exception if invalid
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
    #' @return String representation of HudsonMasterComputerexecutors
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
# HudsonMasterComputerexecutors$unlock()
#
## Below is an example to define the print function
# HudsonMasterComputerexecutors$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HudsonMasterComputerexecutors$lock()

