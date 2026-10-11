#' Create a new SwapSpaceMonitorMemoryUsage2
#'
#' @description
#' SwapSpaceMonitorMemoryUsage2 Class
#'
#' @docType class
#' @title SwapSpaceMonitorMemoryUsage2
#' @description SwapSpaceMonitorMemoryUsage2 Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field availablePhysicalMemory  integer [optional]
#' @field availableSwapSpace  integer [optional]
#' @field totalPhysicalMemory  integer [optional]
#' @field totalSwapSpace  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SwapSpaceMonitorMemoryUsage2 <- R6::R6Class(
  "SwapSpaceMonitorMemoryUsage2",
  public = list(
    `_class` = NULL,
    `availablePhysicalMemory` = NULL,
    `availableSwapSpace` = NULL,
    `totalPhysicalMemory` = NULL,
    `totalSwapSpace` = NULL,

    #' @description
    #' Initialize a new SwapSpaceMonitorMemoryUsage2 class.
    #'
    #' @param _class _class
    #' @param availablePhysicalMemory availablePhysicalMemory
    #' @param availableSwapSpace availableSwapSpace
    #' @param totalPhysicalMemory totalPhysicalMemory
    #' @param totalSwapSpace totalSwapSpace
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `availablePhysicalMemory` = NULL, `availableSwapSpace` = NULL, `totalPhysicalMemory` = NULL, `totalSwapSpace` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`availablePhysicalMemory`)) {
        if (!(is.numeric(`availablePhysicalMemory`) && length(`availablePhysicalMemory`) == 1)) {
          stop(paste("Error! Invalid data for `availablePhysicalMemory`. Must be an integer:", `availablePhysicalMemory`))
        }
        self$`availablePhysicalMemory` <- `availablePhysicalMemory`
      }
      if (!is.null(`availableSwapSpace`)) {
        if (!(is.numeric(`availableSwapSpace`) && length(`availableSwapSpace`) == 1)) {
          stop(paste("Error! Invalid data for `availableSwapSpace`. Must be an integer:", `availableSwapSpace`))
        }
        self$`availableSwapSpace` <- `availableSwapSpace`
      }
      if (!is.null(`totalPhysicalMemory`)) {
        if (!(is.numeric(`totalPhysicalMemory`) && length(`totalPhysicalMemory`) == 1)) {
          stop(paste("Error! Invalid data for `totalPhysicalMemory`. Must be an integer:", `totalPhysicalMemory`))
        }
        self$`totalPhysicalMemory` <- `totalPhysicalMemory`
      }
      if (!is.null(`totalSwapSpace`)) {
        if (!(is.numeric(`totalSwapSpace`) && length(`totalSwapSpace`) == 1)) {
          stop(paste("Error! Invalid data for `totalSwapSpace`. Must be an integer:", `totalSwapSpace`))
        }
        self$`totalSwapSpace` <- `totalSwapSpace`
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
    #' @return SwapSpaceMonitorMemoryUsage2 as a base R list.
    #' @examples
    #' # convert array of SwapSpaceMonitorMemoryUsage2 (x) to a data frame
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
    #' Convert SwapSpaceMonitorMemoryUsage2 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SwapSpaceMonitorMemoryUsage2Object <- list()
      if (!is.null(self$`_class`)) {
        SwapSpaceMonitorMemoryUsage2Object[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`availablePhysicalMemory`)) {
        SwapSpaceMonitorMemoryUsage2Object[["availablePhysicalMemory"]] <-
          self$`availablePhysicalMemory`
      }
      if (!is.null(self$`availableSwapSpace`)) {
        SwapSpaceMonitorMemoryUsage2Object[["availableSwapSpace"]] <-
          self$`availableSwapSpace`
      }
      if (!is.null(self$`totalPhysicalMemory`)) {
        SwapSpaceMonitorMemoryUsage2Object[["totalPhysicalMemory"]] <-
          self$`totalPhysicalMemory`
      }
      if (!is.null(self$`totalSwapSpace`)) {
        SwapSpaceMonitorMemoryUsage2Object[["totalSwapSpace"]] <-
          self$`totalSwapSpace`
      }
      return(SwapSpaceMonitorMemoryUsage2Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of SwapSpaceMonitorMemoryUsage2
    #'
    #' @param input_json the JSON input
    #' @return the instance of SwapSpaceMonitorMemoryUsage2
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`availablePhysicalMemory`)) {
        self$`availablePhysicalMemory` <- this_object$`availablePhysicalMemory`
      }
      if (!is.null(this_object$`availableSwapSpace`)) {
        self$`availableSwapSpace` <- this_object$`availableSwapSpace`
      }
      if (!is.null(this_object$`totalPhysicalMemory`)) {
        self$`totalPhysicalMemory` <- this_object$`totalPhysicalMemory`
      }
      if (!is.null(this_object$`totalSwapSpace`)) {
        self$`totalSwapSpace` <- this_object$`totalSwapSpace`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SwapSpaceMonitorMemoryUsage2 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SwapSpaceMonitorMemoryUsage2
    #'
    #' @param input_json the JSON input
    #' @return the instance of SwapSpaceMonitorMemoryUsage2
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`availablePhysicalMemory` <- this_object$`availablePhysicalMemory`
      self$`availableSwapSpace` <- this_object$`availableSwapSpace`
      self$`totalPhysicalMemory` <- this_object$`totalPhysicalMemory`
      self$`totalSwapSpace` <- this_object$`totalSwapSpace`
      self
    },

    #' @description
    #' Validate JSON input with respect to SwapSpaceMonitorMemoryUsage2 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SwapSpaceMonitorMemoryUsage2
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
# SwapSpaceMonitorMemoryUsage2$unlock()
#
## Below is an example to define the print function
# SwapSpaceMonitorMemoryUsage2$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SwapSpaceMonitorMemoryUsage2$lock()

