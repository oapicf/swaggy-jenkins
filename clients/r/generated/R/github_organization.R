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
    #' Initialize a new GithubOrganization class.
    #'
    #' @description
    #' Initialize a new GithubOrganization class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param jenkinsOrganizationPipeline jenkinsOrganizationPipeline
    #' @param name name
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubOrganization in JSON format
    #' @export
    toJSON = function() {
      GithubOrganizationObject <- list()
      if (!is.null(self$`_class`)) {
        GithubOrganizationObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubOrganizationObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`jenkinsOrganizationPipeline`)) {
        GithubOrganizationObject[["jenkinsOrganizationPipeline"]] <-
          self$`jenkinsOrganizationPipeline`
      }
      if (!is.null(self$`name`)) {
        GithubOrganizationObject[["name"]] <-
          self$`name`
      }
      GithubOrganizationObject
    },
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganization
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubOrganization in JSON format
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
        if (!is.null(self$`_links`)) {
          sprintf(
          '"_links":
          %s
          ',
          jsonlite::toJSON(self$`_links`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`jenkinsOrganizationPipeline`)) {
          sprintf(
          '"jenkinsOrganizationPipeline":
            %s
                    ',
          tolower(self$`jenkinsOrganizationPipeline`)
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubOrganization
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubOrganization
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubOrganizationlinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`jenkinsOrganizationPipeline` <- this_object$`jenkinsOrganizationPipeline`
      self$`name` <- this_object$`name`
      self
    },
    #' Validate JSON input with respect to GithubOrganization
    #'
    #' @description
    #' Validate JSON input with respect to GithubOrganization and throw an exception if invalid
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
    #' @return String representation of GithubOrganization
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
# GithubOrganization$unlock()
#
## Below is an example to define the print function
# GithubOrganization$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubOrganization$lock()

