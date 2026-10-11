#' Create a new PipelineFolderImpl
#'
#' @description
#' PipelineFolderImpl Class
#'
#' @docType class
#' @title PipelineFolderImpl
#' @description PipelineFolderImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field fullName  character [optional]
#' @field name  character [optional]
#' @field organization  character [optional]
#' @field numberOfFolders  integer [optional]
#' @field numberOfPipelines  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineFolderImpl <- R6::R6Class(
  "PipelineFolderImpl",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `fullName` = NULL,
    `name` = NULL,
    `organization` = NULL,
    `numberOfFolders` = NULL,
    `numberOfPipelines` = NULL,

    #' @description
    #' Initialize a new PipelineFolderImpl class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param fullName fullName
    #' @param name name
    #' @param organization organization
    #' @param numberOfFolders numberOfFolders
    #' @param numberOfPipelines numberOfPipelines
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `displayName` = NULL, `fullName` = NULL, `name` = NULL, `organization` = NULL, `numberOfFolders` = NULL, `numberOfPipelines` = NULL, ...) {
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
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
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
      if (!is.null(`numberOfFolders`)) {
        if (!(is.numeric(`numberOfFolders`) && length(`numberOfFolders`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFolders`. Must be an integer:", `numberOfFolders`))
        }
        self$`numberOfFolders` <- `numberOfFolders`
      }
      if (!is.null(`numberOfPipelines`)) {
        if (!(is.numeric(`numberOfPipelines`) && length(`numberOfPipelines`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfPipelines`. Must be an integer:", `numberOfPipelines`))
        }
        self$`numberOfPipelines` <- `numberOfPipelines`
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
    #' @return PipelineFolderImpl as a base R list.
    #' @examples
    #' # convert array of PipelineFolderImpl (x) to a data frame
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
    #' Convert PipelineFolderImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineFolderImplObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineFolderImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        PipelineFolderImplObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`fullName`)) {
        PipelineFolderImplObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`name`)) {
        PipelineFolderImplObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organization`)) {
        PipelineFolderImplObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`numberOfFolders`)) {
        PipelineFolderImplObject[["numberOfFolders"]] <-
          self$`numberOfFolders`
      }
      if (!is.null(self$`numberOfPipelines`)) {
        PipelineFolderImplObject[["numberOfPipelines"]] <-
          self$`numberOfPipelines`
      }
      return(PipelineFolderImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineFolderImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`numberOfFolders`)) {
        self$`numberOfFolders` <- this_object$`numberOfFolders`
      }
      if (!is.null(this_object$`numberOfPipelines`)) {
        self$`numberOfPipelines` <- this_object$`numberOfPipelines`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineFolderImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineFolderImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`fullName` <- this_object$`fullName`
      self$`name` <- this_object$`name`
      self$`organization` <- this_object$`organization`
      self$`numberOfFolders` <- this_object$`numberOfFolders`
      self$`numberOfPipelines` <- this_object$`numberOfPipelines`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineFolderImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineFolderImpl
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
# PipelineFolderImpl$unlock()
#
## Below is an example to define the print function
# PipelineFolderImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineFolderImpl$lock()

