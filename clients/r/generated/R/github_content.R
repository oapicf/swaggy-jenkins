#' Create a new GithubContent
#'
#' @description
#' GithubContent Class
#'
#' @docType class
#' @title GithubContent
#' @description GithubContent Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field sha  character [optional]
#' @field _class  character [optional]
#' @field repo  character [optional]
#' @field size  integer [optional]
#' @field owner  character [optional]
#' @field path  character [optional]
#' @field base64Data  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GithubContent <- R6::R6Class(
  "GithubContent",
  public = list(
    `name` = NULL,
    `sha` = NULL,
    `_class` = NULL,
    `repo` = NULL,
    `size` = NULL,
    `owner` = NULL,
    `path` = NULL,
    `base64Data` = NULL,
    #' Initialize a new GithubContent class.
    #'
    #' @description
    #' Initialize a new GithubContent class.
    #'
    #' @param name name
    #' @param sha sha
    #' @param _class _class
    #' @param repo repo
    #' @param size size
    #' @param owner owner
    #' @param path path
    #' @param base64Data base64Data
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`name` = NULL, `sha` = NULL, `_class` = NULL, `repo` = NULL, `size` = NULL, `owner` = NULL, `path` = NULL, `base64Data` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`sha`)) {
        if (!(is.character(`sha`) && length(`sha`) == 1)) {
          stop(paste("Error! Invalid data for `sha`. Must be a string:", `sha`))
        }
        self$`sha` <- `sha`
      }
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`repo`)) {
        if (!(is.character(`repo`) && length(`repo`) == 1)) {
          stop(paste("Error! Invalid data for `repo`. Must be a string:", `repo`))
        }
        self$`repo` <- `repo`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`owner`)) {
        if (!(is.character(`owner`) && length(`owner`) == 1)) {
          stop(paste("Error! Invalid data for `owner`. Must be a string:", `owner`))
        }
        self$`owner` <- `owner`
      }
      if (!is.null(`path`)) {
        if (!(is.character(`path`) && length(`path`) == 1)) {
          stop(paste("Error! Invalid data for `path`. Must be a string:", `path`))
        }
        self$`path` <- `path`
      }
      if (!is.null(`base64Data`)) {
        if (!(is.character(`base64Data`) && length(`base64Data`) == 1)) {
          stop(paste("Error! Invalid data for `base64Data`. Must be a string:", `base64Data`))
        }
        self$`base64Data` <- `base64Data`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubContent in JSON format
    #' @export
    toJSON = function() {
      GithubContentObject <- list()
      if (!is.null(self$`name`)) {
        GithubContentObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`sha`)) {
        GithubContentObject[["sha"]] <-
          self$`sha`
      }
      if (!is.null(self$`_class`)) {
        GithubContentObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`repo`)) {
        GithubContentObject[["repo"]] <-
          self$`repo`
      }
      if (!is.null(self$`size`)) {
        GithubContentObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`owner`)) {
        GithubContentObject[["owner"]] <-
          self$`owner`
      }
      if (!is.null(self$`path`)) {
        GithubContentObject[["path"]] <-
          self$`path`
      }
      if (!is.null(self$`base64Data`)) {
        GithubContentObject[["base64Data"]] <-
          self$`base64Data`
      }
      GithubContentObject
    },
    #' Deserialize JSON string into an instance of GithubContent
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubContent
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`sha`)) {
        self$`sha` <- this_object$`sha`
      }
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`repo`)) {
        self$`repo` <- this_object$`repo`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`owner`)) {
        self$`owner` <- this_object$`owner`
      }
      if (!is.null(this_object$`path`)) {
        self$`path` <- this_object$`path`
      }
      if (!is.null(this_object$`base64Data`)) {
        self$`base64Data` <- this_object$`base64Data`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GithubContent in JSON format
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
        if (!is.null(self$`sha`)) {
          sprintf(
          '"sha":
            "%s"
                    ',
          self$`sha`
          )
        },
        if (!is.null(self$`_class`)) {
          sprintf(
          '"_class":
            "%s"
                    ',
          self$`_class`
          )
        },
        if (!is.null(self$`repo`)) {
          sprintf(
          '"repo":
            "%s"
                    ',
          self$`repo`
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
        if (!is.null(self$`owner`)) {
          sprintf(
          '"owner":
            "%s"
                    ',
          self$`owner`
          )
        },
        if (!is.null(self$`path`)) {
          sprintf(
          '"path":
            "%s"
                    ',
          self$`path`
          )
        },
        if (!is.null(self$`base64Data`)) {
          sprintf(
          '"base64Data":
            "%s"
                    ',
          self$`base64Data`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GithubContent
    #'
    #' @description
    #' Deserialize JSON string into an instance of GithubContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of GithubContent
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`sha` <- this_object$`sha`
      self$`_class` <- this_object$`_class`
      self$`repo` <- this_object$`repo`
      self$`size` <- this_object$`size`
      self$`owner` <- this_object$`owner`
      self$`path` <- this_object$`path`
      self$`base64Data` <- this_object$`base64Data`
      self
    },
    #' Validate JSON input with respect to GithubContent
    #'
    #' @description
    #' Validate JSON input with respect to GithubContent and throw an exception if invalid
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
    #' @return String representation of GithubContent
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
# GithubContent$unlock()
#
## Below is an example to define the print function
# GithubContent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GithubContent$lock()

