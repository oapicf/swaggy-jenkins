#' Create a new BranchImpl
#'
#' @description
#' BranchImpl Class
#'
#' @docType class
#' @title BranchImpl
#' @description BranchImpl Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field displayName  character [optional]
#' @field estimatedDurationInMillis  integer [optional]
#' @field fullDisplayName  character [optional]
#' @field fullName  character [optional]
#' @field name  character [optional]
#' @field organization  character [optional]
#' @field parameters  list(\link{StringParameterDefinition}) [optional]
#' @field permissions  \link{BranchImplpermissions} [optional]
#' @field weatherScore  integer [optional]
#' @field pullRequest  character [optional]
#' @field _links  \link{BranchImpllinks} [optional]
#' @field latestRun  \link{PipelineRunImpl} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BranchImpl <- R6::R6Class(
  "BranchImpl",
  public = list(
    `_class` = NULL,
    `displayName` = NULL,
    `estimatedDurationInMillis` = NULL,
    `fullDisplayName` = NULL,
    `fullName` = NULL,
    `name` = NULL,
    `organization` = NULL,
    `parameters` = NULL,
    `permissions` = NULL,
    `weatherScore` = NULL,
    `pullRequest` = NULL,
    `_links` = NULL,
    `latestRun` = NULL,

    #' @description
    #' Initialize a new BranchImpl class.
    #'
    #' @param _class _class
    #' @param displayName displayName
    #' @param estimatedDurationInMillis estimatedDurationInMillis
    #' @param fullDisplayName fullDisplayName
    #' @param fullName fullName
    #' @param name name
    #' @param organization organization
    #' @param parameters parameters
    #' @param permissions permissions
    #' @param weatherScore weatherScore
    #' @param pullRequest pullRequest
    #' @param _links _links
    #' @param latestRun latestRun
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `displayName` = NULL, `estimatedDurationInMillis` = NULL, `fullDisplayName` = NULL, `fullName` = NULL, `name` = NULL, `organization` = NULL, `parameters` = NULL, `permissions` = NULL, `weatherScore` = NULL, `pullRequest` = NULL, `_links` = NULL, `latestRun` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
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
      if (!is.null(`fullDisplayName`)) {
        if (!(is.character(`fullDisplayName`) && length(`fullDisplayName`) == 1)) {
          stop(paste("Error! Invalid data for `fullDisplayName`. Must be a string:", `fullDisplayName`))
        }
        self$`fullDisplayName` <- `fullDisplayName`
      }
      if (!is.null(`fullName`)) {
        if (!(is.character(`fullName`) && length(`fullName`) == 1)) {
          stop(paste("Error! Invalid data for `fullName`. Must be a string:", `fullName`))
        }
        self$`fullName` <- `fullName`
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
      if (!is.null(`parameters`)) {
        stopifnot(is.vector(`parameters`), length(`parameters`) != 0)
        sapply(`parameters`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameters` <- `parameters`
      }
      if (!is.null(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`weatherScore`)) {
        if (!(is.numeric(`weatherScore`) && length(`weatherScore`) == 1)) {
          stop(paste("Error! Invalid data for `weatherScore`. Must be an integer:", `weatherScore`))
        }
        self$`weatherScore` <- `weatherScore`
      }
      if (!is.null(`pullRequest`)) {
        if (!(is.character(`pullRequest`) && length(`pullRequest`) == 1)) {
          stop(paste("Error! Invalid data for `pullRequest`. Must be a string:", `pullRequest`))
        }
        self$`pullRequest` <- `pullRequest`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`latestRun`)) {
        stopifnot(R6::is.R6(`latestRun`))
        self$`latestRun` <- `latestRun`
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
    #' @return BranchImpl as a base R list.
    #' @examples
    #' # convert array of BranchImpl (x) to a data frame
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
    #' Convert BranchImpl to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BranchImplObject <- list()
      if (!is.null(self$`_class`)) {
        BranchImplObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`displayName`)) {
        BranchImplObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`estimatedDurationInMillis`)) {
        BranchImplObject[["estimatedDurationInMillis"]] <-
          self$`estimatedDurationInMillis`
      }
      if (!is.null(self$`fullDisplayName`)) {
        BranchImplObject[["fullDisplayName"]] <-
          self$`fullDisplayName`
      }
      if (!is.null(self$`fullName`)) {
        BranchImplObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`name`)) {
        BranchImplObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`organization`)) {
        BranchImplObject[["organization"]] <-
          self$`organization`
      }
      if (!is.null(self$`parameters`)) {
        BranchImplObject[["parameters"]] <-
          lapply(self$`parameters`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`permissions`)) {
        BranchImplObject[["permissions"]] <-
          self$`permissions`$toSimpleType()
      }
      if (!is.null(self$`weatherScore`)) {
        BranchImplObject[["weatherScore"]] <-
          self$`weatherScore`
      }
      if (!is.null(self$`pullRequest`)) {
        BranchImplObject[["pullRequest"]] <-
          self$`pullRequest`
      }
      if (!is.null(self$`_links`)) {
        BranchImplObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`latestRun`)) {
        BranchImplObject[["latestRun"]] <-
          self$`latestRun`$toSimpleType()
      }
      return(BranchImplObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BranchImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of BranchImpl
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`estimatedDurationInMillis`)) {
        self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      }
      if (!is.null(this_object$`fullDisplayName`)) {
        self$`fullDisplayName` <- this_object$`fullDisplayName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`organization`)) {
        self$`organization` <- this_object$`organization`
      }
      if (!is.null(this_object$`parameters`)) {
        self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- BranchImplpermissions$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`weatherScore`)) {
        self$`weatherScore` <- this_object$`weatherScore`
      }
      if (!is.null(this_object$`pullRequest`)) {
        self$`pullRequest` <- this_object$`pullRequest`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- BranchImpllinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`latestRun`)) {
        `latestrun_object` <- PipelineRunImpl$new()
        `latestrun_object`$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
        self$`latestRun` <- `latestrun_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BranchImpl in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BranchImpl
    #'
    #' @param input_json the JSON input
    #' @return the instance of BranchImpl
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`displayName` <- this_object$`displayName`
      self$`estimatedDurationInMillis` <- this_object$`estimatedDurationInMillis`
      self$`fullDisplayName` <- this_object$`fullDisplayName`
      self$`fullName` <- this_object$`fullName`
      self$`name` <- this_object$`name`
      self$`organization` <- this_object$`organization`
      self$`parameters` <- ApiClient$new()$deserializeObj(this_object$`parameters`, "array[StringParameterDefinition]", loadNamespace("openapi"))
      self$`permissions` <- BranchImplpermissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`weatherScore` <- this_object$`weatherScore`
      self$`pullRequest` <- this_object$`pullRequest`
      self$`_links` <- BranchImpllinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`latestRun` <- PipelineRunImpl$new()$fromJSON(jsonlite::toJSON(this_object$`latestRun`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BranchImpl and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BranchImpl
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
# BranchImpl$unlock()
#
## Below is an example to define the print function
# BranchImpl$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BranchImpl$lock()

