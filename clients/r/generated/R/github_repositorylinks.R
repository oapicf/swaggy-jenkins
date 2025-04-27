#' Create a new GithubRepositorylinks
#'
#' @description
#' GithubRepositorylinks Class
#'
#' @docType class
#' @title GithubRepositorylinks
#' @description GithubRepositorylinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepositorylinks <- R6::R6Class(
  "GithubRepositorylinks",
  public = list(
    `item_self` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new GithubRepositorylinks class.
    #'
    #' @param item_self item_self
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `_class` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
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
    #' @return GithubRepositorylinks as a base R list.
    #' @examples
    #' # convert array of GithubRepositorylinks (x) to a data frame
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
    #' Convert GithubRepositorylinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubRepositorylinksObject <- list()
      if (!is.null(self$`item_self`)) {
        GithubRepositorylinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`_class`)) {
        GithubRepositorylinksObject[["_class"]] <-
          self$`_class`
      }
      return(GithubRepositorylinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorylinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorylinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- Link$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
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
    #' @return GithubRepositorylinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepositorylinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositorylinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubRepositorylinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubRepositorylinks
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
# GithubRepositorylinks$unlock()
#
## Below is an example to define the print function
# GithubRepositorylinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepositorylinks$lock()

