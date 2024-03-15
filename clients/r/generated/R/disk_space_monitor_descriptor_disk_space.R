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
    #' Initialize a new DiskSpaceMonitorDescriptorDiskSpace class.
    #'
    #' @description
    #' Initialize a new DiskSpaceMonitorDescriptorDiskSpace class.
    #'
    #' @param _class _class
    #' @param timestamp timestamp
    #' @param path path
    #' @param size size
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DiskSpaceMonitorDescriptorDiskSpace in JSON format
    #' @export
    toJSON = function() {
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
      DiskSpaceMonitorDescriptorDiskSpaceObject
    },
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @description
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiskSpaceMonitorDescriptorDiskSpace
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return DiskSpaceMonitorDescriptorDiskSpace in JSON format
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
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            %d
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
          )
        },
        if (!is.null(self$`size`)) {
          sprintf(
          '"size":
            %d
                    ',
          self$`size`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @description
    #' Deserialize JSON string into an instance of DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @param input_json the JSON input
    #' @return the instance of DiskSpaceMonitorDescriptorDiskSpace
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`timestamp` <- this_object$`timestamp`
      self$`path` <- this_object$`path`
      self$`size` <- this_object$`size`
      self
    },
    #' Validate JSON input with respect to DiskSpaceMonitorDescriptorDiskSpace
    #'
    #' @description
    #' Validate JSON input with respect to DiskSpaceMonitorDescriptorDiskSpace and throw an exception if invalid
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
    #' @return String representation of DiskSpaceMonitorDescriptorDiskSpace
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
# DiskSpaceMonitorDescriptorDiskSpace$unlock()
#
## Below is an example to define the print function
# DiskSpaceMonitorDescriptorDiskSpace$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DiskSpaceMonitorDescriptorDiskSpace$lock()

