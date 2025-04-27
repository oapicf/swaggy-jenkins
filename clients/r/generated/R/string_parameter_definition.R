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

    #' @description
    #' Initialize a new StringParameterDefinition class.
    #'
    #' @param _class _class
    #' @param defaultParameterValue defaultParameterValue
    #' @param description description
    #' @param name name
    #' @param type type
    #' @param ... Other optional arguments.
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

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return StringParameterDefinition as a base R list.
    #' @examples
    #' # convert array of StringParameterDefinition (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert StringParameterDefinition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StringParameterDefinitionObject <- list()
      if (!is.null(self$`_class`)) {
        StringParameterDefinitionObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`defaultParameterValue`)) {
        StringParameterDefinitionObject[["defaultParameterValue"]] <-
          self$`defaultParameterValue`$toSimpleType()
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
      return(StringParameterDefinitionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterDefinition
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StringParameterDefinition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StringParameterDefinition
    #'
    #' @param input_json the JSON input
    #' @return the instance of StringParameterDefinition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`defaultParameterValue` <- StringParameterValue$new()$fromJSON(jsonlite::toJSON(this_object$`defaultParameterValue`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`type` <- this_object$`type`
      self
    },

    #' @description
    #' Validate JSON input with respect to StringParameterDefinition and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StringParameterDefinition
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
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

