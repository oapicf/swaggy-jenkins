#' Create a new PipelineRunImpl
#'
#' @description
#' PipelineRunImpl Class
#'
#' @docType class
#' @title PipelineRunImpl
#' @description PipelineRunImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{PipelineRunImpllinks} [optional]
#' @field durationInMillis  integer [optional]
#' @field enQueueTime  character [optional]
#' @field endTime  character [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field id  character [optional]
#' @field organization  character [optional]
#' @field pipeline  character [optional]
#' @field result  character [optional]
#' @field runSummary  character [optional]
#' @field startTime  character [optional]
#' @field state  character [optional]
#' @field type  character [optional]
#' @field commitId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineRunImpl <- R6::R6Class(
  "PipelineRunImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `durationInMillis` = NULL,
    `enQueueTime` = NULL,
    `endTime` = NULL,
    `estimatedDurationInMillis` = NULL,
    `id` = NULL,
    `organization` = NULL,
    `pipeline` = NULL,
    `result` = NULL,
    `runSummary` = NULL,
    `startTime` = NULL,
    `state` = NULL,
    `type` = NULL,
    `commitId` = NULL,

    #' @description
    #' Initialize a new PipelineRunImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param durationInMillis durationInMillis
    #' @param enQueueTime enQueueTime
    #' @param endTime endTime
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param id id
    #' @param organization organization
    #' @param pipeline pipeline
    #' @param result result
    #' @param runSummary runSummary
    #' @param startTime startTime
    #' @param state state
    #' @param type type
    #' @param commitId commitId
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `durationInMillis` = NULL, `enQueueTime` = NULL, `endTime` = NULL, `estimatedDurationInMillis` = NULL, `id` = NULL, `organization` = NULL, `pipeline` = NULL, `result` = NULL, `runSummary` = NULL, `startTime` = NULL, `state` = NULL, `type` = NULL, `commitId` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`durationInMillis`)) {
        if (!(is.numeric(`durationInMillis`) && length(`durationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `durationInMillis`. Must be an integer:", `durationInMillis`))
        }
        self$`durationInMillis` <- `durationInMillis`
      }
      if (!is.null(`enQueueTime`)) {
        if (!(is.character(`enQueueTime`) && length(`enQueueTime`) == 1)) {
          stop(paste("Error! Invalid data for `enQueueTime`. Must be a string:", `enQueueTime`))
        }
        self$`enQueueTime` <- `enQueueTime`
      }
      if (!is.null(`endTime`)) {
        if (!(is.character(`endTime`) && length(`endTime`) == 1)) {
          stop(paste("Error! Invalid data for `endTime`. Must be a string:", `endTime`))
        }
        self$`endTime` <- `endTime`
      }
      if (!is.null(`estimatedDurationInMillis`)) {
        if (!(is.numeric(`estimatedDurationInMillis`) && length(`estimatedDurationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationInMillis`. Must be an integer:", `estimatedDurationInMillis`))
        }
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`pipeline`)) {
        if (!(is.character(`pipeline`) && length(`pipeline`) == 1)) {
          stop(paste("Error! Invalid data for `pipeline`. Must be a string:", `pipeline`))
        }
        self$`pipeline` <- `pipeline`
      }
      if (!is.null(`result`)) {
        if (!(is.character(`result`) && length(`result`) == 1)) {
          stop(paste("Error! Invalid data for `result`. Must be a string:", `result`))
        }
        self$`result` <- `result`
      }
      if (!is.null(`runSummary`)) {
        if (!(is.character(`runSummary`) && length(`runSummary`) == 1)) {
          stop(paste("Error! Invalid data for `runSummary`. Must be a string:", `runSummary`))
        }
        self$`runSummary` <- `runSummary`
      }
      if (!is.null(`startTime`)) {
        if (!(is.character(`startTime`) && length(`startTime`) == 1)) {
          stop(paste("Error! Invalid data for `startTime`. Must be a string:", `startTime`))
        }
        self$`startTime` <- `startTime`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`commitId`)) {
        if (!(is.character(`commitId`) && length(`commitId`) == 1)) {
          stop(paste("Error! Invalid data for `commitId`. Must be a string:", `commitId`))
        }
        self$`commitId` <- `commitId`
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
    #' @return PipelineRunImpl as a base R list.
    #' @examples
    #' # convert array of PipelineRunImpl (x) to a data frame
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
    #' Convert PipelineRunImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineRunImplObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineRunImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        PipelineRunImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelineRunImplObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`enQueueTime`)) {
        PipelineRunImplObject[["enQueueTime"]] <-
          self$`enQueueTime`
      }
      if (!is.null(self$`endTime`)) {
        PipelineRunImplObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelineRunImplObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`id`)) {
        PipelineRunImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`organization`)) {
        PipelineRunImplObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`pipeline`)) {
        PipelineRunImplObject[["pipeline"]] <-
          self$`pipeline`
      }
      if (!is.null(self$`result`)) {
        PipelineRunImplObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`runSummary`)) {
        PipelineRunImplObject[["runSummary"]] <-
          self$`runSummary`
      }
      if (!is.null(self$`startTime`)) {
        PipelineRunImplObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelineRunImplObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`type`)) {
        PipelineRunImplObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`commitId`)) {
        PipelineRunImplObject[["commitId"]] <-
          self$`commitId`
      }
      return(PipelineRunImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- PipelineRunImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`durationInMillis`)) {
        self$`durationInMillis` <- this_object$`durationInMillis`
      }
      if (!is.null(this_object$`enQueueTime`)) {
        self$`enQueueTime` <- this_object$`enQueueTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`pipeline`)) {
        self$`pipeline` <- this_object$`pipeline`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`runSummary`)) {
        self$`runSummary` <- this_object$`runSummary`
      }
      if (!is.null(this_object$`startTime`)) {
        self$`startTime` <- this_object$`startTime`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`commitId`)) {
        self$`commitId` <- this_object$`commitId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineRunImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineRunImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineRunImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- PipelineRunImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`enQueueTime` <- this_object$`enQueueTime`
      self$`endTime` <- this_object$`endTime`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`id` <- this_object$`id`
      self$`organization` <- this_object$`organization`
      self$`pipeline` <- this_object$`pipeline`
      self$`result` <- this_object$`result`
      self$`runSummary` <- this_object$`runSummary`
      self$`startTime` <- this_object$`startTime`
      self$`state` <- this_object$`state`
      self$`type` <- this_object$`type`
      self$`commitId` <- this_object$`commitId`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineRunImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineRunImpl
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
# PipelineRunImpl$unlock()
#
## Below is an example to define the print function
# PipelineRunImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineRunImpl$lock()

