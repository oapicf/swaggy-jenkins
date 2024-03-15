#' Create a new StringParameterDefinition
#'
#' @description
#' StringParameterDefinition Class
#'
#' @docType class
#' @title StringParameterDefinition
#' @description StringParameterDefinition Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field defaultParameterValue  \link{StringParameterValue} [optional]
#' @field description  character [optional]
#' @field name  character [optional]
#' @field type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StringParameterDefinition <- R6::R6Class(
  "StringParameterDefinition",
  public = list(
    `_class` = NULL,
    `defaultParameterValue` = NULL,
    `description` = NULL,
    `name` = NULL,
    `type` = NULL,
    #' Initialize a new StringParameterDefinition class.
    #'
    #' @description
    #' Initialize a new StringParameterDefinition class.
    #'
    #' @param _class _class
    #' @param defaultParameterValue defaultParameterValue
    #' @param description description
    #' @param name name
    #' @param type type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `defaultParameterValue` = NULL, `description` = NULL, `name` = NULL, `type` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`defaultParameterValue`)) {
        stopifnot(R6::is.R6(`defaultParameterValue`))
        self$`defaultParameterValue` <- `defaultParameterValue`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StringParameterDefinition in JSON format
    #' @export
    toJSON = function() {
      StringParameterDefinitionObject <- list()
      if (!is.null(self$`_class`)) {
        StringParameterDefinitionObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`defaultParameterValue`)) {
        StringParameterDefinitionObject[["defaultParameterValue"]] <-
          self$`defaultParameterValue`$toJSON()
      }
      if (!is.null(self$`description`)) {
        StringParameterDefinitionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        StringParameterDefinitionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type`)) {
        StringParameterDefinitionObject[["type"]] <-
          self$`type`
      }
      StringParameterDefinitionObject
    },
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @description
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterDefinition
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`defaultParameterValue`)) {
        `defaultparametervalue_object` <- StringParameterValue$new()
        `defaultparametervalue_object`$fromJSON(jsonlite::toJSON(this_object$`defaultParameterValue`, auto_unbox = TRUE, digits = NA))
        self$`defaultParameterValue` <- `defaultparametervalue_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return StringParameterDefinition in JSON format
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
        if (!is.null(self$`defaultParameterValue`)) {
          sprintf(
          '"defaultParameterValue":
          %s
          ',
          jsonlite::toJSON(self$`defaultParameterValue`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @description
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterDefinition
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`defaultParameterValue` <- StringParameterValue$new()$fromJSON(jsonlite::toJSON(this_object$`defaultParameterValue`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`type` <- this_object$`type`
      self
    },
    #' Validate JSON input with respect to StringParameterDefinition
    #'
    #' @description
    #' Validate JSON input with respect to StringParameterDefinition and throw an exception if invalid
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
    #' @return String representation of StringParameterDefinition
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
# StringParameterDefinition$unlock()
#
## Below is an example to define the print function
# StringParameterDefinition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StringParameterDefinition$lock()

