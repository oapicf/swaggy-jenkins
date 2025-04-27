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
    #' @return HudsonMasterComputermonitorData as a base R list.
    #' @examples
    #' # convert array of HudsonMasterComputermonitorData (x) to a data frame
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
    #' Convert HudsonMasterComputermonitorData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HudsonMasterComputermonitorDataObject <- list()
      if (!is.null(self$`hudson.node_monitors.SwapSpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.SwapSpaceMonitor"]] <-
          self$`hudson.node_monitors.SwapSpaceMonitor`$toSimpleType()
      }
      if (!is.null(self$`hudson.node_monitors.TemporarySpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.TemporarySpaceMonitor"]] <-
          self$`hudson.node_monitors.TemporarySpaceMonitor`$toSimpleType()
      }
      if (!is.null(self$`hudson.node_monitors.DiskSpaceMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.DiskSpaceMonitor"]] <-
          self$`hudson.node_monitors.DiskSpaceMonitor`$toSimpleType()
      }
      if (!is.null(self$`hudson.node_monitors.ArchitectureMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ArchitectureMonitor"]] <-
          self$`hudson.node_monitors.ArchitectureMonitor`
      }
      if (!is.null(self$`hudson.node_monitors.ResponseTimeMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ResponseTimeMonitor"]] <-
          self$`hudson.node_monitors.ResponseTimeMonitor`$toSimpleType()
      }
      if (!is.null(self$`hudson.node_monitors.ClockMonitor`)) {
        HudsonMasterComputermonitorDataObject[["hudson.node_monitors.ClockMonitor"]] <-
          self$`hudson.node_monitors.ClockMonitor`$toSimpleType()
      }
      if (!is.null(self$`_class`)) {
        HudsonMasterComputermonitorDataObject[["_class"]] <-
          self$`_class`
      }
      return(HudsonMasterComputermonitorDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputermonitorData
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return HudsonMasterComputermonitorData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of HudsonMasterComputermonitorData
    #'
    #' @param input_json the JSON input
    #' @return the instance of HudsonMasterComputermonitorData
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

    #' @description
    #' Validate JSON input with respect to HudsonMasterComputermonitorData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HudsonMasterComputermonitorData
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
# HudsonMasterComputermonitorData$unlock()
#
## Below is an example to define the print function
# HudsonMasterComputermonitorData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HudsonMasterComputermonitorData$lock()

