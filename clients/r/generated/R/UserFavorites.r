# Swaggy Jenkins
#
# Jenkins API clients generated from Swagger / Open API specification
#
# OpenAPI spec version: 1.1.1
# Contact: blah@cliffano.com
# Generated by: https://openapi-generator.tech


#' UserFavorites Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserFavorites <- R6::R6Class(
  'UserFavorites',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      UserFavoritesObject <- list()

      UserFavoritesObject
    },
    fromJSON = function(UserFavoritesJson) {
      UserFavoritesObject <- jsonlite::fromJSON(UserFavoritesJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(UserFavoritesJson) {
      UserFavoritesObject <- jsonlite::fromJSON(UserFavoritesJson)
    }
  )
)
