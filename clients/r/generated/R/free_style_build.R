#' Create a new FreeStyleBuild
#'
#' @description
#' FreeStyleBuild Class
#'
#' @docType class
#' @title FreeStyleBuild
#' @description FreeStyleBuild Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field number  integer [optional]
#' @field url  character [optional]
#' @field actions  list(\link{CauseAction}) [optional]
#' @field building  character [optional]
#' @field description  character [optional]
#' @field displayName  character [optional]
#' @field duration  integer [optional]
#' @field estimatedDuration  integer [optional]
#' @field executor  character [optional]
#' @field fullDisplayName  character [optional]
#' @field id  character [optional]
#' @field keepLog  character [optional]
#' @field queueId  integer [optional]
#' @field result  character [optional]
#' @field timestamp  integer [optional]
#' @field builtOn  character [optional]
#' @field changeSet  \link{EmptyChangeLogSet} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FreeStyleBuild <- R6::R6Class(
  "FreeStyleBuild",
  public = list(
    `_class` = NULL,
    `number` = NULL,
    `url` = NULL,
    `actions` = NULL,
    `building` = NULL,
    `description` = NULL,
    `displayName` = NULL,
    `duration` = NULL,
    `estimatedDuration` = NULL,
    `executor` = NULL,
    `fullDisplayName` = NULL,
    `id` = NULL,
    `keepLog` = NULL,
    `queueId` = NULL,
    `result` = NULL,
    `timestamp` = NULL,
    `builtOn` = NULL,
    `changeSet` = NULL,
    #' Initialize a new FreeStyleBuild class.
    #'
    #' @description
    #' Initialize a new FreeStyleBuild class.
    #'
    #' @param _class _class
    #' @param number number
    #' @param url url
    #' @param actions actions
    #' @param building building
    #' @param description description
    #' @param displayName displayName
    #' @param duration duration
    #' @param estimatedDuration estimatedDuration
    #' @param executor executor
    #' @param fullDisplayName fullDisplayName
    #' @param id id
    #' @param keepLog keepLog
    #' @param queueId queueId
    #' @param result result
    #' @param timestamp timestamp
    #' @param builtOn builtOn
    #' @param changeSet changeSet
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`_class` = NULL, `number` = NULL, `url` = NULL, `actions` = NULL, `building` = NULL, `description` = NULL, `displayName` = NULL, `duration` = NULL, `estimatedDuration` = NULL, `executor` = NULL, `fullDisplayName` = NULL, `id` = NULL, `keepLog` = NULL, `queueId` = NULL, `result` = NULL, `timestamp` = NULL, `builtOn` = NULL, `changeSet` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`number`)) {
        if (!(is.numeric(`number`) && length(`number`) == 1)) {
          stop(paste("Error! Invalid data for `number`. Must be an integer:", `number`))
        }
        self$`number` <- `number`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`actions`)) {
        stopifnot(is.vector(`actions`), length(`actions`) != 0)
        sapply(`actions`, function(x) stopifnot(R6::is.R6(x)))
        self$`actions` <- `actions`
      }
      if (!is.null(`building`)) {
        if (!(is.logical(`building`) && length(`building`) == 1)) {
          stop(paste("Error! Invalid data for `building`. Must be a boolean:", `building`))
        }
        self$`building` <- `building`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`duration`)) {
        if (!(is.numeric(`duration`) && length(`duration`) == 1)) {
          stop(paste("Error! Invalid data for `duration`. Must be an integer:", `duration`))
        }
        self$`duration` <- `duration`
      }
      if (!is.null(`estimatedDuration`)) {
        if (!(is.numeric(`estimatedDuration`) && length(`estimatedDuration`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDuration`. Must be an integer:", `estimatedDuration`))
        }
        self$`estimatedDuration` <- `estimatedDuration`
      }
      if (!is.null(`executor`)) {
        if (!(is.character(`executor`) && length(`executor`) == 1)) {
          stop(paste("Error! Invalid data for `executor`. Must be a string:", `executor`))
        }
        self$`executor` <- `executor`
      }
      if (!is.null(`fullDisplayName`)) {
        if (!(is.character(`fullDisplayName`) && length(`fullDisplayName`) == 1)) {
          stop(paste("Error! Invalid data for `fullDisplayName`. Must be a string:", `fullDisplayName`))
        }
        self$`fullDisplayName` <- `fullDisplayName`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`keepLog`)) {
        if (!(is.logical(`keepLog`) && length(`keepLog`) == 1)) {
          stop(paste("Error! Invalid data for `keepLog`. Must be a boolean:", `keepLog`))
        }
        self$`keepLog` <- `keepLog`
      }
      if (!is.null(`queueId`)) {
        if (!(is.numeric(`queueId`) && length(`queueId`) == 1)) {
          stop(paste("Error! Invalid data for `queueId`. Must be an integer:", `queueId`))
        }
        self$`queueId` <- `queueId`
      }
      if (!is.null(`result`)) {
        if (!(is.character(`result`) && length(`result`) == 1)) {
          stop(paste("Error! Invalid data for `result`. Must be a string:", `result`))
        }
        self$`result` <- `result`
      }
      if (!is.null(`timestamp`)) {
        if (!(is.numeric(`timestamp`) && length(`timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be an integer:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`builtOn`)) {
        if (!(is.character(`builtOn`) && length(`builtOn`) == 1)) {
          stop(paste("Error! Invalid data for `builtOn`. Must be a string:", `builtOn`))
        }
        self$`builtOn` <- `builtOn`
      }
      if (!is.null(`changeSet`)) {
        stopifnot(R6::is.R6(`changeSet`))
        self$`changeSet` <- `changeSet`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FreeStyleBuild in JSON format
    #' @export
    toJSON = function() {
      FreeStyleBuildObject <- list()
      if (!is.null(self$`_class`)) {
        FreeStyleBuildObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`number`)) {
        FreeStyleBuildObject[["number"]] <-
          self$`number`
      }
      if (!is.null(self$`url`)) {
        FreeStyleBuildObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`actions`)) {
        FreeStyleBuildObject[["actions"]] <-
          lapply(self$`actions`, function(x) x$toJSON())
      }
      if (!is.null(self$`building`)) {
        FreeStyleBuildObject[["building"]] <-
          self$`building`
      }
      if (!is.null(self$`description`)) {
        FreeStyleBuildObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`displayName`)) {
        FreeStyleBuildObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`duration`)) {
        FreeStyleBuildObject[["duration"]] <-
          self$`duration`
      }
      if (!is.null(self$`estimatedDuration`)) {
        FreeStyleBuildObject[["estimatedDuration"]] <-
          self$`estimatedDuration`
      }
      if (!is.null(self$`executor`)) {
        FreeStyleBuildObject[["executor"]] <-
          self$`executor`
      }
      if (!is.null(self$`fullDisplayName`)) {
        FreeStyleBuildObject[["fullDisplayName"]] <-
          self$`fullDisplayName`
      }
      if (!is.null(self$`id`)) {
        FreeStyleBuildObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`keepLog`)) {
        FreeStyleBuildObject[["keepLog"]] <-
          self$`keepLog`
      }
      if (!is.null(self$`queueId`)) {
        FreeStyleBuildObject[["queueId"]] <-
          self$`queueId`
      }
      if (!is.null(self$`result`)) {
        FreeStyleBuildObject[["result"]] <-
          self$`result`
      }
      if (!is.null(self$`timestamp`)) {
        FreeStyleBuildObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`builtOn`)) {
        FreeStyleBuildObject[["builtOn"]] <-
          self$`builtOn`
      }
      if (!is.null(self$`changeSet`)) {
        FreeStyleBuildObject[["changeSet"]] <-
          self$`changeSet`$toJSON()
      }
      FreeStyleBuildObject
    },
    #' Deserialize JSON string into an instance of FreeStyleBuild
    #'
    #' @description
    #' Deserialize JSON string into an instance of FreeStyleBuild
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleBuild
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`number`)) {
        self$`number` <- this_object$`number`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`actions`)) {
        self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[CauseAction]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`building`)) {
        self$`building` <- this_object$`building`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`duration`)) {
        self$`duration` <- this_object$`duration`
      }
      if (!is.null(this_object$`estimatedDuration`)) {
        self$`estimatedDuration` <- this_object$`estimatedDuration`
      }
      if (!is.null(this_object$`executor`)) {
        self$`executor` <- this_object$`executor`
      }
      if (!is.null(this_object$`fullDisplayName`)) {
        self$`fullDisplayName` <- this_object$`fullDisplayName`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`keepLog`)) {
        self$`keepLog` <- this_object$`keepLog`
      }
      if (!is.null(this_object$`queueId`)) {
        self$`queueId` <- this_object$`queueId`
      }
      if (!is.null(this_object$`result`)) {
        self$`result` <- this_object$`result`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`builtOn`)) {
        self$`builtOn` <- this_object$`builtOn`
      }
      if (!is.null(this_object$`changeSet`)) {
        `changeset_object` <- EmptyChangeLogSet$new()
        `changeset_object`$fromJSON(jsonlite::toJSON(this_object$`changeSet`, auto_unbox = TRUE, digits = NA))
        self$`changeSet` <- `changeset_object`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return FreeStyleBuild in JSON format
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
        if (!is.null(self$`number`)) {
          sprintf(
          '"number":
            %d
                    ',
          self$`number`
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
        if (!is.null(self$`actions`)) {
          sprintf(
          '"actions":
          [%s]
',
          paste(sapply(self$`actions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`building`)) {
          sprintf(
          '"building":
            %s
                    ',
          tolower(self$`building`)
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
        if (!is.null(self$`displayName`)) {
          sprintf(
          '"displayName":
            "%s"
                    ',
          self$`displayName`
          )
        },
        if (!is.null(self$`duration`)) {
          sprintf(
          '"duration":
            %d
                    ',
          self$`duration`
          )
        },
        if (!is.null(self$`estimatedDuration`)) {
          sprintf(
          '"estimatedDuration":
            %d
                    ',
          self$`estimatedDuration`
          )
        },
        if (!is.null(self$`executor`)) {
          sprintf(
          '"executor":
            "%s"
                    ',
          self$`executor`
          )
        },
        if (!is.null(self$`fullDisplayName`)) {
          sprintf(
          '"fullDisplayName":
            "%s"
                    ',
          self$`fullDisplayName`
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
        if (!is.null(self$`keepLog`)) {
          sprintf(
          '"keepLog":
            %s
                    ',
          tolower(self$`keepLog`)
          )
        },
        if (!is.null(self$`queueId`)) {
          sprintf(
          '"queueId":
            %d
                    ',
          self$`queueId`
          )
        },
        if (!is.null(self$`result`)) {
          sprintf(
          '"result":
            "%s"
                    ',
          self$`result`
          )
        },
        if (!is.null(self$`timestamp`)) {
          sprintf(
          '"timestamp":
            %d
                    ',
          self$`timestamp`
          )
        },
        if (!is.null(self$`builtOn`)) {
          sprintf(
          '"builtOn":
            "%s"
                    ',
          self$`builtOn`
          )
        },
        if (!is.null(self$`changeSet`)) {
          sprintf(
          '"changeSet":
          %s
          ',
          jsonlite::toJSON(self$`changeSet`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of FreeStyleBuild
    #'
    #' @description
    #' Deserialize JSON string into an instance of FreeStyleBuild
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleBuild
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`number` <- this_object$`number`
      self$`url` <- this_object$`url`
      self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[CauseAction]", loadNamespace("openapi"))
      self$`building` <- this_object$`building`
      self$`description` <- this_object$`description`
      self$`displayName` <- this_object$`displayName`
      self$`duration` <- this_object$`duration`
      self$`estimatedDuration` <- this_object$`estimatedDuration`
      self$`executor` <- this_object$`executor`
      self$`fullDisplayName` <- this_object$`fullDisplayName`
      self$`id` <- this_object$`id`
      self$`keepLog` <- this_object$`keepLog`
      self$`queueId` <- this_object$`queueId`
      self$`result` <- this_object$`result`
      self$`timestamp` <- this_object$`timestamp`
      self$`builtOn` <- this_object$`builtOn`
      self$`changeSet` <- EmptyChangeLogSet$new()$fromJSON(jsonlite::toJSON(this_object$`changeSet`, auto_unbox = TRUE, digits = NA))
      self
    },
    #' Validate JSON input with respect to FreeStyleBuild
    #'
    #' @description
    #' Validate JSON input with respect to FreeStyleBuild and throw an exception if invalid
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
    #' @return String representation of FreeStyleBuild
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
# FreeStyleBuild$unlock()
#
## Below is an example to define the print function
# FreeStyleBuild$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FreeStyleBuild$lock()

