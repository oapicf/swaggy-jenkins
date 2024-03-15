#' Create a new InputStepImpl
#'
#' @description
#' InputStepImpl Class
#'
#' @docType class
#' @title InputStepImpl
#' @description InputStepImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field _links  \link{InputStepImpllinks} [optional]
#' @field id  character [optional]
#' @field message  character [optional]
#' @field ok  character [optional]
#' @field parameters  list(\link{StringParameterDefinition}) [optional]
#' @field submitter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InputStepImpl <- R6::R6Class(
  "InputStepImpl",
  public = list(
    `_class` = NULL,
    `_links` = NULL,
    `id` = NULL,
    `message` = NULL,
    `ok` = NULL,
    `parameters` = NULL,
    `submitter` = NULL,
    #' Initialize a new InputStepImpl class.
    #'
    #' @description
    #' Initialize a new InputStepImpl class.
    #'
    #' @param _class _class
    #' @param _links _links
    #' @param id id
    #' @param message message
    #' @param ok ok
    #' @param parameters parameters
    #' @param submitter submitter
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `_links` = NULL, `id` = NULL, `message` = NULL, `ok` = NULL, `parameters` = NULL, `submitter` = NULL, ...) {
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
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`ok`)) {
        if (!(is.character(`ok`) && length(`ok`) == 1)) {
          stop(paste("Error! Invalid data for `ok`. Must be a string:", `ok`))
        }
        self$`ok` <- `ok`
      }
      if (!is.null(`parameters`)) {
        stopifnot(is.vector(`parameters`), length(`parameters`) != 0)
        sapply(`parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameters` <- `parameters`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputStepImpl in JSON format
    #' @export
    toJSON = function() {
      InputStepImplObject <- list()
      if (!is.null(self$`_class`)) {
        InputStepImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`_links`)) {
        InputStepImplObject[["_links"]] <-
          self$`_links`$toJSON()
      }
      if (!is.null(self$`id`)) {
        InputStepImplObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`message`)) {
        InputStepImplObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`ok`)) {
        InputStepImplObject[["ok"]] <-
          self$`ok`
      }
      if (!is.null(self$`parameters`)) {
        InputStepImplObject[["parameters"]] <-
          lapply(self$`parameters`, function(x) x$toJSON())
      }
      if (!is.null(self$`submitter`)) {
        InputStepImplObject[["submitter"]] <-
          self$`submitter`
      }
      InputStepImplObject
    },
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStepImpl
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- InputStepImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`ok`)) {
        self$`ok` <- this_object$`ok`
      }
      if (!is.null(this_object$`parameters`)) {
        self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return InputStepImpl in JSON format
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
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            "%s"
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`message`)) {
          sprintf(
          '"message":
            "%s"
                    ',
          self$`message`
          )
        },
        if (!is.null(self$`ok`)) {
          sprintf(
          '"ok":
            "%s"
                    ',
          self$`ok`
          )
        },
        if (!is.null(self$`parameters`)) {
          sprintf(
          '"parameters":
          [%s]
',
          paste(sapply(self$`parameters`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`submitter`)) {
          sprintf(
          '"submitter":
            "%s"
                    ',
          self$`submitter`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @description
    #' Deserialize JSON string into an instance of InputStepImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of InputStepImpl
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`_links` <- InputStepImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`id` <- this_object$`id`
      self$`message` <- this_object$`message`
      self$`ok` <- this_object$`ok`
      self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      self$`submitter` <- this_object$`submitter`
      self
    },
    #' Validate JSON input with respect to InputStepImpl
    #'
    #' @description
    #' Validate JSON input with respect to InputStepImpl and throw an exception if invalid
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
    #' @return String representation of InputStepImpl
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
# InputStepImpl$unlock()
#
## Below is an example to define the print function
# InputStepImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InputStepImpl$lock()

