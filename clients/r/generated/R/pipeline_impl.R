#' Create a new PipelineImpl
#'
#' @description
#' PipelineImpl Class
#'
#' @docType class
#' @title PipelineImpl
#' @description PipelineImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field fullName  character [optional]
#' @field latestRun  character [optional]
#' @field name  character [optional]
#' @field organization  character [optional]
#' @field weatherScore  integer [optional]
#' @field _links  \link{PipelineImpllinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineImpl <- R6::R6Class(
  "PipelineImpl",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `estimatedDurationInMillis` = NULL,
    `fullName` = NULL,
    `latestRun` = NULL,
    `name` = NULL,
    `organization` = NULL,
    `weatherScore` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new PipelineImpl class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param fullName fullName
    #' @param latestRun latestRun
    #' @param name name
    #' @param organization organization
    #' @param weatherScore weatherScore
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `displayName` = NULL, `estimatedDurationInMillis` = NULL, `fullName` = NULL, `latestRun` = NULL, `name` = NULL, `organization` = NULL, `weatherScore` = NULL, `_links` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`estimatedDurationInMillis`)) {
        if (!(is.numeric(`estimatedDurationInMillis`) && length(`estimatedDurationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationInMillis`. Must be an integer:", `estimatedDurationInMillis`))
        }
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
      }
      if (!is.null(`latestRun`)) {
        if (!(is.character(`latestRun`) && length(`latestRun`) == 1)) {
          stop(paste("Error! Invalid data for `latestRun`. Must be a string:", `latestRun`))
        }
        self$`latestRun` <- `latestRun`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`weatherScore`)) {
        if (!(is.numeric(`weatherScore`) && length(`weatherScore`) == 1)) {
          stop(paste("Error! Invalid data for `weatherScore`. Must be an integer:", `weatherScore`))
        }
        self$`weatherScore` <- `weatherScore`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
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
    #' @return PipelineImpl as a base R list.
    #' @examples
    #' # convert array of PipelineImpl (x) to a data frame
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
    #' Convert PipelineImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineImplObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        PipelineImplObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelineImplObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`fullName`)) {
        PipelineImplObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`latestRun`)) {
        PipelineImplObject[["latestRun"]] <-
          self$`latestRun`
      }
      if (!is.null(self$`name`)) {
        PipelineImplObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organization`)) {
        PipelineImplObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`weatherScore`)) {
        PipelineImplObject[["weatherScore"]] <-
          self$`weatherScore`
      }
      if (!is.null(self$`_links`)) {
        PipelineImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(PipelineImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`latestRun`)) {
        self$`latestRun` <- this_object$`latestRun`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`weatherScore`)) {
        self$`weatherScore` <- this_object$`weatherScore`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- PipelineImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`fullName` <- this_object$`fullName`
      self$`latestRun` <- this_object$`latestRun`
      self$`name` <- this_object$`name`
      self$`organization` <- this_object$`organization`
      self$`weatherScore` <- this_object$`weatherScore`
      self$`_links` <- PipelineImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineImpl
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
# PipelineImpl$unlock()
#
## Below is an example to define the print function
# PipelineImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineImpl$lock()

