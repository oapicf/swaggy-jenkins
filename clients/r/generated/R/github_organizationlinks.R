#' Create a new GithubOrganizationlinks
#'
#' @description
#' GithubOrganizationlinks Class
#'
#' @docType class
#' @title GithubOrganizationlinks
#' @description GithubOrganizationlinks Class
#' @format An \code{R6Class} generator object
#' @field repositories  \link{Link} [optional]
#' @field item_self  \link{Link} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubOrganizationlinks <- R6::R6Class(
  "GithubOrganizationlinks",
  public = list(
    `repositories` = NULL,
    `item_self` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new GithubOrganizationlinks class.
    #'
    #' @param repositories repositories
    #' @param item_self item_self
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`repositories` = NULL, `item_self` = NULL, `_class` = NULL, ...) {
      if (!is.null(`repositories`)) {
        stopifnot(R6::is.R6(`repositories`))
        self$`repositories` <- `repositories`
      }
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
    #' @return GithubOrganizationlinks as a base R list.
    #' @examples
    #' # convert array of GithubOrganizationlinks (x) to a data frame
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
    #' Convert GithubOrganizationlinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubOrganizationlinksObject <- list()
      if (!is.null(self$`repositories`)) {
        GithubOrganizationlinksObject[["repositories"]] <-
          self$`repositories`$toSimpleType()
      }
      if (!is.null(self$`item_self`)) {
        GithubOrganizationlinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`_class`)) {
        GithubOrganizationlinksObject[["_class"]] <-
          self$`_class`
      }
      return(GithubOrganizationlinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubOrganizationlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganizationlinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`repositories`)) {
        `repositories_object` <- Link$new()
        `repositories_object`$fromJSON(jsonlite::toJSON(this_object$`repositories`, auto_unbox = TRUE, digits = NA))
        self$`repositories` <- `repositories_object`
      }
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
    #' @return GithubOrganizationlinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubOrganizationlinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganizationlinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`repositories` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`repositories`, auto_unbox = TRUE, digits = NA))
      self$`item_self` <- Link$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubOrganizationlinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubOrganizationlinks
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
# GithubOrganizationlinks$unlock()
#
## Below is an example to define the print function
# GithubOrganizationlinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubOrganizationlinks$lock()

