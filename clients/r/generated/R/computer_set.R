#' Create a new ComputerSet
#'
#' @description
#' ComputerSet Class
#'
#' @docType class
#' @title ComputerSet
#' @description ComputerSet Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field busyExecutors  integer [optional]
#' @field computer  list(\link{HudsonMasterComputer}) [optional]
#' @field displayName  character [optional]
#' @field totalExecutors  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ComputerSet <- R6::R6Class(
  "ComputerSet",
  public = list(
    `_class` = NULL,
    `busyExecutors` = NULL,
    `computer` = NULL,
    `displayName` = NULL,
    `totalExecutors` = NULL,

    #' @description
    #' Initialize a new ComputerSet class.
    #'
    #' @param _class _class
    #' @param busyExecutors busyExecutors
    #' @param computer computer
    #' @param displayName displayName
    #' @param totalExecutors totalExecutors
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `busyExecutors` = NULL, `computer` = NULL, `displayName` = NULL, `totalExecutors` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`busyExecutors`)) {
        if (!(is.numeric(`busyExecutors`) && length(`busyExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `busyExecutors`. Must be an integer:", `busyExecutors`))
        }
        self$`busyExecutors` <- `busyExecutors`
      }
      if (!is.null(`computer`)) {
        stopifnot(is.vector(`computer`), length(`computer`) != 0)
        sapply(`computer`, function(x) stopifnot(R6::is.R6(x)))
        self$`computer` <- `computer`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`totalExecutors`)) {
        if (!(is.numeric(`totalExecutors`) && length(`totalExecutors`) == 1)) {
          stop(paste("Error! Invalid data for `totalExecutors`. Must be an integer:", `totalExecutors`))
        }
        self$`totalExecutors` <- `totalExecutors`
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
    #' @return ComputerSet as a base R list.
    #' @examples
    #' # convert array of ComputerSet (x) to a data frame
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
    #' Convert ComputerSet to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ComputerSetObject <- list()
      if (!is.null(self$`_class`)) {
        ComputerSetObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`busyExecutors`)) {
        ComputerSetObject[["busyExecutors"]] <-
          self$`busyExecutors`
      }
      if (!is.null(self$`computer`)) {
        ComputerSetObject[["computer"]] <-
          lapply(self$`computer`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`displayName`)) {
        ComputerSetObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`totalExecutors`)) {
        ComputerSetObject[["totalExecutors"]] <-
          self$`totalExecutors`
      }
      return(ComputerSetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputerSet
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`busyExecutors`)) {
        self$`busyExecutors` <- this_object$`busyExecutors`
      }
      if (!is.null(this_object$`computer`)) {
        self$`computer` <- ApiClient$new()$deserializeObj(this_object$`computer`, "array[HudsonMasterComputer]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`totalExecutors`)) {
        self$`totalExecutors` <- this_object$`totalExecutors`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ComputerSet in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ComputerSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of ComputerSet
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`busyExecutors` <- this_object$`busyExecutors`
      self$`computer` <- ApiClient$new()$deserializeObj(this_object$`computer`, "array[HudsonMasterComputer]", loadNamespace("openapi"))
      self$`displayName` <- this_object$`displayName`
      self$`totalExecutors` <- this_object$`totalExecutors`
      self
    },

    #' @description
    #' Validate JSON input with respect to ComputerSet and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ComputerSet
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
# ComputerSet$unlock()
#
## Below is an example to define the print function
# ComputerSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ComputerSet$lock()

