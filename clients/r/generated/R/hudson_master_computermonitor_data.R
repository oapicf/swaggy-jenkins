#' Create a new HudsonMasterComputermonitorData
#'
#' @description
#' HudsonMasterComputermonitorData Class
#'
#' @docType class
#' @title HudsonMasterComputermonitorData
#' @description HudsonMasterComputermonitorData Class
#' @format An \code{R6Class} generator object
#' @field hudson.node_monitors.SwapSpaceMonitor  \link{SwapSpaceMonitorMemoryUsage2} [optional]
#' @field hudson.node_monitors.TemporarySpaceMonitor  \link{DiskSpaceMonitorDescriptorDiskSpace} [optional]
#' @field hudson.node_monitors.DiskSpaceMonitor  \link{DiskSpaceMonitorDescriptorDiskSpace} [optional]
#' @field hudson.node_monitors.ArchitectureMonitor  character [optional]
#' @field hudson.node_monitors.ResponseTimeMonitor  \link{ResponseTimeMonitorData} [optional]
#' @field hudson.node_monitors.ClockMonitor  \link{ClockDifference} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HudsonMasterComputermonitorData <- R6::R6Class(
  "HudsonMasterComputermonitorData",
  public = list(
    `hudson.node_monitors.SwapSpaceMonitor` = NULL,
    `hudson.node_monitors.TemporarySpaceMonitor` = NULL,
    `hudson.node_monitors.DiskSpaceMonitor` = NULL,
    `hudson.node_monitors.ArchitectureMonitor` = NULL,
    `hudson.node_monitors.ResponseTimeMonitor` = NULL,
    `hudson.node_monitors.ClockMonitor` = NULL,
    `_class` = NULL,
    #' Initialize a new HudsonMasterComputermonitorData class.
    #'
    #' @description
    #' Initialize a new HudsonMasterComputermonitorData class.
    #'
    #' @param hudson.node_monitors.SwapSpaceMonitor hudson.node_monitors.SwapSpaceMonitor
    #' @param hudson.node_monitors.TemporarySpaceMonitor hudson.node_monitors.TemporarySpaceMonitor
    #' @param hudson.node_monitors.DiskSpaceMonitor hudson.node_monitors.DiskSpaceMonitor
    #' @param hudson.node_monitors.ArchitectureMonitor hudson.node_monitors.ArchitectureMonitor
    #' @param hudson.node_monitors.ResponseTimeMonitor hudson.node_monitors.ResponseTimeMonitor
    #' @param hudson.node_monitors.ClockMonitor hudson.node_monitors.ClockMonitor
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`hudson.node_monitors.SwapSpaceMonitor` = NULL, `hudson.node_monitors.TemporarySpaceMonitor` = NULL, `hudson.node_monitors.DiskSpaceMonitor` = NULL, `hudson.node_monitors.ArchitectureMonitor` = NULL, `hudson.node_monitors.ResponseTimeMonitor` = NULL, `hudson.node_monitors.ClockMonitor` = NULL, `_class` = NULL, ...) {
      if (!is.null(`hudson.node_monitors.SwapSpaceMonitor`)) {
        stopifnot(R6::is.R6(`hudson.node_monitors.SwapSpaceMonitor`))
        self$`hudson.node_monitors.SwapSpaceMonitor` <- `hudson.node_monitors.SwapSpaceMonitor`
      }
      if (!is.null(`hudson.node_monitors.TemporarySpaceMonitor`)) {
        stopifnot(R6::is.R6(`hudson.node_monitors.TemporarySpaceMonitor`))
        self$`hudson.node_monitors.TemporarySpaceMonitor` <- `hudson.node_monitors.TemporarySpaceMonitor`
      }
      if (!is.null(`hudson.node_monitors.DiskSpaceMonitor`)) {
        stopifnot(R6::is.R6(`hudson.node_monitors.DiskSpaceMonitor`))
        self$`hudson.node_monitors.DiskSpaceMonitor` <- `hudson.node_monitors.DiskSpaceMonitor`
      }
      if (!is.null(`hudson.node_monitors.ArchitectureMonitor`)) {
        if (!(is.character(`hudson.node_monitors.ArchitectureMonitor`) && length(`hudson.node_monitors.ArchitectureMonitor`) == 1)) {
          stop(paste("Error! Invalid data for `hudson.node_monitors.ArchitectureMonitor`. Must be a string:", `hudson.node_monitors.ArchitectureMonitor`))
        }
        self$`hudson.node_monitors.ArchitectureMonitor` <- `hudson.node_monitors.ArchitectureMonitor`
      }
      if (!is.null(`hudson.node_monitors.ResponseTimeMonitor`)) {
        stopifnot(R6::is.R6(`hudson.node_monitors.ResponseTimeMonitor`))
        self$`hudson.node_monitors.ResponseTimeMonitor` <- `hudson.node_monitors.ResponseTimeMonitor`
      }
      if (!is.null(`hudson.node_monitors.ClockMonitor`)) {
        stopifnot(R6::is.R6(`hudson.node_monitors.ClockMonitor`))
        self$`hudson.node_monitors.ClockMonitor` <- `hudson.node_monitors.ClockMonitor`
      }
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HudsonMasterComputermonitorData in JSON format
    #' @export
    toJSON = function() {
      HudsonMasterComputermonitorDataObject <- list()
      if (!is.null(self$`hudson.node_monitors.SwapSpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.SwapSpaceMonitor"]] <-
          self$`hudson.node_monitors.SwapSpaceMonitor`$toJSON()
      }
      if (!is.null(self$`hudson.node_monitors.TemporarySpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.TemporarySpaceMonitor"]] <-
          self$`hudson.node_monitors.TemporarySpaceMonitor`$toJSON()
      }
      if (!is.null(self$`hudson.node_monitors.DiskSpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.DiskSpaceMonitor"]] <-
          self$`hudson.node_monitors.DiskSpaceMonitor`$toJSON()
      }
      if (!is.null(self$`hudson.node_monitors.ArchitectureMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ArchitectureMonitor"]] <-
          self$`hudson.node_monitors.ArchitectureMonitor`
      }
      if (!is.null(self$`hudson.node_monitors.ResponseTimeMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ResponseTimeMonitor"]] <-
          self$`hudson.node_monitors.ResponseTimeMonitor`$toJSON()
      }
      if (!is.null(self$`hudson.node_monitors.ClockMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ClockMonitor"]] <-
          self$`hudson.node_monitors.ClockMonitor`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        HudsonMasterComputermonitorDataObject[["_class"]] <-
          self$`_class`
      }
      HudsonMasterComputermonitorDataObject
    },
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputermonitorData
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hudson.node_monitors.SwapSpaceMonitor`)) {
        `hudson.node_monitors.swapspacemonitor_object` <- SwapSpaceMonitorMemoryUsage2$new()
        `hudson.node_monitors.swapspacemonitor_object`$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.SwapSpaceMonitor`, auto_unbox = TRUE, digits = NA))
        self$`hudson.node_monitors.SwapSpaceMonitor` <- `hudson.node_monitors.swapspacemonitor_object`
      }
      if (!is.null(this_object$`hudson.node_monitors.TemporarySpaceMonitor`)) {
        `hudson.node_monitors.temporaryspacemonitor_object` <- DiskSpaceMonitorDescriptorDiskSpace$new()
        `hudson.node_monitors.temporaryspacemonitor_object`$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.TemporarySpaceMonitor`, auto_unbox = TRUE, digits = NA))
        self$`hudson.node_monitors.TemporarySpaceMonitor` <- `hudson.node_monitors.temporaryspacemonitor_object`
      }
      if (!is.null(this_object$`hudson.node_monitors.DiskSpaceMonitor`)) {
        `hudson.node_monitors.diskspacemonitor_object` <- DiskSpaceMonitorDescriptorDiskSpace$new()
        `hudson.node_monitors.diskspacemonitor_object`$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.DiskSpaceMonitor`, auto_unbox = TRUE, digits = NA))
        self$`hudson.node_monitors.DiskSpaceMonitor` <- `hudson.node_monitors.diskspacemonitor_object`
      }
      if (!is.null(this_object$`hudson.node_monitors.ArchitectureMonitor`)) {
        self$`hudson.node_monitors.ArchitectureMonitor` <- this_object$`hudson.node_monitors.ArchitectureMonitor`
      }
      if (!is.null(this_object$`hudson.node_monitors.ResponseTimeMonitor`)) {
        `hudson.node_monitors.responsetimemonitor_object` <- ResponseTimeMonitorData$new()
        `hudson.node_monitors.responsetimemonitor_object`$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.ResponseTimeMonitor`, auto_unbox = TRUE, digits = NA))
        self$`hudson.node_monitors.ResponseTimeMonitor` <- `hudson.node_monitors.responsetimemonitor_object`
      }
      if (!is.null(this_object$`hudson.node_monitors.ClockMonitor`)) {
        `hudson.node_monitors.clockmonitor_object` <- ClockDifference$new()
        `hudson.node_monitors.clockmonitor_object`$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.ClockMonitor`, auto_unbox = TRUE, digits = NA))
        self$`hudson.node_monitors.ClockMonitor` <- `hudson.node_monitors.clockmonitor_object`
      }
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return HudsonMasterComputermonitorData in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`hudson.node_monitors.SwapSpaceMonitor`)) {
          sprintf(
          '"hudson.node_monitors.SwapSpaceMonitor":
          %s
          ',
          jsonlite::toJSON(self$`hudson.node_monitors.SwapSpaceMonitor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`hudson.node_monitors.TemporarySpaceMonitor`)) {
          sprintf(
          '"hudson.node_monitors.TemporarySpaceMonitor":
          %s
          ',
          jsonlite::toJSON(self$`hudson.node_monitors.TemporarySpaceMonitor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`hudson.node_monitors.DiskSpaceMonitor`)) {
          sprintf(
          '"hudson.node_monitors.DiskSpaceMonitor":
          %s
          ',
          jsonlite::toJSON(self$`hudson.node_monitors.DiskSpaceMonitor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`hudson.node_monitors.ArchitectureMonitor`)) {
          sprintf(
          '"hudson.node_monitors.ArchitectureMonitor":
            "%s"
                    ',
          self$`hudson.node_monitors.ArchitectureMonitor`
          )
        },
        if (!is.null(self$`hudson.node_monitors.ResponseTimeMonitor`)) {
          sprintf(
          '"hudson.node_monitors.ResponseTimeMonitor":
          %s
          ',
          jsonlite::toJSON(self$`hudson.node_monitors.ResponseTimeMonitor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`hudson.node_monitors.ClockMonitor`)) {
          sprintf(
          '"hudson.node_monitors.ClockMonitor":
          %s
          ',
          jsonlite::toJSON(self$`hudson.node_monitors.ClockMonitor`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`_class`)) {
          sprintf(
          '"_class":
            "%s"
                    ',
          self$`_class`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputermonitorData
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hudson.node_monitors.SwapSpaceMonitor` <- SwapSpaceMonitorMemoryUsage2$new()$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.SwapSpaceMonitor`, auto_unbox = TRUE, digits = NA))
      self$`hudson.node_monitors.TemporarySpaceMonitor` <- DiskSpaceMonitorDescriptorDiskSpace$new()$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.TemporarySpaceMonitor`, auto_unbox = TRUE, digits = NA))
      self$`hudson.node_monitors.DiskSpaceMonitor` <- DiskSpaceMonitorDescriptorDiskSpace$new()$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.DiskSpaceMonitor`, auto_unbox = TRUE, digits = NA))
      self$`hudson.node_monitors.ArchitectureMonitor` <- this_object$`hudson.node_monitors.ArchitectureMonitor`
      self$`hudson.node_monitors.ResponseTimeMonitor` <- ResponseTimeMonitorData$new()$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.ResponseTimeMonitor`, auto_unbox = TRUE, digits = NA))
      self$`hudson.node_monitors.ClockMonitor` <- ClockDifference$new()$fromJSON(jsonlite::toJSON(this_object$`hudson.node_monitors.ClockMonitor`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to HudsonMasterComputermonitorData
    #'
    #' @description
    #' Validate JSON input with respect to HudsonMasterComputermonitorData and throw an exception if invalid
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
    #' @return String representation of HudsonMasterComputermonitorData
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
# HudsonMasterComputermonitorData$unlock()
#
## Below is an example to define the print function
# HudsonMasterComputermonitorData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HudsonMasterComputermonitorData$lock()

