#' Create a new MultibranchPipeline
#'
#' @description
#' MultibranchPipeline Class
#'
#' @docType class
#' @title MultibranchPipeline
#' @description MultibranchPipeline Class
#' @format An \code{R6Class} generator object
#' @field displayName  character [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field latestRun  character [optional]
#' @field name  character [optional]
#' @field organization  character [optional]
#' @field weatherScore  integer [optional]
#' @field branchNames  list(character) [optional]
#' @field numberOfFailingBranches  integer [optional]
#' @field numberOfFailingPullRequests  integer [optional]
#' @field numberOfSuccessfulBranches  integer [optional]
#' @field numberOfSuccessfulPullRequests  integer [optional]
#' @field totalNumberOfBranches  integer [optional]
#' @field totalNumberOfPullRequests  integer [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultibranchPipeline <- R6::R6Class(
  "MultibranchPipeline",
  public = list(
    `displayName` = NULL,
    `estimatedDurationInMillis` = NULL,
    `latestRun` = NULL,
    `name` = NULL,
    `organization` = NULL,
    `weatherScore` = NULL,
    `branchNames` = NULL,
    `numberOfFailingBranches` = NULL,
    `numberOfFailingPullRequests` = NULL,
    `numberOfSuccessfulBranches` = NULL,
    `numberOfSuccessfulPullRequests` = NULL,
    `totalNumberOfBranches` = NULL,
    `totalNumberOfPullRequests` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new MultibranchPipeline class.
    #'
    #' @param displayName displayName
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param latestRun latestRun
    #' @param name name
    #' @param organization organization
    #' @param weatherScore weatherScore
    #' @param branchNames branchNames
    #' @param numberOfFailingBranches numberOfFailingBranches
    #' @param numberOfFailingPullRequests numberOfFailingPullRequests
    #' @param numberOfSuccessfulBranches numberOfSuccessfulBranches
    #' @param numberOfSuccessfulPullRequests numberOfSuccessfulPullRequests
    #' @param totalNumberOfBranches totalNumberOfBranches
    #' @param totalNumberOfPullRequests totalNumberOfPullRequests
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`displayName` = NULL, `estimatedDurationInMillis` = NULL, `latestRun` = NULL, `name` = NULL, `organization` = NULL, `weatherScore` = NULL, `branchNames` = NULL, `numberOfFailingBranches` = NULL, `numberOfFailingPullRequests` = NULL, `numberOfSuccessfulBranches` = NULL, `numberOfSuccessfulPullRequests` = NULL, `totalNumberOfBranches` = NULL, `totalNumberOfPullRequests` = NULL, `_class` = NULL, ...) {
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
      if (!is.null(`latestRun`)) {
        if (!(is.character(`latestRun`) && length(`latestRun`) == 1)) {
          stop(paste("Error! Invalid data for `latestRun`. Must be a string:", `latestRun`))
        }
        self$`latestRun` <- `latestRun`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`organization`)) {
        if (!(is.character(`organization`) && length(`organization`) == 1)) {
          stop(paste("Error! Invalid data for `organization`. Must be a string:", `organization`))
        }
        self$`organization` <- `organization`
      }
      if (!is.null(`weatherScore`)) {
        if (!(is.numeric(`weatherScore`) && length(`weatherScore`) == 1)) {
          stop(paste("Error! Invalid data for `weatherScore`. Must be an integer:", `weatherScore`))
        }
        self$`weatherScore` <- `weatherScore`
      }
      if (!is.null(`branchNames`)) {
        stopifnot(is.vector(`branchNames`), length(`branchNames`) != 0)
        sapply(`branchNames`, function(x) stopifnot(is.character(x)))
        self$`branchNames` <- `branchNames`
      }
      if (!is.null(`numberOfFailingBranches`)) {
        if (!(is.numeric(`numberOfFailingBranches`) && length(`numberOfFailingBranches`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFailingBranches`. Must be an integer:", `numberOfFailingBranches`))
        }
        self$`numberOfFailingBranches` <- `numberOfFailingBranches`
      }
      if (!is.null(`numberOfFailingPullRequests`)) {
        if (!(is.numeric(`numberOfFailingPullRequests`) && length(`numberOfFailingPullRequests`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfFailingPullRequests`. Must be an integer:", `numberOfFailingPullRequests`))
        }
        self$`numberOfFailingPullRequests` <- `numberOfFailingPullRequests`
      }
      if (!is.null(`numberOfSuccessfulBranches`)) {
        if (!(is.numeric(`numberOfSuccessfulBranches`) && length(`numberOfSuccessfulBranches`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfSuccessfulBranches`. Must be an integer:", `numberOfSuccessfulBranches`))
        }
        self$`numberOfSuccessfulBranches` <- `numberOfSuccessfulBranches`
      }
      if (!is.null(`numberOfSuccessfulPullRequests`)) {
        if (!(is.numeric(`numberOfSuccessfulPullRequests`) && length(`numberOfSuccessfulPullRequests`) == 1)) {
          stop(paste("Error! Invalid data for `numberOfSuccessfulPullRequests`. Must be an integer:", `numberOfSuccessfulPullRequests`))
        }
        self$`numberOfSuccessfulPullRequests` <- `numberOfSuccessfulPullRequests`
      }
      if (!is.null(`totalNumberOfBranches`)) {
        if (!(is.numeric(`totalNumberOfBranches`) && length(`totalNumberOfBranches`) == 1)) {
          stop(paste("Error! Invalid data for `totalNumberOfBranches`. Must be an integer:", `totalNumberOfBranches`))
        }
        self$`totalNumberOfBranches` <- `totalNumberOfBranches`
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
    #' @return MultibranchPipeline as a base R list.
    #' @examples
    #' # convert array of MultibranchPipeline (x) to a data frame
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
    #' Convert MultibranchPipeline to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MultibranchPipelineObject <- list()
      if (!is.null(self$`displayName`)) {
        MultibranchPipelineObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        MultibranchPipelineObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`latestRun`)) {
        MultibranchPipelineObject[["latestRun"]] <-
          self$`latestRun`
      }
      if (!is.null(self$`name`)) {
        MultibranchPipelineObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organization`)) {
        MultibranchPipelineObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`weatherScore`)) {
        MultibranchPipelineObject[["weatherScore"]] <-
          self$`weatherScore`
      }
      if (!is.null(self$`branchNames`)) {
        MultibranchPipelineObject[["branchNames"]] <-
          self$`branchNames`
      }
      if (!is.null(self$`numberOfFailingBranches`)) {
        MultibranchPipelineObject[["numberOfFailingBranches"]] <-
          self$`numberOfFailingBranches`
      }
      if (!is.null(self$`numberOfFailingPullRequests`)) {
        MultibranchPipelineObject[["numberOfFailingPullRequests"]] <-
          self$`numberOfFailingPullRequests`
      }
      if (!is.null(self$`numberOfSuccessfulBranches`)) {
        MultibranchPipelineObject[["numberOfSuccessfulBranches"]] <-
          self$`numberOfSuccessfulBranches`
      }
      if (!is.null(self$`numberOfSuccessfulPullRequests`)) {
        MultibranchPipelineObject[["numberOfSuccessfulPullRequests"]] <-
          self$`numberOfSuccessfulPullRequests`
      }
      if (!is.null(self$`totalNumberOfBranches`)) {
        MultibranchPipelineObject[["totalNumberOfBranches"]] <-
          self$`totalNumberOfBranches`
      }
      if (!is.null(self$`totalNumberOfPullRequests`)) {
        MultibranchPipelineObject[["totalNumberOfPullRequests"]] <-
          self$`totalNumberOfPullRequests`
      }
      if (!is.null(self$`_class`)) {
        MultibranchPipelineObject[["_class"]] <-
          self$`_class`
      }
      return(MultibranchPipelineObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MultibranchPipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of MultibranchPipeline
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`latestRun`)) {
        self$`latestRun` <- this_object$`latestRun`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`weatherScore`)) {
        self$`weatherScore` <- this_object$`weatherScore`
      }
      if (!is.null(this_object$`branchNames`)) {
        self$`branchNames` <- ApiClient$new()$deserializeObj(this_object$`branchNames`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`numberOfFailingBranches`)) {
        self$`numberOfFailingBranches` <- this_object$`numberOfFailingBranches`
      }
      if (!is.null(this_object$`numberOfFailingPullRequests`)) {
        self$`numberOfFailingPullRequests` <- this_object$`numberOfFailingPullRequests`
      }
      if (!is.null(this_object$`numberOfSuccessfulBranches`)) {
        self$`numberOfSuccessfulBranches` <- this_object$`numberOfSuccessfulBranches`
      }
      if (!is.null(this_object$`numberOfSuccessfulPullRequests`)) {
        self$`numberOfSuccessfulPullRequests` <- this_object$`numberOfSuccessfulPullRequests`
      }
      if (!is.null(this_object$`totalNumberOfBranches`)) {
        self$`totalNumberOfBranches` <- this_object$`totalNumberOfBranches`
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
    #' @return MultibranchPipeline in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MultibranchPipeline
    #'
    #' @param input_json the JSON input
    #' @return the instance of MultibranchPipeline
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`displayName` <- this_object$`displayName`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`latestRun` <- this_object$`latestRun`
      self$`name` <- this_object$`name`
      self$`organization` <- this_object$`organization`
      self$`weatherScore` <- this_object$`weatherScore`
      self$`branchNames` <- ApiClient$new()$deserializeObj(this_object$`branchNames`, "array[character]", loadNamespace("openapi"))
      self$`numberOfFailingBranches` <- this_object$`numberOfFailingBranches`
      self$`numberOfFailingPullRequests` <- this_object$`numberOfFailingPullRequests`
      self$`numberOfSuccessfulBranches` <- this_object$`numberOfSuccessfulBranches`
      self$`numberOfSuccessfulPullRequests` <- this_object$`numberOfSuccessfulPullRequests`
      self$`totalNumberOfBranches` <- this_object$`totalNumberOfBranches`
      self$`totalNumberOfPullRequests` <- this_object$`totalNumberOfPullRequests`
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to MultibranchPipeline and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MultibranchPipeline
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
# MultibranchPipeline$unlock()
#
## Below is an example to define the print function
# MultibranchPipeline$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MultibranchPipeline$lock()

