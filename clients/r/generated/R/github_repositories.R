#' Create a new GithubRepositories
#'
#' @description
#' GithubRepositories Class
#'
#' @docType class
#' @title GithubRepositories
#' @description GithubRepositories Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{GithubRepositorieslinks} [optional]
#' @field items  list(\link{GithubRepository}) [optional]
#' @field lastPage  integer [optional]
#' @field nextPage  integer [optional]
#' @field pageSize  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubRepositories <- R6::R6Class(
  "GithubRepositories",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `items` = NULL,
    `lastPage` = NULL,
    `nextPage` = NULL,
    `pageSize` = NULL,
    #' Initialize a new GithubRepositories class.
    #'
    #' @description
    #' Initialize a new GithubRepositories class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param items items
    #' @param lastPage lastPage
    #' @param nextPage nextPage
    #' @param pageSize pageSize
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `items` = NULL, `lastPage` = NULL, `nextPage` = NULL, `pageSize` = NULL, ...) {
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
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!is.null(`lastPage`)) {
        if (!(is.numeric(`lastPage`) && length(`lastPage`) == 1)) {
          stop(paste("Error! Invalid data for `lastPage`. Must be an integer:", `lastPage`))
        }
        self$`lastPage` <- `lastPage`
      }
      if (!is.null(`nextPage`)) {
        if (!(is.numeric(`nextPage`) && length(`nextPage`) == 1)) {
          stop(paste("Error! Invalid data for `nextPage`. Must be an integer:", `nextPage`))
        }
        self$`nextPage` <- `nextPage`
      }
      if (!is.null(`pageSize`)) {
        if (!(is.numeric(`pageSize`) && length(`pageSize`) == 1)) {
          stop(paste("Error! Invalid data for `pageSize`. Must be an integer:", `pageSize`))
        }
        self$`pageSize` <- `pageSize`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubRepositories in JSON format
    #' @export
    toJSON = function() {
      GithubRepositoriesObject <- list()
      if (!is.null(self$`_class`)) {
        GithubRepositoriesObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        GithubRepositoriesObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`items`)) {
        GithubRepositoriesObject[["items"]] <-
          lapply(self$`items`, function(x) x$toJSON())
      }
      if (!is.null(self$`lastPage`)) {
        GithubRepositoriesObject[["lastPage"]] <-
          self$`lastPage`
      }
      if (!is.null(self$`nextPage`)) {
        GithubRepositoriesObject[["nextPage"]] <-
          self$`nextPage`
      }
      if (!is.null(self$`pageSize`)) {
        GithubRepositoriesObject[["pageSize"]] <-
          self$`pageSize`
      }
      GithubRepositoriesObject
    },
    #' Deserialize JSON string into an instance of GithubRepositories
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepositories
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositories
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- GithubRepositorieslinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[GithubRepository]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`lastPage`)) {
        self$`lastPage` <- this_object$`lastPage`
      }
      if (!is.null(this_object$`nextPage`)) {
        self$`nextPage` <- this_object$`nextPage`
      }
      if (!is.null(this_object$`pageSize`)) {
        self$`pageSize` <- this_object$`pageSize`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubRepositories in JSON format
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
        if (!is.null(self$`items`)) {
          sprintf(
          '"items":
          [%s]
',
          paste(sapply(self$`items`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`lastPage`)) {
          sprintf(
          '"lastPage":
            %d
                    ',
          self$`lastPage`
          )
        },
        if (!is.null(self$`nextPage`)) {
          sprintf(
          '"nextPage":
            %d
                    ',
          self$`nextPage`
          )
        },
        if (!is.null(self$`pageSize`)) {
          sprintf(
          '"pageSize":
            %d
                    ',
          self$`pageSize`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GithubRepositories
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubRepositories
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubRepositories
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- GithubRepositorieslinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[GithubRepository]", loadNamespace("openapi"))
      self$`lastPage` <- this_object$`lastPage`
      self$`nextPage` <- this_object$`nextPage`
      self$`pageSize` <- this_object$`pageSize`
      self
    },
    #' Validate JSON input with respect to GithubRepositories
    #'
    #' @description
    #' Validate JSON input with respect to GithubRepositories and throw an exception if invalid
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
    #' @return String representation of GithubRepositories
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
# GithubRepositories$unlock()
#
## Below is an example to define the print function
# GithubRepositories$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubRepositories$lock()

