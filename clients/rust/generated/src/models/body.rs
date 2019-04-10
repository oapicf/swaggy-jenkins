/* 
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct Body {
  #[serde(rename = "favorite")]
  favorite: bool
}

impl Body {
  pub fn new(favorite: bool) -> Body {
    Body {
      favorite: favorite
    }
  }

  pub fn set_favorite(&mut self, favorite: bool) {
    self.favorite = favorite;
  }

  pub fn with_favorite(mut self, favorite: bool) -> Body {
    self.favorite = favorite;
    self
  }

  pub fn favorite(&self) -> &bool {
    &self.favorite
  }


}



