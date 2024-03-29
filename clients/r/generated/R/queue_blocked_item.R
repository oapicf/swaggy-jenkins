#' Create a new QueueBlockedItem
#'
#' @description
#' QueueBlockedItem Class
#'
#' @docType class
#' @title QueueBlockedItem
#' @description QueueBlockedItem Class
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
#' @field buildableStartMilliseconds  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueueBlockedItem <- R6::R6Class(
  "QueueBlockedItem",
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
    `buildableStartMilliseconds` = NULL,
    #' Initialize a new QueueBlockedItem class.
    #'
    #' @description
    #' Initialize a new QueueBlockedItem class.
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
    #' @param buildableStartMilliseconds buildableStartMilliseconds
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `actions` = NULL, `blocked` = NULL, `buildable` = NULL, `id` = NULL, `inQueueSince` = NULL, `params` = NULL, `stuck` = NULL, `task` = NULL, `url` = NULL, `why` = NULL, `buildableStartMilliseconds` = NULL, ...) {
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
      if (!is.null(`buildableStartMilliseconds`)) {
        if (!(is.numeric(`buildableStartMilliseconds`) && length(`buildableStartMilliseconds`) == 1)) {
          stop(paste("Error! Invalid data for `buildableStartMilliseconds`. Must be an integer:", `buildableStartMilliseconds`))
        }
        self$`buildableStartMilliseconds` <- `buildableStartMilliseconds`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QueueBlockedItem in JSON format
    #' @export
    toJSON = function() {
      QueueBlockedItemObject <- list()
      if (!is.null(self$`_class`)) {
        QueueBlockedItemObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`actions`)) {
        QueueBlockedItemObject[["actions"]] <-
          lapply(self$`actions`, function(x) x$toJSON())
      }
      if (!is.null(self$`blocked`)) {
        QueueBlockedItemObject[["blocked"]] <-
          self$`blocked`
      }
      if (!is.null(self$`buildable`)) {
        QueueBlockedItemObject[["buildable"]] <-
          self$`buildable`
      }
      if (!is.null(self$`id`)) {
        QueueBlockedItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`inQueueSince`)) {
        QueueBlockedItemObject[["inQueueSince"]] <-
          self$`inQueueSince`
      }
      if (!is.null(self$`params`)) {
        QueueBlockedItemObject[["params"]] <-
          self$`params`
      }
      if (!is.null(self$`stuck`)) {
        QueueBlockedItemObject[["stuck"]] <-
          self$`stuck`
      }
      if (!is.null(self$`task`)) {
        QueueBlockedItemObject[["task"]] <-
          self$`task`$toJSON()
      }
      if (!is.null(self$`url`)) {
        QueueBlockedItemObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`why`)) {
        QueueBlockedItemObject[["why"]] <-
          self$`why`
      }
      if (!is.null(self$`buildableStartMilliseconds`)) {
        QueueBlockedItemObject[["buildableStartMilliseconds"]] <-
          self$`buildableStartMilliseconds`
      }
      QueueBlockedItemObject
    },
    #' Deserialize JSON string into an instance of QueueBlockedItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of QueueBlockedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueBlockedItem
    #' @export
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
      if (!is.null(this_object$`buildableStartMilliseconds`)) {
        self$`buildableStartMilliseconds` <- this_object$`buildableStartMilliseconds`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return QueueBlockedItem in JSON format
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
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
          [%s]
',
          paste(sapply(self$`actions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`blocked`)) {
          sprintf(
          '"blocked":
            %s
                    ',
          tolower(self$`blocked`)
          )
        },
        if (!is.null(self$`buildable`)) {
          sprintf(
          '"buildable":
            %s
                    ',
          tolower(self$`buildable`)
          )
        },
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`inQueueSince`)) {
          sprintf(
          '"inQueueSince":
            %d
                    ',
          self$`inQueueSince`
          )
        },
        if (!is.null(self$`params`)) {
          sprintf(
          '"params":
            "%s"
                    ',
          self$`params`
          )
        },
        if (!is.null(self$`stuck`)) {
          sprintf(
          '"stuck":
            %s
                    ',
          tolower(self$`stuck`)
          )
        },
        if (!is.null(self$`task`)) {
          sprintf(
          '"task":
          %s
          ',
          jsonlite::toJSON(self$`task`$toJSON(), auto_unbox = TRUE, digits = NA)
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
        if (!is.null(self$`why`)) {
          sprintf(
          '"why":
            "%s"
                    ',
          self$`why`
          )
        },
        if (!is.null(self$`buildableStartMilliseconds`)) {
          sprintf(
          '"buildableStartMilliseconds":
            %d
                    ',
          self$`buildableStartMilliseconds`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of QueueBlockedItem
    #'
    #' @description
    #' Deserialize JSON string into an instance of QueueBlockedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueueBlockedItem
    #' @export
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
      self$`buildableStartMilliseconds` <- this_object$`buildableStartMilliseconds`
      self
    },
    #' Validate JSON input with respect to QueueBlockedItem
    #'
    #' @description
    #' Validate JSON input with respect to QueueBlockedItem and throw an exception if invalid
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
    #' @return String representation of QueueBlockedItem
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
# QueueBlockedItem$unlock()
#
## Below is an example to define the print function
# QueueBlockedItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueueBlockedItem$lock()

