#' Create a new PipelinelatestRun
#'
#' @description
#' PipelinelatestRun Class
#'
#' @docType class
#' @title PipelinelatestRun
#' @description PipelinelatestRun Class
#' @format An \code{R6Class} generator object
#' @field artifacts  list(\link{PipelinelatestRunartifacts}) [optional]
#' @field durationInMillis  integer [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field enQueueTime  character [optional]
#' @field endTime  character [optional]
#' @field id  character [optional]
#' @field organization  character [optional]
#' @field pipeline  character [optional]
#' @field result  character [optional]
#' @field runSummary  character [optional]
#' @field startTime  character [optional]
#' @field state  character [optional]
#' @field type  character [optional]
#' @field commitId  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelinelatestRun <- R6::R6Class(
  "PipelinelatestRun",
  public = list(
    `artifacts` = NULL,
    `durationInMillis` = NULL,
    `estimatedDurationInMillis` = NULL,
    `enQueueTime` = NULL,
    `endTime` = NULL,
    `id` = NULL,
    `organization` = NULL,
    `pipeline` = NULL,
    `result` = NULL,
    `runSummary` = NULL,
    `startTime` = NULL,
    `state` = NULL,
    `type` = NULL,
    `commitId` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new PipelinelatestRun class.
    #'
    #' @param artifacts artifacts
    #' @param durationInMillis durationInMillis
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param enQueueTime enQueueTime
    #' @param endTime endTime
    #' @param id id
    #' @param organization organization
    #' @param pipeline pipeline
    #' @param result result
    #' @param runSummary runSummary
    #' @param startTime startTime
    #' @param state state
    #' @param type type
    #' @param commitId commitId
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`artifacts` = NULL, `durationInMillis` = NULL, `estimatedDurationInMillis` = NULL, `enQueueTime` = NULL, `endTime` = NULL, `id` = NULL, `organization` = NULL, `pipeline` = NULL, `result` = NULL, `runSummary` = NULL, `startTime` = NULL, `state` = NULL, `type` = NULL, `commitId` = NULL, `_class` = NULL, ...) {
      if (!is.null(`artifacts`)) {
        stopifnot(is.vector(`artifacts`), length(`artifacts`) != 0)
        sapply(`artifacts`, function(x) stopifnot(R6::is.R6(x)))
        self$`artifacts` <- `artifacts`
      }
      if (!is.null(`durationInMillis`)) {
        if (!(is.numeric(`durationInMillis`) && length(`durationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `durationInMillis`. Must be an integer:", `durationInMillis`))
        }
        self$`durationInMillis` <- `durationInMillis`
      }
      if (!is.null(`estimatedDurationInMillis`)) {
        if (!(is.numeric(`estimatedDurationInMillis`) && length(`estimatedDurationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationInMillis`. Must be an integer:", `estimatedDurationInMillis`))
        }
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
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
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
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
    #' @return PipelinelatestRun as a base R list.
    #' @examples
    #' # convert array of PipelinelatestRun (x) to a data frame
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
    #' Convert PipelinelatestRun to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelinelatestRunObject <- list()
      if (!is.null(self$`artifacts`)) {
        PipelinelatestRunObject[["artifacts"]] <-
          lapply(self$`artifacts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelinelatestRunObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelinelatestRunObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`enQueueTime`)) {
        PipelinelatestRunObject[["enQueueTime"]] <-
          self$`enQueueTime`
      }
      if (!is.null(self$`endTime`)) {
        PipelinelatestRunObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`id`)) {
        PipelinelatestRunObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`organization`)) {
        PipelinelatestRunObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`pipeline`)) {
        PipelinelatestRunObject[["pipeline"]] <-
          self$`pipeline`
      }
      if (!is.null(self$`result`)) {
        PipelinelatestRunObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`runSummary`)) {
        PipelinelatestRunObject[["runSummary"]] <-
          self$`runSummary`
      }
      if (!is.null(self$`startTime`)) {
        PipelinelatestRunObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelinelatestRunObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`type`)) {
        PipelinelatestRunObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`commitId`)) {
        PipelinelatestRunObject[["commitId"]] <-
          self$`commitId`
      }
      if (!is.null(self$`_class`)) {
        PipelinelatestRunObject[["_class"]] <-
          self$`_class`
      }
      return(PipelinelatestRunObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelinelatestRun
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelinelatestRun
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`artifacts`)) {
        self$`artifacts` <- ApiClient$new()$deserializeObj(this_object$`artifacts`, "array[PipelinelatestRunartifacts]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`durationInMillis`)) {
        self$`durationInMillis` <- this_object$`durationInMillis`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`enQueueTime`)) {
        self$`enQueueTime` <- this_object$`enQueueTime`
      }
      if (!is.null(this_object$`endTime`)) {
        self$`endTime` <- this_object$`endTime`
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
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelinelatestRun in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelinelatestRun
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelinelatestRun
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`artifacts` <- ApiClient$new()$deserializeObj(this_object$`artifacts`, "array[PipelinelatestRunartifacts]", loadNamespace("openapi"))
      self$`durationInMillis` <- this_object$`durationInMillis`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`enQueueTime` <- this_object$`enQueueTime`
      self$`endTime` <- this_object$`endTime`
      self$`id` <- this_object$`id`
      self$`organization` <- this_object$`organization`
      self$`pipeline` <- this_object$`pipeline`
      self$`result` <- this_object$`result`
      self$`runSummary` <- this_object$`runSummary`
      self$`startTime` <- this_object$`startTime`
      self$`state` <- this_object$`state`
      self$`type` <- this_object$`type`
      self$`commitId` <- this_object$`commitId`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelinelatestRun and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelinelatestRun
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
# PipelinelatestRun$unlock()
#
## Below is an example to define the print function
# PipelinelatestRun$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelinelatestRun$lock()

