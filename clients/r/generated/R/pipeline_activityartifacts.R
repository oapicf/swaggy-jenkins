#' Create a new PipelineActivityartifacts
#'
#' @description
#' PipelineActivityartifacts Class
#'
#' @docType class
#' @title PipelineActivityartifacts
#' @description PipelineActivityartifacts Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field size  integer [optional]
#' @field url  character [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineActivityartifacts <- R6::R6Class(
  "PipelineActivityartifacts",
  public = list(
    `name` = NULL,
    `size` = NULL,
    `url` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineActivityartifacts class.
    #'
    #' @description
    #' Initialize a new PipelineActivityartifacts class.
    #'
    #' @param name name
    #' @param size size
    #' @param url url
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `size` = NULL, `url` = NULL, `_class` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
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
    #' @return PipelineActivityartifacts in JSON format
    #' @export
    toJSON = function() {
      PipelineActivityartifactsObject <- list()
      if (!is.null(self$`name`)) {
        PipelineActivityartifactsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`size`)) {
        PipelineActivityartifactsObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`url`)) {
        PipelineActivityartifactsObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`_class`)) {
        PipelineActivityartifactsObject[["_class"]] <-
          self$`_class`
      }
      PipelineActivityartifactsObject
    },
    #' Deserialize JSON string into an instance of PipelineActivityartifacts
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineActivityartifacts
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineActivityartifacts
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
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
    #' @return PipelineActivityartifacts in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`size`)) {
          sprintf(
          '"size":
            %d
                    ',
          self$`size`
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
    #' Deserialize JSON string into an instance of PipelineActivityartifacts
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineActivityartifacts
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineActivityartifacts
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`size` <- this_object$`size`
      self$`url` <- this_object$`url`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineActivityartifacts
    #'
    #' @description
    #' Validate JSON input with respect to PipelineActivityartifacts and throw an exception if invalid
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
    #' @return String representation of PipelineActivityartifacts
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
# PipelineActivityartifacts$unlock()
#
## Below is an example to define the print function
# PipelineActivityartifacts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineActivityartifacts$lock()

