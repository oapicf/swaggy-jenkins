#' Create a new FreeStyleProjecthealthReport
#'
#' @description
#' FreeStyleProjecthealthReport Class
#'
#' @docType class
#' @title FreeStyleProjecthealthReport
#' @description FreeStyleProjecthealthReport Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field iconClassName  character [optional]
#' @field iconUrl  character [optional]
#' @field score  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FreeStyleProjecthealthReport <- R6::R6Class(
  "FreeStyleProjecthealthReport",
  public = list(
    `description` = NULL,
    `iconClassName` = NULL,
    `iconUrl` = NULL,
    `score` = NULL,
    `_class` = NULL,
    #' Initialize a new FreeStyleProjecthealthReport class.
    #'
    #' @description
    #' Initialize a new FreeStyleProjecthealthReport class.
    #'
    #' @param description description
    #' @param iconClassName iconClassName
    #' @param iconUrl iconUrl
    #' @param score score
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`description` = NULL, `iconClassName` = NULL, `iconUrl` = NULL, `score` = NULL, `_class` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`iconClassName`)) {
        if (!(is.character(`iconClassName`) && length(`iconClassName`) == 1)) {
          stop(paste("Error! Invalid data for `iconClassName`. Must be a string:", `iconClassName`))
        }
        self$`iconClassName` <- `iconClassName`
      }
      if (!is.null(`iconUrl`)) {
        if (!(is.character(`iconUrl`) && length(`iconUrl`) == 1)) {
          stop(paste("Error! Invalid data for `iconUrl`. Must be a string:", `iconUrl`))
        }
        self$`iconUrl` <- `iconUrl`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
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
    #' @return FreeStyleProjecthealthReport in JSON format
    #' @export
    toJSON = function() {
      FreeStyleProjecthealthReportObject <- list()
      if (!is.null(self$`description`)) {
        FreeStyleProjecthealthReportObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`iconClassName`)) {
        FreeStyleProjecthealthReportObject[["iconClassName"]] <-
          self$`iconClassName`
      }
      if (!is.null(self$`iconUrl`)) {
        FreeStyleProjecthealthReportObject[["iconUrl"]] <-
          self$`iconUrl`
      }
      if (!is.null(self$`score`)) {
        FreeStyleProjecthealthReportObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`_class`)) {
        FreeStyleProjecthealthReportObject[["_class"]] <-
          self$`_class`
      }
      FreeStyleProjecthealthReportObject
    },
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProjecthealthReport
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`iconClassName`)) {
        self$`iconClassName` <- this_object$`iconClassName`
      }
      if (!is.null(this_object$`iconUrl`)) {
        self$`iconUrl` <- this_object$`iconUrl`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
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
    #' @return FreeStyleProjecthealthReport in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`iconClassName`)) {
          sprintf(
          '"iconClassName":
            "%s"
                    ',
          self$`iconClassName`
          )
        },
        if (!is.null(self$`iconUrl`)) {
          sprintf(
          '"iconUrl":
            "%s"
                    ',
          self$`iconUrl`
          )
        },
        if (!is.null(self$`score`)) {
          sprintf(
          '"score":
            %d
                    ',
          self$`score`
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
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProjecthealthReport
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`iconClassName` <- this_object$`iconClassName`
      self$`iconUrl` <- this_object$`iconUrl`
      self$`score` <- this_object$`score`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to FreeStyleProjecthealthReport
    #'
    #' @description
    #' Validate JSON input with respect to FreeStyleProjecthealthReport and throw an exception if invalid
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
    #' @return String representation of FreeStyleProjecthealthReport
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
# FreeStyleProjecthealthReport$unlock()
#
## Below is an example to define the print function
# FreeStyleProjecthealthReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FreeStyleProjecthealthReport$lock()

