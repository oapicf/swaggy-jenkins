#' Create a new Pipeline
#'
#' @description
#' Pipeline Class
#'
#' @docType class
#' @title Pipeline
#' @description Pipeline Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field organization  character [optional]
#' @field name  character [optional]
#' @field displayName  character [optional]
#' @field fullName  character [optional]
#' @field weatherScore  integer [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field latestRun  \link{PipelinelatestRun} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pipeline <- R6::R6Class(
  "Pipeline",
  public = list(
    `_class` = NULL,
    `organization` = NULL,
    `name` = NULL,
    `displayName` = NULL,
    `fullName` = NULL,
    `weatherScore` = NULL,
    `estimatedDurationInMillis` = NULL,
    `latestRun` = NULL,

    #' @description
    #' Initialize a new Pipeline class.
    #'
    #' @param _class _class
    #' @param organization organization
    #' @param name name
    #' @param displayName displayName
    #' @param fullName fullName
    #' @param weatherScore weatherScore
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param latestRun latestRun
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `organization` = NULL, `name` = NULL, `displayName` = NULL, `fullName` = NULL, `weatherScore` = NULL, `estimatedDurationInMillis` = NULL, `latestRun` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
      }
      if (!is.null(`weatherScore`)) {
        if (!(is.numeric(`weatherScore`) && length(`weatherScore`) == 1)) {
          stop(paste("Error! Invalid data for `weatherScore`. Must be an integer:", `weatherScore`))
        }
        self$`weatherScore` <- `weatherScore`
      }
      if (!is.null(`estimatedDurationInMillis`)) {
        if (!(is.numeric(`estimatedDurationInMillis`) && length(`estimatedDurationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationInMillis`. Must be an integer:", `estimatedDurationInMillis`))
        }
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
      }
      if (!is.null(`latestRun`)) {
        stopifnot(R6::is.R6(`latestRun`))
        self$`latestRun` <- `latestRun`
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
    #' @return Pipeline as a base R list.
    #' @examples
    #' # convert array of Pipeline (x) to a data frame
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
    #' Convert Pipeline to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`organization`)) {
        PipelineObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`name`)) {
        PipelineObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`displayName`)) {
        PipelineObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`fullName`)) {
        PipelineObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`weatherScore`)) {
        PipelineObject[["weatherScore"]] <-
          self$`weatherScore`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelineObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`latestRun`)) {
        PipelineObject[["latestRun"]] <-
          self$`latestRun`$toSimpleType()
      }
      return(PipelineObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pipeline
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`weatherScore`)) {
        self$`weatherScore` <- this_object$`weatherScore`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`latestRun`)) {
        `latestrun_object` <- PipelinelatestRun$new()
        `latestrun_object`$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
        self$`latestRun` <- `latestrun_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Pipeline in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pipeline
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`organization` <- this_object$`organization`
      self$`name` <- this_object$`name`
      self$`displayName` <- this_object$`displayName`
      self$`fullName` <- this_object$`fullName`
      self$`weatherScore` <- this_object$`weatherScore`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`latestRun` <- PipelinelatestRun$new()$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Pipeline and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Pipeline
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
# Pipeline$unlock()
#
## Below is an example to define the print function
# Pipeline$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pipeline$lock()

