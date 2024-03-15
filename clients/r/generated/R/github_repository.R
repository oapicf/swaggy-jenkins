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
    #' Initialize a new GithubRepository class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubRepository in JSON format
    #' @export
    toJSON = function() {
      GithubRepositoryObject <- list()
      if (!is.null(self$`_class`)) {
        GithubRepositoryObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubRepositoryObject[["_links"]] <-
          self$`_links`$toJSON()
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
          self$`permissions`$toJSON()
      }
      if (!is.null(self$`item_private`)) {
        GithubRepositoryObject[["private"]] <-
          self$`item_private`
      }
      if (!is.null(self$`fullName`)) {
        GithubRepositoryObject[["fullName"]] <-
          self$`fullName`
      }
      GithubRepositoryObject
    },
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepository
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubRepository in JSON format
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
        if (!is.null(self$`defaultBranch`)) {
          sprintf(
          '"defaultBranch":
            "%s"
                    ',
          self$`defaultBranch`
          )
        },
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`permissions`)) {
          sprintf(
          '"permissions":
          %s
          ',
          jsonlite::toJSON(self$`permissions`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`item_private`)) {
          sprintf(
          '"private":
            %s
                    ',
          tolower(self$`item_private`)
          )
        },
        if (!is.null(self$`fullName`)) {
          sprintf(
          '"fullName":
            "%s"
                    ',
          self$`fullName`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepository
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepository
    #' @export
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
    #' Validate JSON input with respect to GithubRepository
    #'
    #' @description
    #' Validate JSON input with respect to GithubRepository and throw an exception if invalid
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
    #' @return String representation of GithubRepository
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
# GithubRepository$unlock()
#
## Below is an example to define the print function
# GithubRepository$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepository$lock()

