#
# Swaggy Jenkins
# 
# Jenkins API clients generated from Swagger / Open API specification
# The version of the OpenAPI document: 1.5.1-pre.0
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech
#

import httpclient
import json
import logging
import marshal
import options
import strformat
import strutils
import tables
import typetraits
import uri

import ../models/model_computer_set
import ../models/model_free_style_build
import ../models/model_free_style_project
import ../models/model_hudson
import ../models/model_list_view
import ../models/model_queue

const basepath = "http://localhost"

template constructResult[T](response: Response): untyped =
  if response.code in {Http200, Http201, Http202, Http204, Http206}:
    try:
      when name(stripGenericParams(T.typedesc).typedesc) == name(Table):
        (some(json.to(parseJson(response.body), T.typedesc)), response)
      else:
        (some(marshal.to[T](response.body)), response)
    except JsonParsingError:
      # The server returned a malformed response though the response code is 2XX
      # TODO: need better error handling
      error("JsonParsingError")
      (none(T.typedesc), response)
  else:
    (none(T.typedesc), response)


proc getComputer*(httpClient: HttpClient, depth: int): (Option[ComputerSet], Response) =
  ## 
  let query_for_api_call = encodeQuery([
    ("depth", $depth), # Recursion depth in response model
  ])

  let response = httpClient.get(basepath & "/computer/api/json" & "?" & query_for_api_call)
  constructResult[ComputerSet](response)


proc getJenkins*(httpClient: HttpClient): (Option[Hudson], Response) =
  ## 

  let response = httpClient.get(basepath & "/api/json")
  constructResult[Hudson](response)


proc getJob*(httpClient: HttpClient, name: string): (Option[FreeStyleProject], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/job/{name}/api/json")
  constructResult[FreeStyleProject](response)


proc getJobConfig*(httpClient: HttpClient, name: string): (Option[string], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/job/{name}/config.xml")
  constructResult[string](response)


proc getJobLastBuild*(httpClient: HttpClient, name: string): (Option[FreeStyleBuild], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/job/{name}/lastBuild/api/json")
  constructResult[FreeStyleBuild](response)


proc getJobProgressiveText*(httpClient: HttpClient, name: string, number: string, start: string): Response =
  ## 
  let query_for_api_call = encodeQuery([
    ("start", $start), # Starting point of progressive text output
  ])
  httpClient.get(basepath & fmt"/job/{name}/{number}/logText/progressiveText" & "?" & query_for_api_call)


proc getQueue*(httpClient: HttpClient): (Option[Queue], Response) =
  ## 

  let response = httpClient.get(basepath & "/queue/api/json")
  constructResult[Queue](response)


proc getQueueItem*(httpClient: HttpClient, number: string): (Option[Queue], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/queue/item/{number}/api/json")
  constructResult[Queue](response)


proc getView*(httpClient: HttpClient, name: string): (Option[ListView], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/view/{name}/api/json")
  constructResult[ListView](response)


proc getViewConfig*(httpClient: HttpClient, name: string): (Option[string], Response) =
  ## 

  let response = httpClient.get(basepath & fmt"/view/{name}/config.xml")
  constructResult[string](response)


proc headJenkins*(httpClient: HttpClient): Response =
  ## 
  httpClient.head(basepath & "/api/json")


proc postCreateItem*(httpClient: HttpClient, name: string, `from`: string, mode: string, jenkinsCrumb: string, contentType: string, body: string): Response =
  ## 
  httpClient.headers["Content-Type"] = "application/json"
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.headers["Content-Type"] = contentType
  let query_for_api_call = encodeQuery([
    ("name", $name), # Name of the new job
    ("from", $`from`), # Existing job to copy from
    ("mode", $mode), # Set to 'copy' for copying an existing job
  ])
  httpClient.post(basepath & "/createItem" & "?" & query_for_api_call, $(%body))


proc postCreateView*(httpClient: HttpClient, name: string, jenkinsCrumb: string, contentType: string, body: string): Response =
  ## 
  httpClient.headers["Content-Type"] = "application/json"
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.headers["Content-Type"] = contentType
  let query_for_api_call = encodeQuery([
    ("name", $name), # Name of the new view
  ])
  httpClient.post(basepath & "/createView" & "?" & query_for_api_call, $(%body))


proc postJobBuild*(httpClient: HttpClient, name: string, json: string, token: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  let query_for_api_call = encodeQuery([
    ("json", $json), # 
    ("token", $token), # 
  ])
  httpClient.post(basepath & fmt"/job/{name}/build" & "?" & query_for_api_call)


proc postJobConfig*(httpClient: HttpClient, name: string, body: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Content-Type"] = "application/json"
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/job/{name}/config.xml", $(%body))


proc postJobDelete*(httpClient: HttpClient, name: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/job/{name}/doDelete")


proc postJobDisable*(httpClient: HttpClient, name: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/job/{name}/disable")


proc postJobEnable*(httpClient: HttpClient, name: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/job/{name}/enable")


proc postJobLastBuildStop*(httpClient: HttpClient, name: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/job/{name}/lastBuild/stop")


proc postViewConfig*(httpClient: HttpClient, name: string, body: string, jenkinsCrumb: string): Response =
  ## 
  httpClient.headers["Content-Type"] = "application/json"
  httpClient.headers["Jenkins-Crumb"] = jenkinsCrumb
  httpClient.post(basepath & fmt"/view/{name}/config.xml", $(%body))

