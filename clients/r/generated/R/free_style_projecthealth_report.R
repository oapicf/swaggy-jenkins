#' Create a new FreeStyleProjecthealthReport
#'
#' @description
#' FreeStyleProjecthealthReport Class
#'
#' @docType class
#' @title FreeStyleProjecthealthReport
#' @description FreeStyleProjecthealthReport Class
#' @format An \code{R6Class} generator object
#' @field description  character [optional]
#' @field iconClassName  character [optional]
#' @field iconUrl  character [optional]
#' @field score  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FreeStyleProjecthealthReport <- R6::R6Class(
  "FreeStyleProjecthealthReport",
  public = list(
    `description` = NULL,
    `iconClassName` = NULL,
    `iconUrl` = NULL,
    `score` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new FreeStyleProjecthealthReport class.
    #'
    #' @param description description
    #' @param iconClassName iconClassName
    #' @param iconUrl iconUrl
    #' @param score score
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `iconClassName` = NULL, `iconUrl` = NULL, `score` = NULL, `_class` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`iconClassName`)) {
        if (!(is.character(`iconClassName`) && length(`iconClassName`) == 1)) {
          stop(paste("Error! Invalid data for `iconClassName`. Must be a string:", `iconClassName`))
        }
        self$`iconClassName` <- `iconClassName`
      }
      if (!is.null(`iconUrl`)) {
        if (!(is.character(`iconUrl`) && length(`iconUrl`) == 1)) {
          stop(paste("Error! Invalid data for `iconUrl`. Must be a string:", `iconUrl`))
        }
        self$`iconUrl` <- `iconUrl`
      }
      if (!is.null(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
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
    #' @return FreeStyleProjecthealthReport as a base R list.
    #' @examples
    #' # convert array of FreeStyleProjecthealthReport (x) to a data frame
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
    #' Convert FreeStyleProjecthealthReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FreeStyleProjecthealthReportObject <- list()
      if (!is.null(self$`description`)) {
        FreeStyleProjecthealthReportObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`iconClassName`)) {
        FreeStyleProjecthealthReportObject[["iconClassName"]] <-
          self$`iconClassName`
      }
      if (!is.null(self$`iconUrl`)) {
        FreeStyleProjecthealthReportObject[["iconUrl"]] <-
          self$`iconUrl`
      }
      if (!is.null(self$`score`)) {
        FreeStyleProjecthealthReportObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`_class`)) {
        FreeStyleProjecthealthReportObject[["_class"]] <-
          self$`_class`
      }
      return(FreeStyleProjecthealthReportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProjecthealthReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`iconClassName`)) {
        self$`iconClassName` <- this_object$`iconClassName`
      }
      if (!is.null(this_object$`iconUrl`)) {
        self$`iconUrl` <- this_object$`iconUrl`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
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
    #' @return FreeStyleProjecthealthReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProjecthealthReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProjecthealthReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- this_object$`description`
      self$`iconClassName` <- this_object$`iconClassName`
      self$`iconUrl` <- this_object$`iconUrl`
      self$`score` <- this_object$`score`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to FreeStyleProjecthealthReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FreeStyleProjecthealthReport
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
# FreeStyleProjecthealthReport$unlock()
#
## Below is an example to define the print function
# FreeStyleProjecthealthReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FreeStyleProjecthealthReport$lock()

