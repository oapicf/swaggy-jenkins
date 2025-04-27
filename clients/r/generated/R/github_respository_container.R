#' Create a new GithubRespositoryContainer
#'
#' @description
#' GithubRespositoryContainer Class
#'
#' @docType class
#' @title GithubRespositoryContainer
#' @description GithubRespositoryContainer Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{GithubRespositoryContainerlinks} [optional]
#' @field repositories  \link{GithubRepositories} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRespositoryContainer <- R6::R6Class(
  "GithubRespositoryContainer",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `repositories` = NULL,

    #' @description
    #' Initialize a new GithubRespositoryContainer class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param repositories repositories
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `repositories` = NULL, ...) {
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
      if (!is.null(`repositories`)) {
        stopifnot(R6::is.R6(`repositories`))
        self$`repositories` <- `repositories`
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
    #' @return GithubRespositoryContainer as a base R list.
    #' @examples
    #' # convert array of GithubRespositoryContainer (x) to a data frame
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
    #' Convert GithubRespositoryContainer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubRespositoryContainerObject <- list()
      if (!is.null(self$`_class`)) {
        GithubRespositoryContainerObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubRespositoryContainerObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`repositories`)) {
        GithubRespositoryContainerObject[["repositories"]] <-
          self$`repositories`$toSimpleType()
      }
      return(GithubRespositoryContainerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRespositoryContainer
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRespositoryContainer
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- GithubRespositoryContainerlinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`repositories`)) {
        `repositories_object` <- GithubRepositories$new()
        `repositories_object`$fromJSON(jsonlite::toJSON(this_object$`repositories`, auto_unbox = TRUE, digits = NA))
        self$`repositories` <- `repositories_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GithubRespositoryContainer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRespositoryContainer
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRespositoryContainer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubRespositoryContainerlinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`repositories` <- GithubRepositories$new()$fromJSON(jsonlite::toJSON(this_object$`repositories`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubRespositoryContainer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubRespositoryContainer
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
# GithubRespositoryContainer$unlock()
#
## Below is an example to define the print function
# GithubRespositoryContainer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRespositoryContainer$lock()

