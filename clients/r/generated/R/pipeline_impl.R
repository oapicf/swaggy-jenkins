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
    #' Initialize a new PipelineImpl class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineImpl in JSON format
    #' @export
    toJSON = function() {
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
          self$`_links`$toJSON()
      }
      PipelineImplObject
    },
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpl
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineImpl in JSON format
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
        if (!is.null(self$`estimatedDurationInMillis`)) {
          sprintf(
          '"estimatedDurationInMillis":
            %d
                    ',
          self$`estimatedDurationInMillis`
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
        if (!is.null(self$`latestRun`)) {
          sprintf(
          '"latestRun":
            "%s"
                    ',
          self$`latestRun`
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
        if (!is.null(self$`weatherScore`)) {
          sprintf(
          '"weatherScore":
            %d
                    ',
          self$`weatherScore`
          )
        },
        if (!is.null(self$`_links`)) {
          sprintf(
          '"_links":
          %s
          ',
          jsonlite::toJSON(self$`_links`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineImpl
    #' @export
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
    #' Validate JSON input with respect to PipelineImpl
    #'
    #' @description
    #' Validate JSON input with respect to PipelineImpl and throw an exception if invalid
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
    #' @return String representation of PipelineImpl
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
# PipelineImpl$unlock()
#
## Below is an example to define the print function
# PipelineImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineImpl$lock()

