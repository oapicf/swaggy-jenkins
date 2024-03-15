#' Create a new PipelineActivity
#'
#' @description
#' PipelineActivity Class
#'
#' @docType class
#' @title PipelineActivity
#' @description PipelineActivity Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field artifacts  list(\link{PipelineActivityartifacts}) [optional]
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
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineActivity <- R6::R6Class(
  "PipelineActivity",
  public = list(
    `_class` = NULL,
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
    #' Initialize a new PipelineActivity class.
    #'
    #' @description
    #' Initialize a new PipelineActivity class.
    #'
    #' @param _class _class
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
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `artifacts` = NULL, `durationInMillis` = NULL, `estimatedDurationInMillis` = NULL, `enQueueTime` = NULL, `endTime` = NULL, `id` = NULL, `organization` = NULL, `pipeline` = NULL, `result` = NULL, `runSummary` = NULL, `startTime` = NULL, `state` = NULL, `type` = NULL, `commitId` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
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
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineActivity in JSON format
    #' @export
    toJSON = function() {
      PipelineActivityObject <- list()
      if (!is.null(self$`_class`)) {
        PipelineActivityObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`artifacts`)) {
        PipelineActivityObject[["artifacts"]] <-
          lapply(self$`artifacts`, function(x) x$toJSON())
      }
      if (!is.null(self$`durationInMillis`)) {
        PipelineActivityObject[["durationInMillis"]] <-
          self$`durationInMillis`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelineActivityObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`enQueueTime`)) {
        PipelineActivityObject[["enQueueTime"]] <-
          self$`enQueueTime`
      }
      if (!is.null(self$`endTime`)) {
        PipelineActivityObject[["endTime"]] <-
          self$`endTime`
      }
      if (!is.null(self$`id`)) {
        PipelineActivityObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`organization`)) {
        PipelineActivityObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`pipeline`)) {
        PipelineActivityObject[["pipeline"]] <-
          self$`pipeline`
      }
      if (!is.null(self$`result`)) {
        PipelineActivityObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`runSummary`)) {
        PipelineActivityObject[["runSummary"]] <-
          self$`runSummary`
      }
      if (!is.null(self$`startTime`)) {
        PipelineActivityObject[["startTime"]] <-
          self$`startTime`
      }
      if (!is.null(self$`state`)) {
        PipelineActivityObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`type`)) {
        PipelineActivityObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`commitId`)) {
        PipelineActivityObject[["commitId"]] <-
          self$`commitId`
      }
      PipelineActivityObject
    },
    #' Deserialize JSON string into an instance of PipelineActivity
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineActivity
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineActivity
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`artifacts`)) {
        self$`artifacts` <- ApiClient$new()$deserializeObj(this_object$`artifacts`, "array[PipelineActivityartifacts]", loadNamespace("openapi"))
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
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineActivity in JSON format
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
        if (!is.null(self$`artifacts`)) {
          sprintf(
          '"artifacts":
          [%s]
',
          paste(sapply(self$`artifacts`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`durationInMillis`)) {
          sprintf(
          '"durationInMillis":
            %d
                    ',
          self$`durationInMillis`
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
        if (!is.null(self$`enQueueTime`)) {
          sprintf(
          '"enQueueTime":
            "%s"
                    ',
          self$`enQueueTime`
          )
        },
        if (!is.null(self$`endTime`)) {
          sprintf(
          '"endTime":
            "%s"
                    ',
          self$`endTime`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
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
        if (!is.null(self$`pipeline`)) {
          sprintf(
          '"pipeline":
            "%s"
                    ',
          self$`pipeline`
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
          )
        },
        if (!is.null(self$`runSummary`)) {
          sprintf(
          '"runSummary":
            "%s"
                    ',
          self$`runSummary`
          )
        },
        if (!is.null(self$`startTime`)) {
          sprintf(
          '"startTime":
            "%s"
                    ',
          self$`startTime`
          )
        },
        if (!is.null(self$`state`)) {
          sprintf(
          '"state":
            "%s"
                    ',
          self$`state`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`commitId`)) {
          sprintf(
          '"commitId":
            "%s"
                    ',
          self$`commitId`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineActivity
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineActivity
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineActivity
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`artifacts` <- ApiClient$new()$deserializeObj(this_object$`artifacts`, "array[PipelineActivityartifacts]", loadNamespace("openapi"))
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
      self
    },
    #' Validate JSON input with respect to PipelineActivity
    #'
    #' @description
    #' Validate JSON input with respect to PipelineActivity and throw an exception if invalid
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
    #' @return String representation of PipelineActivity
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
# PipelineActivity$unlock()
#
## Below is an example to define the print function
# PipelineActivity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineActivity$lock()

