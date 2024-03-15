#' Create a new GithubRepositorypermissions
#'
#' @description
#' GithubRepositorypermissions Class
#'
#' @docType class
#' @title GithubRepositorypermissions
#' @description GithubRepositorypermissions Class
#' @format An \code{R6Class} generator object
#' @field admin  character [optional]
#' @field push  character [optional]
#' @field pull  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepositorypermissions <- R6::R6Class(
  "GithubRepositorypermissions",
  public = list(
    `admin` = NULL,
    `push` = NULL,
    `pull` = NULL,
    `_class` = NULL,
    #' Initialize a new GithubRepositorypermissions class.
    #'
    #' @description
    #' Initialize a new GithubRepositorypermissions class.
    #'
    #' @param admin admin
    #' @param push push
    #' @param pull pull
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`admin` = NULL, `push` = NULL, `pull` = NULL, `_class` = NULL, ...) {
      if (!is.null(`admin`)) {
        if (!(is.logical(`admin`) && length(`admin`) == 1)) {
          stop(paste("Error! Invalid data for `admin`. Must be a boolean:", `admin`))
        }
        self$`admin` <- `admin`
      }
      if (!is.null(`push`)) {
        if (!(is.logical(`push`) && length(`push`) == 1)) {
          stop(paste("Error! Invalid data for `push`. Must be a boolean:", `push`))
        }
        self$`push` <- `push`
      }
      if (!is.null(`pull`)) {
        if (!(is.logical(`pull`) && length(`pull`) == 1)) {
          stop(paste("Error! Invalid data for `pull`. Must be a boolean:", `pull`))
        }
        self$`pull` <- `pull`
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
    #' @return GithubRepositorypermissions in JSON format
    #' @export
    toJSON = function() {
      GithubRepositorypermissionsObject <- list()
      if (!is.null(self$`admin`)) {
        GithubRepositorypermissionsObject[["admin"]] <-
          self$`admin`
      }
      if (!is.null(self$`push`)) {
        GithubRepositorypermissionsObject[["push"]] <-
          self$`push`
      }
      if (!is.null(self$`pull`)) {
        GithubRepositorypermissionsObject[["pull"]] <-
          self$`pull`
      }
      if (!is.null(self$`_class`)) {
        GithubRepositorypermissionsObject[["_class"]] <-
          self$`_class`
      }
      GithubRepositorypermissionsObject
    },
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorypermissions
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`admin`)) {
        self$`admin` <- this_object$`admin`
      }
      if (!is.null(this_object$`push`)) {
        self$`push` <- this_object$`push`
      }
      if (!is.null(this_object$`pull`)) {
        self$`pull` <- this_object$`pull`
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
    #' @return GithubRepositorypermissions in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`admin`)) {
          sprintf(
          '"admin":
            %s
                    ',
          tolower(self$`admin`)
          )
        },
        if (!is.null(self$`push`)) {
          sprintf(
          '"push":
            %s
                    ',
          tolower(self$`push`)
          )
        },
        if (!is.null(self$`pull`)) {
          sprintf(
          '"pull":
            %s
                    ',
          tolower(self$`pull`)
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
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorypermissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorypermissions
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`admin` <- this_object$`admin`
      self$`push` <- this_object$`push`
      self$`pull` <- this_object$`pull`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to GithubRepositorypermissions
    #'
    #' @description
    #' Validate JSON input with respect to GithubRepositorypermissions and throw an exception if invalid
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
    #' @return String representation of GithubRepositorypermissions
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
# GithubRepositorypermissions$unlock()
#
## Below is an example to define the print function
# GithubRepositorypermissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepositorypermissions$lock()

