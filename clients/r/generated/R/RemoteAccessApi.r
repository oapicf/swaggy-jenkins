# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech

#' @title RemoteAccess operations
#' @description openapi.RemoteAccess
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_computer 
#'
#'
#' get_jenkins 
#'
#'
#' get_job 
#'
#'
#' get_job_config 
#'
#'
#' get_job_last_build 
#'
#'
#' get_job_progressive_text 
#'
#'
#' get_queue 
#'
#'
#' get_queue_item 
#'
#'
#' get_view 
#'
#'
#' get_view_config 
#'
#'
#' head_jenkins 
#'
#'
#' post_create_item 
#'
#'
#' post_create_view 
#'
#'
#' post_job_build 
#'
#'
#' post_job_config 
#'
#'
#' post_job_delete 
#'
#'
#' post_job_disable 
#'
#'
#' post_job_enable 
#'
#'
#' post_job_last_build_stop 
#'
#'
#' post_view_config 
#'
#' }
#'
#' @export
RemoteAccessApi <- R6::R6Class(
  'RemoteAccessApi',
  public = list(
    userAgent = "OpenAPI-Generator/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_computer = function(depth, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`depth`)) {
        queryParams['depth'] <- depth
      }

      urlPath <- "/computer/api/json"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ComputerSet$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_jenkins = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api/json"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Hudson$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_job = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/job/{name}/api/json"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FreeStyleProject$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_job_config = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/job/{name}/config.xml"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_job_last_build = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/job/{name}/lastBuild/api/json"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FreeStyleBuild$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_job_progressive_text = function(name, number, start, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`start`)) {
        queryParams['start'] <- start
      }

      urlPath <- "/job/{name}/{number}/logText/progressiveText"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      if (!missing(`number`)) {
        urlPath <- gsub(paste0("\\{", "number", "\\}"), `number`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_queue = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/queue/api/json"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Queue$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_queue_item = function(number, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/queue/item/{number}/api/json"
      if (!missing(`number`)) {
        urlPath <- gsub(paste0("\\{", "number", "\\}"), `number`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Queue$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_view = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/view/{name}/api/json"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ListView$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_view_config = function(name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/view/{name}/config.xml"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    head_jenkins = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api/json"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "HEAD",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_create_item = function(name, from, mode, jenkins_crumb, content_type, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      if (!missing(`content_type`)) {
        headerParams['Content-Type'] <- `content_type`
      }

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`from`)) {
        queryParams['from'] <- from
      }

      if (!missing(`mode`)) {
        queryParams['mode'] <- mode
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/createItem"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_create_view = function(name, jenkins_crumb, content_type, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      if (!missing(`content_type`)) {
        headerParams['Content-Type'] <- `content_type`
      }

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/createView"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_build = function(name, json, token, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      if (!missing(`json`)) {
        queryParams['json'] <- json
      }

      if (!missing(`token`)) {
        queryParams['token'] <- token
      }

      urlPath <- "/job/{name}/build"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_config = function(name, body, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/job/{name}/config.xml"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_delete = function(name, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      urlPath <- "/job/{name}/doDelete"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_disable = function(name, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      urlPath <- "/job/{name}/disable"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_enable = function(name, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      urlPath <- "/job/{name}/enable"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_job_last_build_stop = function(name, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      urlPath <- "/job/{name}/lastBuild/stop"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    post_view_config = function(name, body, jenkins_crumb, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`jenkins_crumb`)) {
        headerParams['Jenkins-Crumb'] <- `jenkins_crumb`
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/view/{name}/config.xml"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
