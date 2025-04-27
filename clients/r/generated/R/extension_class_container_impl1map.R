#' Create a new ExtensionClassContainerImpl1map
#'
#' @description
#' ExtensionClassContainerImpl1map Class
#'
#' @docType class
#' @title ExtensionClassContainerImpl1map
#' @description ExtensionClassContainerImpl1map Class
#' @format An \code{R6Class} generator object
#' @field io.jenkins.blueocean.service.embedded.rest.PipelineImpl  \link{ExtensionClassImpl} [optional]
#' @field io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl  \link{ExtensionClassImpl} [optional]
#' @field _class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExtensionClassContainerImpl1map <- R6::R6Class(
  "ExtensionClassContainerImpl1map",
  public = list(
    `io.jenkins.blueocean.service.embedded.rest.PipelineImpl` = NULL,
    `io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` = NULL,
    `_class` = NULL,

    #' @description
    #' Initialize a new ExtensionClassContainerImpl1map class.
    #'
    #' @param io.jenkins.blueocean.service.embedded.rest.PipelineImpl io.jenkins.blueocean.service.embedded.rest.PipelineImpl
    #' @param io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
    #' @param _class _class
    #' @param ... Other optional arguments.
    initialize = function(`io.jenkins.blueocean.service.embedded.rest.PipelineImpl` = NULL, `io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` = NULL, `_class` = NULL, ...) {
      if (!is.null(`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)) {
        stopifnot(R6::is.R6(`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`))
        self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl` <- `io.jenkins.blueocean.service.embedded.rest.PipelineImpl`
      }
      if (!is.null(`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)) {
        stopifnot(R6::is.R6(`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`))
        self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` <- `io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`
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
    #' @return ExtensionClassContainerImpl1map as a base R list.
    #' @examples
    #' # convert array of ExtensionClassContainerImpl1map (x) to a data frame
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
    #' Convert ExtensionClassContainerImpl1map to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExtensionClassContainerImpl1mapObject <- list()
      if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)) {
        ExtensionClassContainerImpl1mapObject[["io.jenkins.blueocean.service.embedded.rest.PipelineImpl"]] <-
          self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`$toSimpleType()
      }
      if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)) {
        ExtensionClassContainerImpl1mapObject[["io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl"]] <-
          self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`$toSimpleType()
      }
      if (!is.null(self$`_class`)) {
        ExtensionClassContainerImpl1mapObject[["_class"]] <-
          self$`_class`
      }
      return(ExtensionClassContainerImpl1mapObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1map
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)) {
        `io.jenkins.blueocean.service.embedded.rest.pipelineimpl_object` <- ExtensionClassImpl$new()
        `io.jenkins.blueocean.service.embedded.rest.pipelineimpl_object`$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`, auto_unbox = TRUE, digits = NA))
        self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl` <- `io.jenkins.blueocean.service.embedded.rest.pipelineimpl_object`
      }
      if (!is.null(this_object$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)) {
        `io.jenkins.blueocean.service.embedded.rest.multibranchpipelineimpl_object` <- ExtensionClassImpl$new()
        `io.jenkins.blueocean.service.embedded.rest.multibranchpipelineimpl_object`$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`, auto_unbox = TRUE, digits = NA))
        self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` <- `io.jenkins.blueocean.service.embedded.rest.multibranchpipelineimpl_object`
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
    #' @return ExtensionClassContainerImpl1map in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1map
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl` <- ExtensionClassImpl$new()$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`, auto_unbox = TRUE, digits = NA))
      self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` <- ExtensionClassImpl$new()$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExtensionClassContainerImpl1map and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExtensionClassContainerImpl1map
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
# ExtensionClassContainerImpl1map$unlock()
#
## Below is an example to define the print function
# ExtensionClassContainerImpl1map$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtensionClassContainerImpl1map$lock()

