#' Create a new ListView
#'
#' @description
#' ListView Class
#'
#' @docType class
#' @title ListView
#' @description ListView Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field description  character [optional]
#' @field jobs  list(\link{FreeStyleProject}) [optional]
#' @field name  character [optional]
#' @field url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListView <- R6::R6Class(
  "ListView",
  public = list(
    `_class` = NULL,
    `description` = NULL,
    `jobs` = NULL,
    `name` = NULL,
    `url` = NULL,
    #' Initialize a new ListView class.
    #'
    #' @description
    #' Initialize a new ListView class.
    #'
    #' @param _class _class
    #' @param description description
    #' @param jobs jobs
    #' @param name name
    #' @param url url
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `description` = NULL, `jobs` = NULL, `name` = NULL, `url` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`jobs`)) {
        stopifnot(is.vector(`jobs`), length(`jobs`) != 0)
        sapply(`jobs`, function(x) stopifnot(R6::is.R6(x)))
        self$`jobs` <- `jobs`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListView in JSON format
    #' @export
    toJSON = function() {
      ListViewObject <- list()
      if (!is.null(self$`_class`)) {
        ListViewObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`description`)) {
        ListViewObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`jobs`)) {
        ListViewObject[["jobs"]] <-
          lapply(self$`jobs`, function(x) x$toJSON())
      }
      if (!is.null(self$`name`)) {
        ListViewObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`url`)) {
        ListViewObject[["url"]] <-
          self$`url`
      }
      ListViewObject
    },
    #' Deserialize JSON string into an instance of ListView
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListView
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListView
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`jobs`)) {
        self$`jobs` <- ApiClient$new()$deserializeObj(this_object$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ListView in JSON format
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
        if (!is.null(self$`description`)) {
          sprintf(
          '"description":
            "%s"
                    ',
          self$`description`
          )
        },
        if (!is.null(self$`jobs`)) {
          sprintf(
          '"jobs":
          [%s]
',
          paste(sapply(self$`jobs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
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
        if (!is.null(self$`url`)) {
          sprintf(
          '"url":
            "%s"
                    ',
          self$`url`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ListView
    #'
    #' @description
    #' Deserialize JSON string into an instance of ListView
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListView
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`description` <- this_object$`description`
      self$`jobs` <- ApiClient$new()$deserializeObj(this_object$`jobs`, "array[FreeStyleProject]", loadNamespace("openapi"))
      self$`name` <- this_object$`name`
      self$`url` <- this_object$`url`
      self
    },
    #' Validate JSON input with respect to ListView
    #'
    #' @description
    #' Validate JSON input with respect to ListView and throw an exception if invalid
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
    #' @return String representation of ListView
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
# ListView$unlock()
#
## Below is an example to define the print function
# ListView$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ListView$lock()

