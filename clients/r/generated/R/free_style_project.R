#' Create a new FreeStyleProject
#'
#' @description
#' FreeStyleProject Class
#'
#' @docType class
#' @title FreeStyleProject
#' @description FreeStyleProject Class
#' @format An \code{R6Class} generator object
#' @field _class  character [optional]
#' @field name  character [optional]
#' @field url  character [optional]
#' @field color  character [optional]
#' @field actions  list(\link{FreeStyleProjectactions}) [optional]
#' @field description  character [optional]
#' @field displayName  character [optional]
#' @field displayNameOrNull  character [optional]
#' @field fullDisplayName  character [optional]
#' @field fullName  character [optional]
#' @field buildable  character [optional]
#' @field builds  list(\link{FreeStyleBuild}) [optional]
#' @field firstBuild  \link{FreeStyleBuild} [optional]
#' @field healthReport  list(\link{FreeStyleProjecthealthReport}) [optional]
#' @field inQueue  character [optional]
#' @field keepDependencies  character [optional]
#' @field lastBuild  \link{FreeStyleBuild} [optional]
#' @field lastCompletedBuild  \link{FreeStyleBuild} [optional]
#' @field lastFailedBuild  character [optional]
#' @field lastStableBuild  \link{FreeStyleBuild} [optional]
#' @field lastSuccessfulBuild  \link{FreeStyleBuild} [optional]
#' @field lastUnstableBuild  character [optional]
#' @field lastUnsuccessfulBuild  character [optional]
#' @field nextBuildNumber  integer [optional]
#' @field queueItem  character [optional]
#' @field concurrentBuild  character [optional]
#' @field scm  \link{NullSCM} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FreeStyleProject <- R6::R6Class(
  "FreeStyleProject",
  public = list(
    `_class` = NULL,
    `name` = NULL,
    `url` = NULL,
    `color` = NULL,
    `actions` = NULL,
    `description` = NULL,
    `displayName` = NULL,
    `displayNameOrNull` = NULL,
    `fullDisplayName` = NULL,
    `fullName` = NULL,
    `buildable` = NULL,
    `builds` = NULL,
    `firstBuild` = NULL,
    `healthReport` = NULL,
    `inQueue` = NULL,
    `keepDependencies` = NULL,
    `lastBuild` = NULL,
    `lastCompletedBuild` = NULL,
    `lastFailedBuild` = NULL,
    `lastStableBuild` = NULL,
    `lastSuccessfulBuild` = NULL,
    `lastUnstableBuild` = NULL,
    `lastUnsuccessfulBuild` = NULL,
    `nextBuildNumber` = NULL,
    `queueItem` = NULL,
    `concurrentBuild` = NULL,
    `scm` = NULL,

    #' @description
    #' Initialize a new FreeStyleProject class.
    #'
    #' @param _class _class
    #' @param name name
    #' @param url url
    #' @param color color
    #' @param actions actions
    #' @param description description
    #' @param displayName displayName
    #' @param displayNameOrNull displayNameOrNull
    #' @param fullDisplayName fullDisplayName
    #' @param fullName fullName
    #' @param buildable buildable
    #' @param builds builds
    #' @param firstBuild firstBuild
    #' @param healthReport healthReport
    #' @param inQueue inQueue
    #' @param keepDependencies keepDependencies
    #' @param lastBuild lastBuild
    #' @param lastCompletedBuild lastCompletedBuild
    #' @param lastFailedBuild lastFailedBuild
    #' @param lastStableBuild lastStableBuild
    #' @param lastSuccessfulBuild lastSuccessfulBuild
    #' @param lastUnstableBuild lastUnstableBuild
    #' @param lastUnsuccessfulBuild lastUnsuccessfulBuild
    #' @param nextBuildNumber nextBuildNumber
    #' @param queueItem queueItem
    #' @param concurrentBuild concurrentBuild
    #' @param scm scm
    #' @param ... Other optional arguments.
    initialize = function(`_class` = NULL, `name` = NULL, `url` = NULL, `color` = NULL, `actions` = NULL, `description` = NULL, `displayName` = NULL, `displayNameOrNull` = NULL, `fullDisplayName` = NULL, `fullName` = NULL, `buildable` = NULL, `builds` = NULL, `firstBuild` = NULL, `healthReport` = NULL, `inQueue` = NULL, `keepDependencies` = NULL, `lastBuild` = NULL, `lastCompletedBuild` = NULL, `lastFailedBuild` = NULL, `lastStableBuild` = NULL, `lastSuccessfulBuild` = NULL, `lastUnstableBuild` = NULL, `lastUnsuccessfulBuild` = NULL, `nextBuildNumber` = NULL, `queueItem` = NULL, `concurrentBuild` = NULL, `scm` = NULL, ...) {
      if (!is.null(`_class`)) {
        if (!(is.character(`_class`) && length(`_class`) == 1)) {
          stop(paste("Error! Invalid data for `_class`. Must be a string:", `_class`))
        }
        self$`_class` <- `_class`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!is.null(`actions`)) {
        stopifnot(is.vector(`actions`), length(`actions`) != 0)
        sapply(`actions`, function(x) stopifnot(R6::is.R6(x)))
        self$`actions` <- `actions`
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
      if (!is.null(`displayNameOrNull`)) {
        if (!(is.character(`displayNameOrNull`) && length(`displayNameOrNull`) == 1)) {
          stop(paste("Error! Invalid data for `displayNameOrNull`. Must be a string:", `displayNameOrNull`))
        }
        self$`displayNameOrNull` <- `displayNameOrNull`
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
      if (!is.null(`buildable`)) {
        if (!(is.logical(`buildable`) && length(`buildable`) == 1)) {
          stop(paste("Error! Invalid data for `buildable`. Must be a boolean:", `buildable`))
        }
        self$`buildable` <- `buildable`
      }
      if (!is.null(`builds`)) {
        stopifnot(is.vector(`builds`), length(`builds`) != 0)
        sapply(`builds`, function(x) stopifnot(R6::is.R6(x)))
        self$`builds` <- `builds`
      }
      if (!is.null(`firstBuild`)) {
        stopifnot(R6::is.R6(`firstBuild`))
        self$`firstBuild` <- `firstBuild`
      }
      if (!is.null(`healthReport`)) {
        stopifnot(is.vector(`healthReport`), length(`healthReport`) != 0)
        sapply(`healthReport`, function(x) stopifnot(R6::is.R6(x)))
        self$`healthReport` <- `healthReport`
      }
      if (!is.null(`inQueue`)) {
        if (!(is.logical(`inQueue`) && length(`inQueue`) == 1)) {
          stop(paste("Error! Invalid data for `inQueue`. Must be a boolean:", `inQueue`))
        }
        self$`inQueue` <- `inQueue`
      }
      if (!is.null(`keepDependencies`)) {
        if (!(is.logical(`keepDependencies`) && length(`keepDependencies`) == 1)) {
          stop(paste("Error! Invalid data for `keepDependencies`. Must be a boolean:", `keepDependencies`))
        }
        self$`keepDependencies` <- `keepDependencies`
      }
      if (!is.null(`lastBuild`)) {
        stopifnot(R6::is.R6(`lastBuild`))
        self$`lastBuild` <- `lastBuild`
      }
      if (!is.null(`lastCompletedBuild`)) {
        stopifnot(R6::is.R6(`lastCompletedBuild`))
        self$`lastCompletedBuild` <- `lastCompletedBuild`
      }
      if (!is.null(`lastFailedBuild`)) {
        if (!(is.character(`lastFailedBuild`) && length(`lastFailedBuild`) == 1)) {
          stop(paste("Error! Invalid data for `lastFailedBuild`. Must be a string:", `lastFailedBuild`))
        }
        self$`lastFailedBuild` <- `lastFailedBuild`
      }
      if (!is.null(`lastStableBuild`)) {
        stopifnot(R6::is.R6(`lastStableBuild`))
        self$`lastStableBuild` <- `lastStableBuild`
      }
      if (!is.null(`lastSuccessfulBuild`)) {
        stopifnot(R6::is.R6(`lastSuccessfulBuild`))
        self$`lastSuccessfulBuild` <- `lastSuccessfulBuild`
      }
      if (!is.null(`lastUnstableBuild`)) {
        if (!(is.character(`lastUnstableBuild`) && length(`lastUnstableBuild`) == 1)) {
          stop(paste("Error! Invalid data for `lastUnstableBuild`. Must be a string:", `lastUnstableBuild`))
        }
        self$`lastUnstableBuild` <- `lastUnstableBuild`
      }
      if (!is.null(`lastUnsuccessfulBuild`)) {
        if (!(is.character(`lastUnsuccessfulBuild`) && length(`lastUnsuccessfulBuild`) == 1)) {
          stop(paste("Error! Invalid data for `lastUnsuccessfulBuild`. Must be a string:", `lastUnsuccessfulBuild`))
        }
        self$`lastUnsuccessfulBuild` <- `lastUnsuccessfulBuild`
      }
      if (!is.null(`nextBuildNumber`)) {
        if (!(is.numeric(`nextBuildNumber`) && length(`nextBuildNumber`) == 1)) {
          stop(paste("Error! Invalid data for `nextBuildNumber`. Must be an integer:", `nextBuildNumber`))
        }
        self$`nextBuildNumber` <- `nextBuildNumber`
      }
      if (!is.null(`queueItem`)) {
        if (!(is.character(`queueItem`) && length(`queueItem`) == 1)) {
          stop(paste("Error! Invalid data for `queueItem`. Must be a string:", `queueItem`))
        }
        self$`queueItem` <- `queueItem`
      }
      if (!is.null(`concurrentBuild`)) {
        if (!(is.logical(`concurrentBuild`) && length(`concurrentBuild`) == 1)) {
          stop(paste("Error! Invalid data for `concurrentBuild`. Must be a boolean:", `concurrentBuild`))
        }
        self$`concurrentBuild` <- `concurrentBuild`
      }
      if (!is.null(`scm`)) {
        stopifnot(R6::is.R6(`scm`))
        self$`scm` <- `scm`
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
    #' @return FreeStyleProject as a base R list.
    #' @examples
    #' # convert array of FreeStyleProject (x) to a data frame
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
    #' Convert FreeStyleProject to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FreeStyleProjectObject <- list()
      if (!is.null(self$`_class`)) {
        FreeStyleProjectObject[["_class"]] <-
          self$`_class`
      }
      if (!is.null(self$`name`)) {
        FreeStyleProjectObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`url`)) {
        FreeStyleProjectObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`color`)) {
        FreeStyleProjectObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`actions`)) {
        FreeStyleProjectObject[["actions"]] <-
          lapply(self$`actions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`description`)) {
        FreeStyleProjectObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`displayName`)) {
        FreeStyleProjectObject[["displayName"]] <-
          self$`displayName`
      }
      if (!is.null(self$`displayNameOrNull`)) {
        FreeStyleProjectObject[["displayNameOrNull"]] <-
          self$`displayNameOrNull`
      }
      if (!is.null(self$`fullDisplayName`)) {
        FreeStyleProjectObject[["fullDisplayName"]] <-
          self$`fullDisplayName`
      }
      if (!is.null(self$`fullName`)) {
        FreeStyleProjectObject[["fullName"]] <-
          self$`fullName`
      }
      if (!is.null(self$`buildable`)) {
        FreeStyleProjectObject[["buildable"]] <-
          self$`buildable`
      }
      if (!is.null(self$`builds`)) {
        FreeStyleProjectObject[["builds"]] <-
          lapply(self$`builds`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`firstBuild`)) {
        FreeStyleProjectObject[["firstBuild"]] <-
          self$`firstBuild`$toSimpleType()
      }
      if (!is.null(self$`healthReport`)) {
        FreeStyleProjectObject[["healthReport"]] <-
          lapply(self$`healthReport`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`inQueue`)) {
        FreeStyleProjectObject[["inQueue"]] <-
          self$`inQueue`
      }
      if (!is.null(self$`keepDependencies`)) {
        FreeStyleProjectObject[["keepDependencies"]] <-
          self$`keepDependencies`
      }
      if (!is.null(self$`lastBuild`)) {
        FreeStyleProjectObject[["lastBuild"]] <-
          self$`lastBuild`$toSimpleType()
      }
      if (!is.null(self$`lastCompletedBuild`)) {
        FreeStyleProjectObject[["lastCompletedBuild"]] <-
          self$`lastCompletedBuild`$toSimpleType()
      }
      if (!is.null(self$`lastFailedBuild`)) {
        FreeStyleProjectObject[["lastFailedBuild"]] <-
          self$`lastFailedBuild`
      }
      if (!is.null(self$`lastStableBuild`)) {
        FreeStyleProjectObject[["lastStableBuild"]] <-
          self$`lastStableBuild`$toSimpleType()
      }
      if (!is.null(self$`lastSuccessfulBuild`)) {
        FreeStyleProjectObject[["lastSuccessfulBuild"]] <-
          self$`lastSuccessfulBuild`$toSimpleType()
      }
      if (!is.null(self$`lastUnstableBuild`)) {
        FreeStyleProjectObject[["lastUnstableBuild"]] <-
          self$`lastUnstableBuild`
      }
      if (!is.null(self$`lastUnsuccessfulBuild`)) {
        FreeStyleProjectObject[["lastUnsuccessfulBuild"]] <-
          self$`lastUnsuccessfulBuild`
      }
      if (!is.null(self$`nextBuildNumber`)) {
        FreeStyleProjectObject[["nextBuildNumber"]] <-
          self$`nextBuildNumber`
      }
      if (!is.null(self$`queueItem`)) {
        FreeStyleProjectObject[["queueItem"]] <-
          self$`queueItem`
      }
      if (!is.null(self$`concurrentBuild`)) {
        FreeStyleProjectObject[["concurrentBuild"]] <-
          self$`concurrentBuild`
      }
      if (!is.null(self$`scm`)) {
        FreeStyleProjectObject[["scm"]] <-
          self$`scm`$toSimpleType()
      }
      return(FreeStyleProjectObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProject
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProject
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_class`)) {
        self$`_class` <- this_object$`_class`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`actions`)) {
        self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[FreeStyleProjectactions]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`displayName`)) {
        self$`displayName` <- this_object$`displayName`
      }
      if (!is.null(this_object$`displayNameOrNull`)) {
        self$`displayNameOrNull` <- this_object$`displayNameOrNull`
      }
      if (!is.null(this_object$`fullDisplayName`)) {
        self$`fullDisplayName` <- this_object$`fullDisplayName`
      }
      if (!is.null(this_object$`fullName`)) {
        self$`fullName` <- this_object$`fullName`
      }
      if (!is.null(this_object$`buildable`)) {
        self$`buildable` <- this_object$`buildable`
      }
      if (!is.null(this_object$`builds`)) {
        self$`builds` <- ApiClient$new()$deserializeObj(this_object$`builds`, "array[FreeStyleBuild]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`firstBuild`)) {
        `firstbuild_object` <- FreeStyleBuild$new()
        `firstbuild_object`$fromJSON(jsonlite::toJSON(this_object$`firstBuild`, auto_unbox = TRUE, digits = NA))
        self$`firstBuild` <- `firstbuild_object`
      }
      if (!is.null(this_object$`healthReport`)) {
        self$`healthReport` <- ApiClient$new()$deserializeObj(this_object$`healthReport`, "array[FreeStyleProjecthealthReport]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`inQueue`)) {
        self$`inQueue` <- this_object$`inQueue`
      }
      if (!is.null(this_object$`keepDependencies`)) {
        self$`keepDependencies` <- this_object$`keepDependencies`
      }
      if (!is.null(this_object$`lastBuild`)) {
        `lastbuild_object` <- FreeStyleBuild$new()
        `lastbuild_object`$fromJSON(jsonlite::toJSON(this_object$`lastBuild`, auto_unbox = TRUE, digits = NA))
        self$`lastBuild` <- `lastbuild_object`
      }
      if (!is.null(this_object$`lastCompletedBuild`)) {
        `lastcompletedbuild_object` <- FreeStyleBuild$new()
        `lastcompletedbuild_object`$fromJSON(jsonlite::toJSON(this_object$`lastCompletedBuild`, auto_unbox = TRUE, digits = NA))
        self$`lastCompletedBuild` <- `lastcompletedbuild_object`
      }
      if (!is.null(this_object$`lastFailedBuild`)) {
        self$`lastFailedBuild` <- this_object$`lastFailedBuild`
      }
      if (!is.null(this_object$`lastStableBuild`)) {
        `laststablebuild_object` <- FreeStyleBuild$new()
        `laststablebuild_object`$fromJSON(jsonlite::toJSON(this_object$`lastStableBuild`, auto_unbox = TRUE, digits = NA))
        self$`lastStableBuild` <- `laststablebuild_object`
      }
      if (!is.null(this_object$`lastSuccessfulBuild`)) {
        `lastsuccessfulbuild_object` <- FreeStyleBuild$new()
        `lastsuccessfulbuild_object`$fromJSON(jsonlite::toJSON(this_object$`lastSuccessfulBuild`, auto_unbox = TRUE, digits = NA))
        self$`lastSuccessfulBuild` <- `lastsuccessfulbuild_object`
      }
      if (!is.null(this_object$`lastUnstableBuild`)) {
        self$`lastUnstableBuild` <- this_object$`lastUnstableBuild`
      }
      if (!is.null(this_object$`lastUnsuccessfulBuild`)) {
        self$`lastUnsuccessfulBuild` <- this_object$`lastUnsuccessfulBuild`
      }
      if (!is.null(this_object$`nextBuildNumber`)) {
        self$`nextBuildNumber` <- this_object$`nextBuildNumber`
      }
      if (!is.null(this_object$`queueItem`)) {
        self$`queueItem` <- this_object$`queueItem`
      }
      if (!is.null(this_object$`concurrentBuild`)) {
        self$`concurrentBuild` <- this_object$`concurrentBuild`
      }
      if (!is.null(this_object$`scm`)) {
        `scm_object` <- NullSCM$new()
        `scm_object`$fromJSON(jsonlite::toJSON(this_object$`scm`, auto_unbox = TRUE, digits = NA))
        self$`scm` <- `scm_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FreeStyleProject in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FreeStyleProject
    #'
    #' @param input_json the JSON input
    #' @return the instance of FreeStyleProject
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_class` <- this_object$`_class`
      self$`name` <- this_object$`name`
      self$`url` <- this_object$`url`
      self$`color` <- this_object$`color`
      self$`actions` <- ApiClient$new()$deserializeObj(this_object$`actions`, "array[FreeStyleProjectactions]", loadNamespace("openapi"))
      self$`description` <- this_object$`description`
      self$`displayName` <- this_object$`displayName`
      self$`displayNameOrNull` <- this_object$`displayNameOrNull`
      self$`fullDisplayName` <- this_object$`fullDisplayName`
      self$`fullName` <- this_object$`fullName`
      self$`buildable` <- this_object$`buildable`
      self$`builds` <- ApiClient$new()$deserializeObj(this_object$`builds`, "array[FreeStyleBuild]", loadNamespace("openapi"))
      self$`firstBuild` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`firstBuild`, auto_unbox = TRUE, digits = NA))
      self$`healthReport` <- ApiClient$new()$deserializeObj(this_object$`healthReport`, "array[FreeStyleProjecthealthReport]", loadNamespace("openapi"))
      self$`inQueue` <- this_object$`inQueue`
      self$`keepDependencies` <- this_object$`keepDependencies`
      self$`lastBuild` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`lastBuild`, auto_unbox = TRUE, digits = NA))
      self$`lastCompletedBuild` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`lastCompletedBuild`, auto_unbox = TRUE, digits = NA))
      self$`lastFailedBuild` <- this_object$`lastFailedBuild`
      self$`lastStableBuild` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`lastStableBuild`, auto_unbox = TRUE, digits = NA))
      self$`lastSuccessfulBuild` <- FreeStyleBuild$new()$fromJSON(jsonlite::toJSON(this_object$`lastSuccessfulBuild`, auto_unbox = TRUE, digits = NA))
      self$`lastUnstableBuild` <- this_object$`lastUnstableBuild`
      self$`lastUnsuccessfulBuild` <- this_object$`lastUnsuccessfulBuild`
      self$`nextBuildNumber` <- this_object$`nextBuildNumber`
      self$`queueItem` <- this_object$`queueItem`
      self$`concurrentBuild` <- this_object$`concurrentBuild`
      self$`scm` <- NullSCM$new()$fromJSON(jsonlite::toJSON(this_object$`scm`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to FreeStyleProject and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FreeStyleProject
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
# FreeStyleProject$unlock()
#
## Below is an example to define the print function
# FreeStyleProject$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FreeStyleProject$lock()

