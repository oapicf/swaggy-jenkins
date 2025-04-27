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
    #' @return PipelineBranchesitem as a base R list.
    #' @examples
    #' # convert array of PipelineBranchesitem (x) to a data frame
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
    #' Convert PipelineBranchesitem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
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
          self$`latestRun`$toSimpleType()
      }
      if (!is.null(self$`organization`)) {
        PipelineBranchesitemObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`pullRequest`)) {
        PipelineBranchesitemObject[["pullRequest"]] <-
          self$`pullRequest`$toSimpleType()
      }
      if (!is.null(self$`totalNumberOfPullRequests`)) {
        PipelineBranchesitemObject[["totalNumberOfPullRequests"]] <-
          self$`totalNumberOfPullRequests`
      }
      if (!is.null(self$`_class`)) {
        PipelineBranchesitemObject[["_class"]] <-
          self$`_class`
      }
      return(PipelineBranchesitemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitem
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

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PipelineBranchesitem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PipelineBranchesitem
    #'
    #' @param input_json the JSON input
    #' @return the instance of PipelineBranchesitem
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

    #' @description
    #' Validate JSON input with respect to PipelineBranchesitem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PipelineBranchesitem
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
# PipelineBranchesitem$unlock()
#
## Below is an example to define the print function
# PipelineBranchesitem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PipelineBranchesitem$lock()

