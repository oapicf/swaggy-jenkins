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
    #' Initialize a new ExtensionClassContainerImpl1map class.
    #'
    #' @description
    #' Initialize a new ExtensionClassContainerImpl1map class.
    #'
    #' @param io.jenkins.blueocean.service.embedded.rest.PipelineImpl io.jenkins.blueocean.service.embedded.rest.PipelineImpl
    #' @param io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl
    #' @param _class _class
    #' @param ... Other optional arguments.
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassContainerImpl1map in JSON format
    #' @export
    toJSON = function() {
      ExtensionClassContainerImpl1mapObject <- list()
      if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)) {
        ExtensionClassContainerImpl1mapObject[["io.jenkins.blueocean.service.embedded.rest.PipelineImpl"]] <-
          self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`$toJSON()
      }
      if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)) {
        ExtensionClassContainerImpl1mapObject[["io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl"]] <-
          self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`$toJSON()
      }
      if (!is.null(self$`_class`)) {
        ExtensionClassContainerImpl1mapObject[["_class"]] <-
          self$`_class`
      }
      ExtensionClassContainerImpl1mapObject
    },
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1map
    #' @export
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
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ExtensionClassContainerImpl1map in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`)) {
          sprintf(
          '"io.jenkins.blueocean.service.embedded.rest.PipelineImpl":
          %s
          ',
          jsonlite::toJSON(self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`)) {
          sprintf(
          '"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl":
          %s
          ',
          jsonlite::toJSON(self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`$toJSON(), auto_unbox = TRUE, digits = NA)
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
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @description
    #' Deserialize JSON string into an instance of ExtensionClassContainerImpl1map
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExtensionClassContainerImpl1map
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl` <- ExtensionClassImpl$new()$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.PipelineImpl`, auto_unbox = TRUE, digits = NA))
      self$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl` <- ExtensionClassImpl$new()$fromJSON(jsonlite::toJSON(this_object$`io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl`, auto_unbox = TRUE, digits = NA))
      self$`_class` <- this_object$`_class`
      self
    },
    #' Validate JSON input with respect to ExtensionClassContainerImpl1map
    #'
    #' @description
    #' Validate JSON input with respect to ExtensionClassContainerImpl1map and throw an exception if invalid
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
    #' @return String representation of ExtensionClassContainerImpl1map
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
# ExtensionClassContainerImpl1map$unlock()
#
## Below is an example to define the print function
# ExtensionClassContainerImpl1map$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExtensionClassContainerImpl1map$lock()

