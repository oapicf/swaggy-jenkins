#' Create a new ComputerSet
#'
#' @description
#' ComputerSet Class
#'
#' @docType class
#' @title ComputerSet
#' @description ComputerSet Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field busyExecutors  integer [optional]
#' @field computer  list(\link{HudsonMasterComputer}) [optional]
#' @field displayName  character [optional]
#' @field totalExecutors  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComputerSet <- R6::R6Class(
  "ComputerSet",
  public = list(
    `_class` = NULL,
    `busyExecutors` = NULL,
    `computer` = NULL,
    `displayName` = NULL,
    `totalExecutors` = NULL,
    #' Initialize a new ComputerSet class.
    #'
    #' @description
    #' Initialize a new ComputerSet class.
    #'
    #' @param _class _class
    #' @param busyExecutors busyExecutors
    #' @param computer computer
    #' @param displayName displayName
    #' @param totalExecutors totalExecutors
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `busyExecutors` = NULL, `computer` = NULL, `displayName` = NULL, `totalExecutors` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`busyExecutors`)) {
        if (!(is.numeric(`busyExecutors`) && length(`busyExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `busyExecutors`. Must be an integer:", `busyExecutors`))
        }
        self$`busyExecutors` <- `busyExecutors`
      }
      if (!is.null(`computer`)) {
        stopifnot(is.vector(`computer`), length(`computer`) != 0)
        sapply(`computer`, function(x) stopifnot(R6::is.R6(x)))
        self$`computer` <- `computer`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`totalExecutors`)) {
        if (!(is.numeric(`totalExecutors`) && length(`totalExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `totalExecutors`. Must be an integer:", `totalExecutors`))
        }
        self$`totalExecutors` <- `totalExecutors`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ComputerSet in JSON format
    #' @export
    toJSON = function() {
      ComputerSetObject <- list()
      if (!is.null(self$`_class`)) {
        ComputerSetObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`busyExecutors`)) {
        ComputerSetObject[["busyExecutors"]] <-
          self$`busyExecutors`
      }
      if (!is.null(self$`computer`)) {
        ComputerSetObject[["computer"]] <-
          lapply(self$`computer`, function(x) x$toJSON())
      }
      if (!is.null(self$`displayName`)) {
        ComputerSetObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`totalExecutors`)) {
        ComputerSetObject[["totalExecutors"]] <-
          self$`totalExecutors`
      }
      ComputerSetObject
    },
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputerSet
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`busyExecutors`)) {
        self$`busyExecutors` <- this_object$`busyExecutors`
      }
      if (!is.null(this_object$`computer`)) {
        self$`computer` <- ApiClient$new()$deserializeObj(this_object$`computer`, "array[HudsonMasterComputer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`totalExecutors`)) {
        self$`totalExecutors` <- this_object$`totalExecutors`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ComputerSet in JSON format
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
        if (!is.null(self$`busyExecutors`)) {
          sprintf(
          '"busyExecutors":
            %d
                    ',
          self$`busyExecutors`
          )
        },
        if (!is.null(self$`computer`)) {
          sprintf(
          '"computer":
          [%s]
',
          paste(sapply(self$`computer`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
        if (!is.null(self$`totalExecutors`)) {
          sprintf(
          '"totalExecutors":
            %d
                    ',
          self$`totalExecutors`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @description
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputerSet
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`busyExecutors` <- this_object$`busyExecutors`
      self$`computer` <- ApiClient$new()$deserializeObj(this_object$`computer`, "array[HudsonMasterComputer]", loadNamespace("openapi"))
      self$`displayName` <- this_object$`displayName`
      self$`totalExecutors` <- this_object$`totalExecutors`
      self
    },
    #' Validate JSON input with respect to ComputerSet
    #'
    #' @description
    #' Validate JSON input with respect to ComputerSet and throw an exception if invalid
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
    #' @return String representation of ComputerSet
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
# ComputerSet$unlock()
#
## Below is an example to define the print function
# ComputerSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComputerSet$lock()

