#' Create a new PipelineBranchesitem
#'
#' @description
#' PipelineBranchesitem Class
#'
#' @docType class
#' @title PipelineBranchesitem
#' @description PipelineBranchesitem Class
#' @format An \code{R6Class} generator object
#' @field displayName  character [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field name  character [optional]
#' @field weatherScore  integer [optional]
#' @field latestRun  \link{PipelineBranchesitemlatestRun} [optional]
#' @field organization  character [optional]
#' @field pullRequest  \link{PipelineBranchesitempullRequest} [optional]
#' @field totalNumberOfPullRequests  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PipelineBranchesitem <- R6::R6Class(
  "PipelineBranchesitem",
  public = list(
    `displayName` = NULL,
    `estimatedDurationInMillis` = NULL,
    `name` = NULL,
    `weatherScore` = NULL,
    `latestRun` = NULL,
    `organization` = NULL,
    `pullRequest` = NULL,
    `totalNumberOfPullRequests` = NULL,
    `_class` = NULL,
    #' Initialize a new PipelineBranchesitem class.
    #'
    #' @description
    #' Initialize a new PipelineBranchesitem class.
    #'
    #' @param displayName displayName
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param name name
    #' @param weatherScore weatherScore
    #' @param latestRun latestRun
    #' @param organization organization
    #' @param pullRequest pullRequest
    #' @param totalNumberOfPullRequests totalNumberOfPullRequests
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`displayName` = NULL, `estimatedDurationInMillis` = NULL, `name` = NULL, `weatherScore` = NULL, `latestRun` = NULL, `organization` = NULL, `pullRequest` = NULL, `totalNumberOfPullRequests` = NULL, `_class` = NULL, ...) {
      if (!is.null(`displayName`)) {
        if (!(is.character(`displayName`) && length(`displayName`) == 1)) {
          stop(paste("Error! Invalid data for `displayName`. Must be a string:", `displayName`))
        }
        self$`displayName` <- `displayName`
      }
      if (!is.null(`estimatedDurationInMillis`)) {
        if (!(is.numeric(`estimatedDurationInMillis`) && length(`estimatedDurationInMillis`) == 1)) {
          stop(paste("Error! Invalid data for `estimatedDurationInMillis`. Must be an integer:", `estimatedDurationInMillis`))
        }
        self$`estimatedDurationInMillis` <- `estimatedDurationInMillis`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`weatherScore`)) {
        if (!(is.numeric(`weatherScore`) && length(`weatherScore`) == 1)) {
          stop(paste("Error! Invalid data for `weatherScore`. Must be an integer:", `weatherScore`))
        }
        self$`weatherScore` <- `weatherScore`
      }
      if (!is.null(`latestRun`)) {
        stopifnot(R6::is.R6(`latestRun`))
        self$`latestRun` <- `latestRun`
      }
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`pullRequest`)) {
        stopifnot(R6::is.R6(`pullRequest`))
        self$`pullRequest` <- `pullRequest`
      }
      if (!is.null(`totalNumberOfPullRequests`)) {
        if (!(is.numeric(`totalNumberOfPullRequests`) && length(`totalNumberOfPullRequests`) == 1)) {
          stop(paste("Error! Invalid data for `totalNumberOfPullRequests`. Must be an integer:", `totalNumberOfPullRequests`))
        }
        self$`totalNumberOfPullRequests` <- `totalNumberOfPullRequests`
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
    #' @return PipelineBranchesitem in JSON format
    #' @export
    toJSON = function() {
      PipelineBranchesitemObject <- list()
      if (!is.null(self$`displayName`)) {
        PipelineBranchesitemObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        PipelineBranchesitemObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`name`)) {
        PipelineBranchesitemObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`weatherScore`)) {
        PipelineBranchesitemObject[["weatherScore"]] <-
          self$`weatherScore`
      }
      if (!is.null(self$`latestRun`)) {
        PipelineBranchesitemObject[["latestRun"]] <-
          self$`latestRun`$toJSON()
      }
      if (!is.null(self$`organization`)) {
        PipelineBranchesitemObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`pullRequest`)) {
        PipelineBranchesitemObject[["pullRequest"]] <-
          self$`pullRequest`$toJSON()
      }
      if (!is.null(self$`totalNumberOfPullRequests`)) {
        PipelineBranchesitemObject[["totalNumberOfPullRequests"]] <-
          self$`totalNumberOfPullRequests`
      }
      if (!is.null(self$`_class`)) {
        PipelineBranchesitemObject[["_class"]] <-
          self$`_class`
      }
      PipelineBranchesitemObject
    },
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitem
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`weatherScore`)) {
        self$`weatherScore` <- this_object$`weatherScore`
      }
      if (!is.null(this_object$`latestRun`)) {
        `latestrun_object` <- PipelineBranchesitemlatestRun$new()
        `latestrun_object`$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
        self$`latestRun` <- `latestrun_object`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`pullRequest`)) {
        `pullrequest_object` <- PipelineBranchesitempullRequest$new()
        `pullrequest_object`$fromJSON(jsonlite::toJSON(this_object$`pullRequest`, auto_unbox = TRUE, digits = NA))
        self$`pullRequest` <- `pullrequest_object`
      }
      if (!is.null(this_object$`totalNumberOfPullRequests`)) {
        self$`totalNumberOfPullRequests` <- this_object$`totalNumberOfPullRequests`
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
    #' @return PipelineBranchesitem in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`displayName`)) {
          sprintf(
          '"displayName":
            "%s"
                    ',
          self$`displayName`
          )
        },
        if (!is.null(self$`estimatedDurationInMillis`)) {
          sprintf(
          '"estimatedDurationInMillis":
            %d
                    ',
          self$`estimatedDurationInMillis`
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
        if (!is.null(self$`weatherScore`)) {
          sprintf(
          '"weatherScore":
            %d
                    ',
          self$`weatherScore`
          )
        },
        if (!is.null(self$`latestRun`)) {
          sprintf(
          '"latestRun":
          %s
          ',
          jsonlite::toJSON(self$`latestRun`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`organization`)) {
          sprintf(
          '"organization":
            "%s"
                    ',
          self$`organization`
          )
        },
        if (!is.null(self$`pullRequest`)) {
          sprintf(
          '"pullRequest":
          %s
          ',
          jsonlite::toJSON(self$`pullRequest`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`totalNumberOfPullRequests`)) {
          sprintf(
          '"totalNumberOfPullRequests":
            %d
                    ',
          self$`totalNumberOfPullRequests`
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
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitem
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`displayName` <- this_object$`displayName`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`name` <- this_object$`name`
      self$`weatherScore` <- this_object$`weatherScore`
      self$`latestRun` <- PipelineBranchesitemlatestRun$new()$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
      self$`organization` <- this_object$`organization`
      self$`pullRequest` <- PipelineBranchesitempullRequest$new()$fromJSON(jsonlite::toJSON(this_object$`pullRequest`, auto_unbox = TRUE, digits = NA))
      self$`totalNumberOfPullRequests` <- this_object$`totalNumberOfPullRequests`
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to PipelineBranchesitem
    #'
    #' @description
    #' Validate JSON input with respect to PipelineBranchesitem and throw an exception if invalid
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
    #' @return String representation of PipelineBranchesitem
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
# PipelineBranchesitem$unlock()
#
## Below is an example to define the print function
# PipelineBranchesitem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineBranchesitem$lock()

