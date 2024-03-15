#' Create a new GithubScm
#'
#' @description
#' GithubScm Class
#'
#' @docType class
#' @title GithubScm
#' @description GithubScm Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{GithubScmlinks} [optional]
#' @field credentialId  character [optional]
#' @field id  character [optional]
#' @field uri  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubScm <- R6::R6Class(
  "GithubScm",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `credentialId` = NULL,
    `id` = NULL,
    `uri` = NULL,
    #' Initialize a new GithubScm class.
    #'
    #' @description
    #' Initialize a new GithubScm class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param credentialId credentialId
    #' @param id id
    #' @param uri uri
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `credentialId` = NULL, `id` = NULL, `uri` = NULL, ...) {
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
      if (!is.null(`credentialId`)) {
        if (!(is.character(`credentialId`) && length(`credentialId`) == 1)) {
          stop(paste("Error! Invalid data for `credentialId`. Must be a string:", `credentialId`))
        }
        self$`credentialId` <- `credentialId`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`uri`)) {
        if (!(is.character(`uri`) && length(`uri`) == 1)) {
          stop(paste("Error! Invalid data for `uri`. Must be a string:", `uri`))
        }
        self$`uri` <- `uri`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubScm in JSON format
    #' @export
    toJSON = function() {
      GithubScmObject <- list()
      if (!is.null(self$`_class`)) {
        GithubScmObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubScmObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`credentialId`)) {
        GithubScmObject[["credentialId"]] <-
          self$`credentialId`
      }
      if (!is.null(self$`id`)) {
        GithubScmObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`uri`)) {
        GithubScmObject[["uri"]] <-
          self$`uri`
      }
      GithubScmObject
    },
    #' Deserialize JSON string into an instance of GithubScm
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubScm
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubScm
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- GithubScmlinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`credentialId`)) {
        self$`credentialId` <- this_object$`credentialId`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`uri`)) {
        self$`uri` <- this_object$`uri`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubScm in JSON format
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
        if (!is.null(self$`credentialId`)) {
          sprintf(
          '"credentialId":
            "%s"
                    ',
          self$`credentialId`
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
        if (!is.null(self$`uri`)) {
          sprintf(
          '"uri":
            "%s"
                    ',
          self$`uri`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GithubScm
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubScm
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubScm
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubScmlinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`credentialId` <- this_object$`credentialId`
      self$`id` <- this_object$`id`
      self$`uri` <- this_object$`uri`
      self
    },
    #' Validate JSON input with respect to GithubScm
    #'
    #' @description
    #' Validate JSON input with respect to GithubScm and throw an exception if invalid
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
    #' @return String representation of GithubScm
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
# GithubScm$unlock()
#
## Below is an example to define the print function
# GithubScm$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubScm$lock()

