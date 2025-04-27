#' Create a new DiskSpaceMonitorDescriptorDiskSpace
#'
#' @description
#' DiskSpaceMonitorDescriptorDiskSpace Class
#'
#' @docType class
#' @title DiskSpaceMonitorDescriptorDiskSpace
#' @description DiskSpaceMonitorDescriptorDiskSpace Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field timestamp  integer [optional]
#' @field path  character [optional]
#' @field size  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DiskSpaceMonitorDescriptorDiskSpace <- R6::R6Class(
  "DiskSpaceMonitorDescriptorDiskSpace",
  public = list(
    `_class` = NULL,
    `timestamp` = NULL,
    `path` = NULL,
    `size` = NULL,

    #' @description
    #' Initialize a new DiskSpaceMonitorDescriptorDiskSpace class.
    #'
    #' @param _class _class
    #' @param timestamp timestamp
    #' @param path path
    #' @param size size
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `timestamp` = NULL, `path` = NULL, `size` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.numeric(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be an integer:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
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
    #' @return DiskSpaceMonitorDescriptorDiskSpace as a base R list.
    #' @examples
    #' # convert array of DiskSpaceMonitorDescriptorDiskSpace (x) to a data frame
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
    #' Convert DiskSpaceMonitorDescriptorDiskSpace to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DiskSpaceMonitorDescriptorDiskSpaceObject <- list()
      if (!is.null(self$`_class`)) {
        DiskSpaceMonitorDescriptorDiskSpaceObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`timestamp`)) {
        DiskSpaceMonitorDescriptorDiskSpaceObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`path`)) {
        DiskSpaceMonitorDescriptorDiskSpaceObject[["path"]] <-
          self$`path`
      }
      if (!is.null(self$`size`)) {
        DiskSpaceMonitorDescriptorDiskSpaceObject[["size"]] <-
          self$`size`
      }
      return(DiskSpaceMonitorDescriptorDiskSpaceObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiskSpaceMonitorDescriptorDiskSpace
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DiskSpaceMonitorDescriptorDiskSpace in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiskSpaceMonitorDescriptorDiskSpace
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`timestamp` <- this_object$`timestamp`
      self$`path` <- this_object$`path`
      self$`size` <- this_object$`size`
      self
    },

    #' @description
    #' Validate JSON input with respect to DiskSpaceMonitorDescriptorDiskSpace and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DiskSpaceMonitorDescriptorDiskSpace
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
# DiskSpaceMonitorDescriptorDiskSpace$unlock()
#
## Below is an example to define the print function
# DiskSpaceMonitorDescriptorDiskSpace$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DiskSpaceMonitorDescriptorDiskSpace$lock()

