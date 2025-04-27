#' Create a new PipelineBranchesitempullRequest
#'
#' @description
#' PipelineBranchesitempullRequest Class
#'
#' @docType class
#' @title PipelineBranchesitempullRequest
#' @description PipelineBranchesitempullRequest Class
#' @format An \code{R6Class} generator object
#' @field _links  \link{PipelineBranchesitempullRequestlinks} [optional]
#' @field author  character [optional]
#' @field id  character [optional]
#' @field title  character [optional]
#' @field url  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineBranchesitempullRequest <- R6::R6Class(
  "PipelineBranchesitempullRequest",
  public = list(
    `_links` = NULL,
    `author` = NULL,
    `id` = NULL,
    `title` = NULL,
    `url` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new PipelineBranchesitempullRequest class.
    #'
    #' @param _links _links
    #' @param author author
    #' @param id id
    #' @param title title
    #' @param url url
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`_links` = NULL, `author` = NULL, `id` = NULL, `title` = NULL, `url` = NULL, `_class` = NULL, ...) {
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`author`)) {
        if (!(is.character(`author`) && length(`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", `author`))
        }
        self$`author` <- `author`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
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
    #' @return PipelineBranchesitempullRequest as a base R list.
    #' @examples
    #' # convert array of PipelineBranchesitempullRequest (x) to a data frame
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
    #' Convert PipelineBranchesitempullRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PipelineBranchesitempullRequestObject <- list()
      if (!is.null(self$`_links`)) {
        PipelineBranchesitempullRequestObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`author`)) {
        PipelineBranchesitempullRequestObject[["author"]] <-
          self$`author`
      }
      if (!is.null(self$`id`)) {
        PipelineBranchesitempullRequestObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        PipelineBranchesitempullRequestObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`url`)) {
        PipelineBranchesitempullRequestObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`_class`)) {
        PipelineBranchesitempullRequestObject[["_class"]] <-
          self$`_class`
      }
      return(PipelineBranchesitempullRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- PipelineBranchesitempullRequestlinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`author`)) {
        self$`author` <- this_object$`author`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
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
    #' @return PipelineBranchesitempullRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_links` <- PipelineBranchesitempullRequestlinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`author` <- this_object$`author`
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`url` <- this_object$`url`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to PipelineBranchesitempullRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineBranchesitempullRequest
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
# PipelineBranchesitempullRequest$unlock()
#
## Below is an example to define the print function
# PipelineBranchesitempullRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineBranchesitempullRequest$lock()

