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
    #' Initialize a new PipelineBranchesitempullRequest class.
    #'
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
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineBranchesitempullRequest in JSON format
    #' @export
    toJSON = function() {
      PipelineBranchesitempullRequestObject <- list()
      if (!is.null(self$`_links`)) {
        PipelineBranchesitempullRequestObject[["_links"]] <-
          self$`_links`$toJSON()
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
      PipelineBranchesitempullRequestObject
    },
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequest
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return PipelineBranchesitempullRequest in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`_links`)) {
          sprintf(
          '"_links":
          %s
          ',
          jsonlite::toJSON(self$`_links`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`author`)) {
          sprintf(
          '"author":
            "%s"
                    ',
          self$`author`
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        },
        if (!is.null(self$`_class`)) {
          sprintf(
          '"_class":
            "%s"
                    ',
          self$`_class`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitempullRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitempullRequest
    #' @export
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
    #' Validate JSON input with respect to PipelineBranchesitempullRequest
    #'
    #' @description
    #' Validate JSON input with respect to PipelineBranchesitempullRequest and throw an exception if invalid
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
    #' @return String representation of PipelineBranchesitempullRequest
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
# PipelineBranchesitempullRequest$unlock()
#
## Below is an example to define the print function
# PipelineBranchesitempullRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineBranchesitempullRequest$lock()

