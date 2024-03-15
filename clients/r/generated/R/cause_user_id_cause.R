#' Create a new CauseUserIdCause
#'
#' @description
#' CauseUserIdCause Class
#'
#' @docType class
#' @title CauseUserIdCause
#' @description CauseUserIdCause Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field shortDescription  character [optional]
#' @field userId  character [optional]
#' @field userName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CauseUserIdCause <- R6::R6Class(
  "CauseUserIdCause",
  public = list(
    `_class` = NULL,
    `shortDescription` = NULL,
    `userId` = NULL,
    `userName` = NULL,
    #' Initialize a new CauseUserIdCause class.
    #'
    #' @description
    #' Initialize a new CauseUserIdCause class.
    #'
    #' @param _class _class
    #' @param shortDescription shortDescription
    #' @param userId userId
    #' @param userName userName
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `shortDescription` = NULL, `userId` = NULL, `userName` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`shortDescription`)) {
        if (!(is.character(`shortDescription`) && length(`shortDescription`) == 1)) {
          stop(paste("Error! Invalid data for `shortDescription`. Must be a string:", `shortDescription`))
        }
        self$`shortDescription` <- `shortDescription`
      }
      if (!is.null(`userId`)) {
        if (!(is.character(`userId`) && length(`userId`) == 1)) {
          stop(paste("Error! Invalid data for `userId`. Must be a string:", `userId`))
        }
        self$`userId` <- `userId`
      }
      if (!is.null(`userName`)) {
        if (!(is.character(`userName`) && length(`userName`) == 1)) {
          stop(paste("Error! Invalid data for `userName`. Must be a string:", `userName`))
        }
        self$`userName` <- `userName`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CauseUserIdCause in JSON format
    #' @export
    toJSON = function() {
      CauseUserIdCauseObject <- list()
      if (!is.null(self$`_class`)) {
        CauseUserIdCauseObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`shortDescription`)) {
        CauseUserIdCauseObject[["shortDescription"]] <-
          self$`shortDescription`
      }
      if (!is.null(self$`userId`)) {
        CauseUserIdCauseObject[["userId"]] <-
          self$`userId`
      }
      if (!is.null(self$`userName`)) {
        CauseUserIdCauseObject[["userName"]] <-
          self$`userName`
      }
      CauseUserIdCauseObject
    },
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @description
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseUserIdCause
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`shortDescription`)) {
        self$`shortDescription` <- this_object$`shortDescription`
      }
      if (!is.null(this_object$`userId`)) {
        self$`userId` <- this_object$`userId`
      }
      if (!is.null(this_object$`userName`)) {
        self$`userName` <- this_object$`userName`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return CauseUserIdCause in JSON format
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
        if (!is.null(self$`shortDescription`)) {
          sprintf(
          '"shortDescription":
            "%s"
                    ',
          self$`shortDescription`
          )
        },
        if (!is.null(self$`userId`)) {
          sprintf(
          '"userId":
            "%s"
                    ',
          self$`userId`
          )
        },
        if (!is.null(self$`userName`)) {
          sprintf(
          '"userName":
            "%s"
                    ',
          self$`userName`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @description
    #' Deserialize JSON string into an instance of CauseUserIdCause
    #'
    #' @param input_json the JSON input
    #' @return the instance of CauseUserIdCause
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`shortDescription` <- this_object$`shortDescription`
      self$`userId` <- this_object$`userId`
      self$`userName` <- this_object$`userName`
      self
    },
    #' Validate JSON input with respect to CauseUserIdCause
    #'
    #' @description
    #' Validate JSON input with respect to CauseUserIdCause and throw an exception if invalid
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
    #' @return String representation of CauseUserIdCause
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
# CauseUserIdCause$unlock()
#
## Below is an example to define the print function
# CauseUserIdCause$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CauseUserIdCause$lock()

