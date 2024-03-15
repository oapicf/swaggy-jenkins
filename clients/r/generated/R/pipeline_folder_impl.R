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
    #' Initialize a new PipelineFolderImpl class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineFolderImpl in JSON format
    #' @export
    toJSON = function() {
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
      PipelineFolderImplObject
    },
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineFolderImpl
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineFolderImpl in JSON format
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
        if (!is.null(self$`displayName`)) {
          sprintf(
          '"displayName":
            "%s"
                    ',
          self$`displayName`
          )
        },
        if (!is.null(self$`fullName`)) {
          sprintf(
          '"fullName":
            "%s"
                    ',
          self$`fullName`
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
        if (!is.null(self$`organization`)) {
          sprintf(
          '"organization":
            "%s"
                    ',
          self$`organization`
          )
        },
        if (!is.null(self$`numberOfFolders`)) {
          sprintf(
          '"numberOfFolders":
            %d
                    ',
          self$`numberOfFolders`
          )
        },
        if (!is.null(self$`numberOfPipelines`)) {
          sprintf(
          '"numberOfPipelines":
            %d
                    ',
          self$`numberOfPipelines`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineFolderImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineFolderImpl
    #' @export
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
    #' Validate JSON input with respect to PipelineFolderImpl
    #'
    #' @description
    #' Validate JSON input with respect to PipelineFolderImpl and throw an exception if invalid
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
    #' @return String representation of PipelineFolderImpl
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
# PipelineFolderImpl$unlock()
#
## Below is an example to define the print function
# PipelineFolderImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineFolderImpl$lock()

