#
# Swaggy Jenkins
# 
# Jenkins API clients generated from Swagger / Open API specification
# The version of the OpenAPI document: 1.5.1-pre.0
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech
#

import json
import tables

import model_github_repositories
import model_github_respository_containerlinks

type GithubRespositoryContainer* = object
  ## 
  class*: string
  links*: GithubRespositoryContainerlinks
  repositories*: GithubRepositories
