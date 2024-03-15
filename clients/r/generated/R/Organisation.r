#' Create a new Organisation
#'
#' @description
#' Organisation Class
#'
#' @docType class
#' @title Organisation
#' @description Organisation Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Organisation <- R6::R6Class(
  "Organisation",
  public = list(
    `_class` = NULL,
    `name` = NULL,
    #' Initialize a new Organisation class.
    #'
    #' @description
    #' Initialize a new Organisation class.
    #'
    #' @param _class _class
    #' @param name name
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `name` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Organisation in JSON format
    #' @export
    toJSON = function() {
      OrganisationObject <- list()
      if (!is.null(self$`_class`)) {
        OrganisationObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`name`)) {
        OrganisationObject[["name"]] <-
          self$`name`
      }
      OrganisationObject
    },
    #' Deserialize JSON string into an instance of Organisation
    #'
    #' @description
    #' Deserialize JSON string into an instance of Organisation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Organisation
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Organisation in JSON format
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
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Organisation
    #'
    #' @description
    #' Deserialize JSON string into an instance of Organisation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Organisation
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`name` <- this_object$`name`
      self
    },
    #' Validate JSON input with respect to Organisation
    #'
    #' @description
    #' Validate JSON input with respect to Organisation and throw an exception if invalid
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
    #' @return String representation of Organisation
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
# Organisation$unlock()
#
## Below is an example to define the print function
# Organisation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Organisation$lock()

