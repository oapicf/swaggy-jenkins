#' Create a new HudsonMasterComputer
#'
#' @description
#' HudsonMasterComputer Class
#'
#' @docType class
#' @title HudsonMasterComputer
#' @description HudsonMasterComputer Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field executors  list(\link{HudsonMasterComputerexecutors}) [optional]
#' @field icon  character [optional]
#' @field iconClassName  character [optional]
#' @field idle  character [optional]
#' @field jnlpAgent  character [optional]
#' @field launchSupported  character [optional]
#' @field loadStatistics  \link{Label1} [optional]
#' @field manualLaunchAllowed  character [optional]
#' @field monitorData  \link{HudsonMasterComputermonitorData} [optional]
#' @field numExecutors  integer [optional]
#' @field offline  character [optional]
#' @field offlineCause  character [optional]
#' @field offlineCauseReason  character [optional]
#' @field temporarilyOffline  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HudsonMasterComputer <- R6::R6Class(
  "HudsonMasterComputer",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `executors` = NULL,
    `icon` = NULL,
    `iconClassName` = NULL,
    `idle` = NULL,
    `jnlpAgent` = NULL,
    `launchSupported` = NULL,
    `loadStatistics` = NULL,
    `manualLaunchAllowed` = NULL,
    `monitorData` = NULL,
    `numExecutors` = NULL,
    `offline` = NULL,
    `offlineCause` = NULL,
    `offlineCauseReason` = NULL,
    `temporarilyOffline` = NULL,
    #' Initialize a new HudsonMasterComputer class.
    #'
    #' @description
    #' Initialize a new HudsonMasterComputer class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param executors executors
    #' @param icon icon
    #' @param iconClassName iconClassName
    #' @param idle idle
    #' @param jnlpAgent jnlpAgent
    #' @param launchSupported launchSupported
    #' @param loadStatistics loadStatistics
    #' @param manualLaunchAllowed manualLaunchAllowed
    #' @param monitorData monitorData
    #' @param numExecutors numExecutors
    #' @param offline offline
    #' @param offlineCause offlineCause
    #' @param offlineCauseReason offlineCauseReason
    #' @param temporarilyOffline temporarilyOffline
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `displayName` = NULL, `executors` = NULL, `icon` = NULL, `iconClassName` = NULL, `idle` = NULL, `jnlpAgent` = NULL, `launchSupported` = NULL, `loadStatistics` = NULL, `manualLaunchAllowed` = NULL, `monitorData` = NULL, `numExecutors` = NULL, `offline` = NULL, `offlineCause` = NULL, `offlineCauseReason` = NULL, `temporarilyOffline` = NULL, ...) {
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
      if (!is.null(`executors`)) {
        stopifnot(is.vector(`executors`), length(`executors`) != 0)
        sapply(`executors`, function(x) stopifnot(R6::is.R6(x)))
        self$`executors` <- `executors`
      }
      if (!is.null(`icon`)) {
        if (!(is.character(`icon`) && length(`icon`) == 1)) {
          stop(paste("Error! Invalid data for `icon`. Must be a string:", `icon`))
        }
        self$`icon` <- `icon`
      }
      if (!is.null(`iconClassName`)) {
        if (!(is.character(`iconClassName`) && length(`iconClassName`) == 1)) {
          stop(paste("Error! Invalid data for `iconClassName`. Must be a string:", `iconClassName`))
        }
        self$`iconClassName` <- `iconClassName`
      }
      if (!is.null(`idle`)) {
        if (!(is.logical(`idle`) && length(`idle`) == 1)) {
          stop(paste("Error! Invalid data for `idle`. Must be a boolean:", `idle`))
        }
        self$`idle` <- `idle`
      }
      if (!is.null(`jnlpAgent`)) {
        if (!(is.logical(`jnlpAgent`) && length(`jnlpAgent`) == 1)) {
          stop(paste("Error! Invalid data for `jnlpAgent`. Must be a boolean:", `jnlpAgent`))
        }
        self$`jnlpAgent` <- `jnlpAgent`
      }
      if (!is.null(`launchSupported`)) {
        if (!(is.logical(`launchSupported`) && length(`launchSupported`) == 1)) {
          stop(paste("Error! Invalid data for `launchSupported`. Must be a boolean:", `launchSupported`))
        }
        self$`launchSupported` <- `launchSupported`
      }
      if (!is.null(`loadStatistics`)) {
        stopifnot(R6::is.R6(`loadStatistics`))
        self$`loadStatistics` <- `loadStatistics`
      }
      if (!is.null(`manualLaunchAllowed`)) {
        if (!(is.logical(`manualLaunchAllowed`) && length(`manualLaunchAllowed`) == 1)) {
          stop(paste("Error! Invalid data for `manualLaunchAllowed`. Must be a boolean:", `manualLaunchAllowed`))
        }
        self$`manualLaunchAllowed` <- `manualLaunchAllowed`
      }
      if (!is.null(`monitorData`)) {
        stopifnot(R6::is.R6(`monitorData`))
        self$`monitorData` <- `monitorData`
      }
      if (!is.null(`numExecutors`)) {
        if (!(is.numeric(`numExecutors`) && length(`numExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `numExecutors`. Must be an integer:", `numExecutors`))
        }
        self$`numExecutors` <- `numExecutors`
      }
      if (!is.null(`offline`)) {
        if (!(is.logical(`offline`) && length(`offline`) == 1)) {
          stop(paste("Error! Invalid data for `offline`. Must be a boolean:", `offline`))
        }
        self$`offline` <- `offline`
      }
      if (!is.null(`offlineCause`)) {
        if (!(is.character(`offlineCause`) && length(`offlineCause`) == 1)) {
          stop(paste("Error! Invalid data for `offlineCause`. Must be a string:", `offlineCause`))
        }
        self$`offlineCause` <- `offlineCause`
      }
      if (!is.null(`offlineCauseReason`)) {
        if (!(is.character(`offlineCauseReason`) && length(`offlineCauseReason`) == 1)) {
          stop(paste("Error! Invalid data for `offlineCauseReason`. Must be a string:", `offlineCauseReason`))
        }
        self$`offlineCauseReason` <- `offlineCauseReason`
      }
      if (!is.null(`temporarilyOffline`)) {
        if (!(is.logical(`temporarilyOffline`) && length(`temporarilyOffline`) == 1)) {
          stop(paste("Error! Invalid data for `temporarilyOffline`. Must be a boolean:", `temporarilyOffline`))
        }
        self$`temporarilyOffline` <- `temporarilyOffline`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HudsonMasterComputer in JSON format
    #' @export
    toJSON = function() {
      HudsonMasterComputerObject <- list()
      if (!is.null(self$`_class`)) {
        HudsonMasterComputerObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        HudsonMasterComputerObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`executors`)) {
        HudsonMasterComputerObject[["executors"]] <-
          lapply(self$`executors`, function(x) x$toJSON())
      }
      if (!is.null(self$`icon`)) {
        HudsonMasterComputerObject[["icon"]] <-
          self$`icon`
      }
      if (!is.null(self$`iconClassName`)) {
        HudsonMasterComputerObject[["iconClassName"]] <-
          self$`iconClassName`
      }
      if (!is.null(self$`idle`)) {
        HudsonMasterComputerObject[["idle"]] <-
          self$`idle`
      }
      if (!is.null(self$`jnlpAgent`)) {
        HudsonMasterComputerObject[["jnlpAgent"]] <-
          self$`jnlpAgent`
      }
      if (!is.null(self$`launchSupported`)) {
        HudsonMasterComputerObject[["launchSupported"]] <-
          self$`launchSupported`
      }
      if (!is.null(self$`loadStatistics`)) {
        HudsonMasterComputerObject[["loadStatistics"]] <-
          self$`loadStatistics`$toJSON()
      }
      if (!is.null(self$`manualLaunchAllowed`)) {
        HudsonMasterComputerObject[["manualLaunchAllowed"]] <-
          self$`manualLaunchAllowed`
      }
      if (!is.null(self$`monitorData`)) {
        HudsonMasterComputerObject[["monitorData"]] <-
          self$`monitorData`$toJSON()
      }
      if (!is.null(self$`numExecutors`)) {
        HudsonMasterComputerObject[["numExecutors"]] <-
          self$`numExecutors`
      }
      if (!is.null(self$`offline`)) {
        HudsonMasterComputerObject[["offline"]] <-
          self$`offline`
      }
      if (!is.null(self$`offlineCause`)) {
        HudsonMasterComputerObject[["offlineCause"]] <-
          self$`offlineCause`
      }
      if (!is.null(self$`offlineCauseReason`)) {
        HudsonMasterComputerObject[["offlineCauseReason"]] <-
          self$`offlineCauseReason`
      }
      if (!is.null(self$`temporarilyOffline`)) {
        HudsonMasterComputerObject[["temporarilyOffline"]] <-
          self$`temporarilyOffline`
      }
      HudsonMasterComputerObject
    },
    #' Deserialize JSON string into an instance of HudsonMasterComputer
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputer
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputer
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`executors`)) {
        self$`executors` <- ApiClient$new()$deserializeObj(this_object$`executors`, "array[HudsonMasterComputerexecutors]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`icon`)) {
        self$`icon` <- this_object$`icon`
      }
      if (!is.null(this_object$`iconClassName`)) {
        self$`iconClassName` <- this_object$`iconClassName`
      }
      if (!is.null(this_object$`idle`)) {
        self$`idle` <- this_object$`idle`
      }
      if (!is.null(this_object$`jnlpAgent`)) {
        self$`jnlpAgent` <- this_object$`jnlpAgent`
      }
      if (!is.null(this_object$`launchSupported`)) {
        self$`launchSupported` <- this_object$`launchSupported`
      }
      if (!is.null(this_object$`loadStatistics`)) {
        `loadstatistics_object` <- Label1$new()
        `loadstatistics_object`$fromJSON(jsonlite::toJSON(this_object$`loadStatistics`, auto_unbox = TRUE, digits = NA))
        self$`loadStatistics` <- `loadstatistics_object`
      }
      if (!is.null(this_object$`manualLaunchAllowed`)) {
        self$`manualLaunchAllowed` <- this_object$`manualLaunchAllowed`
      }
      if (!is.null(this_object$`monitorData`)) {
        `monitordata_object` <- HudsonMasterComputermonitorData$new()
        `monitordata_object`$fromJSON(jsonlite::toJSON(this_object$`monitorData`, auto_unbox = TRUE, digits = NA))
        self$`monitorData` <- `monitordata_object`
      }
      if (!is.null(this_object$`numExecutors`)) {
        self$`numExecutors` <- this_object$`numExecutors`
      }
      if (!is.null(this_object$`offline`)) {
        self$`offline` <- this_object$`offline`
      }
      if (!is.null(this_object$`offlineCause`)) {
        self$`offlineCause` <- this_object$`offlineCause`
      }
      if (!is.null(this_object$`offlineCauseReason`)) {
        self$`offlineCauseReason` <- this_object$`offlineCauseReason`
      }
      if (!is.null(this_object$`temporarilyOffline`)) {
        self$`temporarilyOffline` <- this_object$`temporarilyOffline`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HudsonMasterComputer in JSON format
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
        if (!is.null(self$`executors`)) {
          sprintf(
          '"executors":
          [%s]
',
          paste(sapply(self$`executors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`icon`)) {
          sprintf(
          '"icon":
            "%s"
                    ',
          self$`icon`
          )
        },
        if (!is.null(self$`iconClassName`)) {
          sprintf(
          '"iconClassName":
            "%s"
                    ',
          self$`iconClassName`
          )
        },
        if (!is.null(self$`idle`)) {
          sprintf(
          '"idle":
            %s
                    ',
          tolower(self$`idle`)
          )
        },
        if (!is.null(self$`jnlpAgent`)) {
          sprintf(
          '"jnlpAgent":
            %s
                    ',
          tolower(self$`jnlpAgent`)
          )
        },
        if (!is.null(self$`launchSupported`)) {
          sprintf(
          '"launchSupported":
            %s
                    ',
          tolower(self$`launchSupported`)
          )
        },
        if (!is.null(self$`loadStatistics`)) {
          sprintf(
          '"loadStatistics":
          %s
          ',
          jsonlite::toJSON(self$`loadStatistics`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`manualLaunchAllowed`)) {
          sprintf(
          '"manualLaunchAllowed":
            %s
                    ',
          tolower(self$`manualLaunchAllowed`)
          )
        },
        if (!is.null(self$`monitorData`)) {
          sprintf(
          '"monitorData":
          %s
          ',
          jsonlite::toJSON(self$`monitorData`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`numExecutors`)) {
          sprintf(
          '"numExecutors":
            %d
                    ',
          self$`numExecutors`
          )
        },
        if (!is.null(self$`offline`)) {
          sprintf(
          '"offline":
            %s
                    ',
          tolower(self$`offline`)
          )
        },
        if (!is.null(self$`offlineCause`)) {
          sprintf(
          '"offlineCause":
            "%s"
                    ',
          self$`offlineCause`
          )
        },
        if (!is.null(self$`offlineCauseReason`)) {
          sprintf(
          '"offlineCauseReason":
            "%s"
                    ',
          self$`offlineCauseReason`
          )
        },
        if (!is.null(self$`temporarilyOffline`)) {
          sprintf(
          '"temporarilyOffline":
            %s
                    ',
          tolower(self$`temporarilyOffline`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of HudsonMasterComputer
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputer
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputer
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`executors` <- ApiClient$new()$deserializeObj(this_object$`executors`, "array[HudsonMasterComputerexecutors]", loadNamespace("openapi"))
      self$`icon` <- this_object$`icon`
      self$`iconClassName` <- this_object$`iconClassName`
      self$`idle` <- this_object$`idle`
      self$`jnlpAgent` <- this_object$`jnlpAgent`
      self$`launchSupported` <- this_object$`launchSupported`
      self$`loadStatistics` <- Label1$new()$fromJSON(jsonlite::toJSON(this_object$`loadStatistics`, auto_unbox = TRUE, digits = NA))
      self$`manualLaunchAllowed` <- this_object$`manualLaunchAllowed`
      self$`monitorData` <- HudsonMasterComputermonitorData$new()$fromJSON(jsonlite::toJSON(this_object$`monitorData`, auto_unbox = TRUE, digits = NA))
      self$`numExecutors` <- this_object$`numExecutors`
      self$`offline` <- this_object$`offline`
      self$`offlineCause` <- this_object$`offlineCause`
      self$`offlineCauseReason` <- this_object$`offlineCauseReason`
      self$`temporarilyOffline` <- this_object$`temporarilyOffline`
      self
    },
    #' Validate JSON input with respect to HudsonMasterComputer
    #'
    #' @description
    #' Validate JSON input with respect to HudsonMasterComputer and throw an exception if invalid
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
    #' @return String representation of HudsonMasterComputer
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
# HudsonMasterComputer$unlock()
#
## Below is an example to define the print function
# HudsonMasterComputer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HudsonMasterComputer$lock()

