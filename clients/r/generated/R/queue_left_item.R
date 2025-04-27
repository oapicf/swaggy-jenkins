#' Create a new QueueLeftItem
#'
#' @description
#' QueueLeftItem Class
#'
#' @docType class
#' @title QueueLeftItem
#' @description QueueLeftItem Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field actions  list(\link{CauseAction}) [optional]
#' @field blocked  character [optional]
#' @field buildable  character [optional]
#' @field id  integer [optional]
#' @field inQueueSince  integer [optional]
#' @field params  character [optional]
#' @field stuck  character [optional]
#' @field task  \link{FreeStyleProject} [optional]
#' @field url  character [optional]
#' @field why  character [optional]
#' @field cancelled  character [optional]
#' @field executable  \link{FreeStyleBuild} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueueLeftItem <- R6::R6Class(
  "QueueLeftItem",
  public = list(
    `_class` = NULL,
    `actions` = NULL,
    `blocked` = NULL,
    `buildable` = NULL,
    `id` = NULL,
    `inQueueSince` = NULL,
    `params` = NULL,
    `stuck` = NULL,
    `task` = NULL,
    `url` = NULL,
    `why` = NULL,
    `cancelled` = NULL,
    `executable` = NULL,

    #' @description
    #' Initialize a new QueueLeftItem class.
    #'
    #' @param _class _class
    #' @param actions actions
    #' @param blocked blocked
    #' @param buildable buildable
    #' @param id id
    #' @param inQueueSince inQueueSince
    #' @param params params
    #' @param stuck stuck
    #' @param task task
    #' @param url url
    #' @param why why
    #' @param cancelled cancelled
    #' @param executable executable
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `actions` = NULL, `blocked` = NULL, `buildable` = NULL, `id` = NULL, `inQueueSince` = NULL, `params` = NULL, `stuck` = NULL, `task` = NULL, `url` = NULL, `why` = NULL, `cancelled` = NULL, `executable` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`actions`)) {
        stopifnot(is.vector(`actions`), length(`actions`) != 0)
        sapply(`actions`, function(x) stopifnot(R6::is.R6(x)))
        self$`actions` <- `actions`
      }
      if (!is.null(`blocked`)) {
        if (!(is.logical(`blocked`) && length(`blocked`) == 1)) {
          stop(paste("Error! Invalid data for `blocked`. Must be a boolean:", `blocked`))
        }
        self$`blocked` <- `blocked`
      }
      if (!is.null(`buildable`)) {
        if (!(is.logical(`buildable`) && length(`buildable`) == 1)) {
          stop(paste("Error! Invalid data for `buildable`. Must be a boolean:", `buildable`))
        }
        self$`buildable` <- `buildable`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`inQueueSince`)) {
        if (!(is.numeric(`inQueueSince`) && length(`inQueueSince`) == 1)) {
          stop(paste("Error! Invalid data for `inQueueSince`. Must be an integer:", `inQueueSince`))
        }
        self$`inQueueSince` <- `inQueueSince`
      }
      if (!is.null(`params`)) {
        if (!(is.character(`params`) && length(`params`) == 1)) {
          stop(paste("Error! Invalid data for `params`. Must be a string:", `params`))
        }
        self$`params` <- `params`
      }
      if (!is.null(`stuck`)) {
        if (!(is.logical(`stuck`) && length(`stuck`) == 1)) {
          stop(paste("Error! Invalid data for `stuck`. Must be a boolean:", `stuck`))
        }
        self$`stuck` <- `stuck`
      }
      if (!is.null(`task`)) {
        stopifnot(R6::is.R6(`task`))
        self$`task` <- `task`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`why`)) {
        if (!(is.character(`why`) && length(`why`) == 1)) {
          stop(paste("Error! Invalid data for `why`. Must be a string:", `why`))
        }
        self$`why` <- `why`
      }
      if (!is.null(`cancelled`)) {
        if (!(is.logical(`cancelled`) && length(`cancelled`) == 1)) {
          stop(paste("Error! Invalid data for `cancelled`. Must be a boolean:", `cancelled`))
        }
        self$`cancelled` <- `cancelled`
      }
      if (!is.null(`executable`)) {
        stopifnot(R6::is.R6(`executable`))
        self$`executable` <- `executable`
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
    #' @return QueueLeftItem as a base R list.
    #' @examples
    #' # convert array of QueueLeftItem (x) to a data frame
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
    #' Convert QueueLeftItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QueueLeftItemObject <- list()
      if (!is.null(self$`_class`)) {
        QueueLeftItemObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`actions`)) {
        QueueLeftItemObject[["actions"]] <-
          lapply(self$`actions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`blocked`)) {
        QueueLeftItemObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`buildable`)) {
        QueueLeftItemObject[["buildable"]] <-
          self$`buildable`
      }
      if (!is.null(self$`id`)) {
        QueueLeftItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`inQueueSince`)) {
        QueueLeftItemObject[["inQueueSince"]] <-
          self$`inQueueSince`
      }
      if (!is.null(self$`params`)) {
        QueueLeftItemObject[["params"]] <-
          self$`params`
      }
      if (!is.null(self$`stuck`)) {
        QueueLeftItemObject[["stuck"]] <-
          self$`stuck`
      }
      if (!is.null(self$`task`)) {
        QueueLeftItemObject[["task"]] <-
          self$`task`$toSimpleType()
      }
      if (!is.null(self$`url`)) {
        QueueLeftItemObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`why`)) {
        QueueLeftItemObject[["why"]] <-
          self$`why`
      }
      if (!is.null(self$`cancelled`)) {
        QueueLeftItemObject[["cancelled"]] <-
          self$`cancelled`
      }
      if (!is.null(self$`executable`)) {
        QueueLeftItemObject[["executable"]] <-
          self$`executable`$toSimpleType()
      }
      return(QueueLeftItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueLeftItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueLeftItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`actions`)) {
        self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[CauseAction]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`blocked`)) {
        self$`blocked` <- this_object$`blocked`
      }
      if (!is.null(this_object$`buildable`)) {
        self$`buildable` <- this_object$`buildable`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`inQueueSince`)) {
        self$`inQueueSince` <- this_object$`inQueueSince`
      }
      if (!is.null(this_object$`params`)) {
        self$`params` <- this_object$`params`
      }
      if (!is.null(this_object$`stuck`)) {
        self$`stuck` <- this_object$`stuck`
      }
      if (!is.null(this_object$`task`)) {
        `task_object` <- FreeStyleProject$new()
        `task_object`$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
        self$`task` <- `task_object`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`why`)) {
        self$`why` <- this_object$`why`
      }
      if (!is.null(this_object$`cancelled`)) {
        self$`cancelled` <- this_object$`cancelled`
      }
      if (!is.null(this_object$`executable`)) {
        `executable_object` <- FreeStyleBuild$new()
        `executable_object`$fromJSON(jsonlite::toJSON(this_object$`executable`, auto_unbox = TRUE, digits = NA))
        self$`executable` <- `executable_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QueueLeftItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QueueLeftItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueLeftItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[CauseAction]", loadNamespace("openapi"))
      self$`blocked` <- this_object$`blocked`
      self$`buildable` <- this_object$`buildable`
      self$`id` <- this_object$`id`
      self$`inQueueSince` <- this_object$`inQueueSince`
      self$`params` <- this_object$`params`
      self$`stuck` <- this_object$`stuck`
      self$`task` <- FreeStyleProject$new()$fromJSON(jsonlite::toJSON(this_object$`task`, auto_unbox = TRUE, digits = NA))
      self$`url` <- this_object$`url`
      self$`why` <- this_object$`why`
      self$`cancelled` <- this_object$`cancelled`
      self$`executable` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`executable`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QueueLeftItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QueueLeftItem
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
# QueueLeftItem$unlock()
#
## Below is an example to define the print function
# QueueLeftItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueueLeftItem$lock()

