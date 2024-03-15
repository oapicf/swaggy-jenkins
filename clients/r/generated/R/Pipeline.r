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
    #' Initialize a new Pipeline class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Pipeline in JSON format
    #' @export
    toJSON = function() {
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
          self$`latestRun`$toJSON()
      }
      PipelineObject
    },
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @description
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pipeline
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Pipeline in JSON format
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
        if (!is.null(self$`organization`)) {
          sprintf(
          '"organization":
            "%s"
                    ',
          self$`organization`
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
        if (!is.null(self$`weatherScore`)) {
          sprintf(
          '"weatherScore":
            %d
                    ',
          self$`weatherScore`
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
        if (!is.null(self$`latestRun`)) {
          sprintf(
          '"latestRun":
          %s
          ',
          jsonlite::toJSON(self$`latestRun`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @description
    #' Deserialize JSON string into an instance of Pipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of Pipeline
    #' @export
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
    #' Validate JSON input with respect to Pipeline
    #'
    #' @description
    #' Validate JSON input with respect to Pipeline and throw an exception if invalid
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
    #' @return String representation of Pipeline
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
# Pipeline$unlock()
#
## Below is an example to define the print function
# Pipeline$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Pipeline$lock()

