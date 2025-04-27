#' Create a new GithubRepository
#'
#' @description
#' GithubRepository Class
#'
#' @docType class
#' @title GithubRepository
#' @description GithubRepository Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{GithubRepositorylinks} [optional]
#' @field defaultBranch  character [optional]
#' @field description  character [optional]
#' @field name  character [optional]
#' @field permissions  \link{GithubRepositorypermissions} [optional]
#' @field item_private  character [optional]
#' @field fullName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepository <- R6::R6Class(
  "GithubRepository",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `defaultBranch` = NULL,
    `description` = NULL,
    `name` = NULL,
    `permissions` = NULL,
    `item_private` = NULL,
    `fullName` = NULL,

    #' @description
    #' Initialize a new GithubRepository class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param defaultBranch defaultBranch
    #' @param description description
    #' @param name name
    #' @param permissions permissions
    #' @param item_private item_private
    #' @param fullName fullName
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `_links` = NULL, `defaultBranch` = NULL, `description` = NULL, `name` = NULL, `permissions` = NULL, `item_private` = NULL, `fullName` = NULL, ...) {
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
      if (!is.null(`defaultBranch`)) {
        if (!(is.character(`defaultBranch`) && length(`defaultBranch`) == 1)) {
          stop(paste("Error! Invalid data for `defaultBranch`. Must be a string:", `defaultBranch`))
        }
        self$`defaultBranch` <- `defaultBranch`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`item_private`)) {
        if (!(is.logical(`item_private`) && length(`item_private`) == 1)) {
          stop(paste("Error! Invalid data for `item_private`. Must be a boolean:", `item_private`))
        }
        self$`item_private` <- `item_private`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
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
    #' @return GithubRepository as a base R list.
    #' @examples
    #' # convert array of GithubRepository (x) to a data frame
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
    #' Convert GithubRepository to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GithubRepositoryObject <- list()
      if (!is.null(self$`_class`)) {
        GithubRepositoryObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubRepositoryObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`defaultBranch`)) {
        GithubRepositoryObject[["defaultBranch"]] <-
          self$`defaultBranch`
      }
      if (!is.null(self$`description`)) {
        GithubRepositoryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        GithubRepositoryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`permissions`)) {
        GithubRepositoryObject[["permissions"]] <-
          self$`permissions`$toSimpleType()
      }
      if (!is.null(self$`item_private`)) {
        GithubRepositoryObject[["private"]] <-
          self$`item_private`
      }
      if (!is.null(self$`fullName`)) {
        GithubRepositoryObject[["fullName"]] <-
          self$`fullName`
      }
      return(GithubRepositoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepository
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- GithubRepositorylinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`defaultBranch`)) {
        self$`defaultBranch` <- this_object$`defaultBranch`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- GithubRepositorypermissions$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`private`)) {
        self$`item_private` <- this_object$`private`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GithubRepository in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepository
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubRepositorylinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`defaultBranch` <- this_object$`defaultBranch`
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`permissions` <- GithubRepositorypermissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`item_private` <- this_object$`item_private`
      self$`fullName` <- this_object$`fullName`
      self
    },

    #' @description
    #' Validate JSON input with respect to GithubRepository and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GithubRepository
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
# GithubRepository$unlock()
#
## Below is an example to define the print function
# GithubRepository$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepository$lock()

