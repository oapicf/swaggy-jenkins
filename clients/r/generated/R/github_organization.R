#' Create a new GithubOrganization
#'
#' @description
#' GithubOrganization Class
#'
#' @docType class
#' @title GithubOrganization
#' @description GithubOrganization Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{GithubOrganizationlinks} [optional]
#' @field jenkinsOrganizationPipeline  character [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubOrganization <- R6::R6Class(
  "GithubOrganization",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `jenkinsOrganizationPipeline` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new GithubOrganization class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param jenkinsOrganizationPipeline jenkinsOrganizationPipeline
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `jenkinsOrganizationPipeline` = NULL, `name` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`jenkinsOrganizationPipeline`)) {
        if (!(is.logical(`jenkinsOrganizationPipeline`) && length(`jenkinsOrganizationPipeline`) == 1)) {
          stop(paste("Error! Invalid data for `jenkinsOrganizationPipeline`. Must be a boolean:", `jenkinsOrganizationPipeline`))
        }
        self$`jenkinsOrganizationPipeline` <- `jenkinsOrganizationPipeline`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return GithubOrganization as a base R list.
    #' @examples
    #' # convert array of GithubOrganization (x) to a data frame
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
    #' Convert GithubOrganization to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubOrganizationObject <- list()
      if (!is.null(self$`_class`)) {
        GithubOrganizationObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubOrganizationObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`jenkinsOrganizationPipeline`)) {
        GithubOrganizationObject[["jenkinsOrganizationPipeline"]] <-
          self$`jenkinsOrganizationPipeline`
      }
      if (!is.null(self$`name`)) {
        GithubOrganizationObject[["name"]] <-
          self$`name`
      }
      return(GithubOrganizationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganization
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- GithubOrganizationlinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`jenkinsOrganizationPipeline`)) {
        self$`jenkinsOrganizationPipeline` <- this_object$`jenkinsOrganizationPipeline`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GithubOrganization in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganization
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubOrganizationlinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`jenkinsOrganizationPipeline` <- this_object$`jenkinsOrganizationPipeline`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubOrganization and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubOrganization
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
# GithubOrganization$unlock()
#
## Below is an example to define the print function
# GithubOrganization$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubOrganization$lock()

